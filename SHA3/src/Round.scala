import chisel3._

class Round extends Module{
  val io              = IO( new Bundle {
    val round_in            = Input(Vec(5, Vec(5,UInt(64.W))))
    val round_out           = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_iota_round        = Input(UInt(64.W))

    /* THE SIGNALS BELOW ARE USED FOR (PEEK POKE) TESTING */
    val R_theta_out         = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_rhoPi_out         = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_chi_out           = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_iota_out          = Output(UInt(64.W))
    val R_theta_d_out       = Output(Vec(5,UInt(64.W)))
    val R_theta_c_out       = Output(Vec(5,UInt(64.W)))
    val R_iota_xor_val_out  = Output(UInt(64.W))
  })

  val theta   = Module(new Theta())
  val rhoPi   = Module(new RhoPi())
  val chi     = Module(new Chi())
  val iota    = Module(new Iota())

  theta.io.theta_in       := io.round_in
  rhoPi.io.rhoPi_in       := theta.io.theta_out
  chi.io.chi_in           := rhoPi.io.rhoPi_out
  iota.io.iota_in         := chi.io.chi_out(0)(0)


  iota.io.iota_round      := io.R_iota_round
  io.round_out(0)(0)      := iota.io.iota_out

  io.R_theta_out          := theta.io.theta_out
  io.R_rhoPi_out          := rhoPi.io.rhoPi_out
  io.R_chi_out            := chi.io.chi_out
  io.R_iota_out           := iota.io.iota_out
  io.R_iota_xor_val_out   := iota.io.iota_xor_val
  io.R_theta_c_out        := theta.io.c_out
  io.R_theta_d_out        := theta.io.d_out


  for(x <- 0 to 4) {
    for(y <- 0 to 4) {
      if(!(x == 0 && y == 0))
        io.round_out(x)(y) := chi.io.chi_out(x)(y)
    }
  }
}
