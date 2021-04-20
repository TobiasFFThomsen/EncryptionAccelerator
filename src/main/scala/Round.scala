import chisel3._

class Round extends Module{
  val io          = IO( new Bundle {
    val round_in  = Input(Vec(5, Vec(5,UInt(64.W))))
    val round_out = Output(Vec(5, Vec(5,UInt(64.W))))
  })

  val theta = Module(new Theta())
  val rhoPi = Module(new RhoPi())
  val chi = Module(new Chi())
  val Iota = Module(new Iota())

  theta.io.theta_in := io.round_in
  rhoPi.io.rhoPi_in := theta.io.theta_out
  chi.io.chi_in     := rhoPi.io.rhoPi_out
  Iota.io.iota_in   := chi.io.chi_out
  io.round_out      := Iota.io.iota_out

}
