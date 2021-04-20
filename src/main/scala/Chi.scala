import chisel3._

class Chi extends Module {
  val io          = IO( new Bundle {
    val chi_in  = Input(Vec(5, Vec(5,UInt(64.W))))
    val chi_out = Output(Vec(5, Vec(5,UInt(64.W))))
  })
  /*Chi*/
  val chi_wire    = Wire(UInt(64.W))
  val chi_b_wire  = Wire(UInt(64.W))
  val chi_not_wire = Wire(UInt(64.W))
  for(x <- 0 to 4) {
    for(y <- 0 to 4) {
      chi_not_wire := ~io.chi_in(Math.floorMod(x+1,5))(y)
      chi_wire :=  chi_not_wire & io.chi_in(Math.floorMod(x+2,5))(y)
      chi_b_wire := io.chi_in(x)(y)
      io.chi_out(x)(y) := chi_b_wire ^ chi_wire
    }
  }
}
