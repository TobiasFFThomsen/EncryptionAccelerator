import chisel3._

class Round extends Module{
  val io              = IO( new Bundle {
    val round_in      = Input(Vec(5, Vec(5,UInt(64.W))))
    val round_out     = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_iota_round  = Input(UInt(64.W))
    val R_theta_out   = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_rhoPi_out   = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_chi_out     = Output(Vec(5, Vec(5,UInt(64.W))))
    val R_iota_out    = Output(UInt(64.W))
    val R_theta_d_out = Output(Vec(5,UInt(64.W)))
    val R_theta_c_out = Output(Vec(5,UInt(64.W)))
    val R_iota_xor_val_out = Output(UInt(64.W))
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

  /*
  io.round_out(1)(0) := chi.io.chi_out(1)(0)
  io.round_out(2)(0) := chi.io.chi_out(2)(0)
  io.round_out(3)(0) := chi.io.chi_out(3)(0)
  io.round_out(4)(0) := chi.io.chi_out(4)(0)
  io.round_out(0)(1) := chi.io.chi_out(0)(1)
  io.round_out(1)(1) := chi.io.chi_out(1)(1)
  io.round_out(2)(1) := chi.io.chi_out(2)(1)
  io.round_out(3)(1) := chi.io.chi_out(3)(1)
  io.round_out(4)(1) := chi.io.chi_out(4)(1)
  io.round_out(0)(2) := chi.io.chi_out(0)(2)
  io.round_out(1)(2) := chi.io.chi_out(1)(2)
  io.round_out(2)(2) := chi.io.chi_out(2)(2)
  io.round_out(3)(2) := chi.io.chi_out(3)(2)
  io.round_out(4)(2) := chi.io.chi_out(4)(2)
  io.round_out(0)(3) := chi.io.chi_out(0)(3)
  io.round_out(1)(3) := chi.io.chi_out(1)(3)
  io.round_out(2)(3) := chi.io.chi_out(2)(3)
  io.round_out(3)(3) := chi.io.chi_out(3)(3)
  io.round_out(4)(3) := chi.io.chi_out(4)(3)
  io.round_out(0)(4) := chi.io.chi_out(0)(4)
  io.round_out(1)(4) := chi.io.chi_out(1)(4)
  io.round_out(2)(4) := chi.io.chi_out(2)(4)
  io.round_out(3)(4) := chi.io.chi_out(3)(4)
  io.round_out(4)(4) := chi.io.chi_out(4)(4)
   */

}
