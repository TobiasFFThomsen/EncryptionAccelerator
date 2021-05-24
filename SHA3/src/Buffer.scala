import chisel3._
import chisel3.util._

class Buffer extends Module {
  val io            = IO( new Bundle {

        val dataIn      = Input(UInt(32.W))
        val dataOut     = Output(Vec(9,UInt(64.W)))

        //FOR TESTING:
        val data_32_out = Output(Vec(18,UInt(32.W)))
        val enable      = Input(Bool())
  })
  val dataReg = RegInit(VecInit(Seq.fill(18)(0.U(32.W))))

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
    dataReg(9) := dataReg(8)
    dataReg(10) := dataReg(9)
    dataReg(11) := dataReg(10)
    dataReg(12) := dataReg(11)
    dataReg(13) := dataReg(12)
    dataReg(14) := dataReg(13)
    dataReg(15) := dataReg(14)
    dataReg(16) := dataReg(15)
    dataReg(17) := dataReg(16)
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
    dataReg(9) := dataReg(9)
    dataReg(10) := dataReg(10)
    dataReg(11) := dataReg(11)
    dataReg(12) := dataReg(12)
    dataReg(13) := dataReg(13)
    dataReg(14) := dataReg(14)
    dataReg(15) := dataReg(15)
    dataReg(16) := dataReg(16)
    dataReg(17) := dataReg(17)
  }

  io.dataOut(0) := Cat(Seq(dataReg(0),dataReg(1)))
  io.dataOut(1) := Cat(Seq(dataReg(2),dataReg(3)))
  io.dataOut(2) := Cat(Seq(dataReg(4),dataReg(5)))
  io.dataOut(3) := Cat(Seq(dataReg(6),dataReg(7)))
  io.dataOut(4) := Cat(Seq(dataReg(8),dataReg(9)))
  io.dataOut(5) := Cat(Seq(dataReg(10),dataReg(11)))
  io.dataOut(6) := Cat(Seq(dataReg(12),dataReg(13)))
  io.dataOut(7) := Cat(Seq(dataReg(14),dataReg(15)))
  io.dataOut(8) := Cat(Seq(dataReg(16),dataReg(17)))

  io.data_32_out := dataReg

}

