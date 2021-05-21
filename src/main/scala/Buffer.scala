import chisel3._
class Buffer extends Module {
  val io            = IO( new Bundle {

        val dataIn  = Input(UInt(64.W))
        val dataOut = Output(Vec(9,UInt(64.W)))
        val enable  = Input(Bool())
  })
  val dataReg = RegInit(VecInit(Seq.fill(9)(0.U(64.W))))
  when(io.enable){
    dataReg(0) := io.dataIn
    dataReg(1) := dataReg(0)
    dataReg(2) := dataReg(1)
    dataReg(3) := dataReg(2)
    dataReg(4) := dataReg(3)
    dataReg(5) := dataReg(4)
    dataReg(6) := dataReg(5)
    dataReg(7) := dataReg(6)
    dataReg(8) := dataReg(7)
  }.otherwise{
    dataReg(0) := dataReg(0)
    dataReg(1) := dataReg(1)
    dataReg(2) := dataReg(2)
    dataReg(3) := dataReg(3)
    dataReg(4) := dataReg(4)
    dataReg(5) := dataReg(5)
    dataReg(6) := dataReg(6)
    dataReg(7) := dataReg(7)
    dataReg(8) := dataReg(8)
  }
  io.dataOut := dataReg
}

