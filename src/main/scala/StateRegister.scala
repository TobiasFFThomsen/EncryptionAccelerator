import chisel3._


class StateRegister extends Module {
  val io  = IO( new Bundle {
    val registerIn    = Input(Vec(5,Vec(5, UInt(64.W))))
    val registerOut   = Output(Vec(5,Vec(5, UInt(64.W))))
  })

  val stateReg = Reg(Vec(5, Vec(5, UInt(64.W))))
  stateReg := io.registerIn
  io.registerOut := stateReg

}
