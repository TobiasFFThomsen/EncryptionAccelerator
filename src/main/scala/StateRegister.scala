import chisel3._


class StateRegister extends Module {
  val io  = IO( new Bundle {
    val registerIn    = Input(Vec(5,Vec(5, UInt(64.W))))
    val registerOut   = Output(Vec(5,Vec(5, UInt(64.W))))
  })

  val stateReg = Reg(Vec(5, Vec(5, UInt(64.W))))
  stateReg := io.registerIn

  for(x <- 0 to 4)
    for(y <- 0 to 4)
      io.registerOut(x)(y) := stateReg(x)(y)

}
