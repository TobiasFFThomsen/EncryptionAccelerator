import chisel3._

class Buffer extends Module {
  val io  = IO( new Bundle {
    //val hash_ready        = Input(Bool())
    //val buffer_ready  = Output(Bool())
    val buffer_in     = Input(UInt(64.W))
    val buffer_out    = Output(UInt(64.W))
    val buffer_out_round_1 = Output(UInt(64.W))
    val buffer_out_round_2 = Output(UInt(64.W))
    val buffer_out_round_3 = Output(UInt(64.W))
    val buffer_out_round_4 = Output(UInt(64.W))
    val buffer_out_round_5 = Output(UInt(64.W))
    val buffer_out_round_6 = Output(UInt(64.W))
    val buffer_out_round_7 = Output(UInt(64.W))
    val buffer_out_round_8 = Output(UInt(64.W))
    val buffer_out_round_9 = Output(UInt(64.W))

  })


  var bufferReg_1 = Reg(UInt(64.W))
  var bufferReg_2 = Reg(UInt(64.W))
  var bufferReg_3 = Reg(UInt(64.W))
  var bufferReg_4 = Reg(UInt(64.W))
  var bufferReg_5 = Reg(UInt(64.W))
  var bufferReg_6 = Reg(UInt(64.W))
  var bufferReg_7 = Reg(UInt(64.W))
  var bufferReg_8 = Reg(UInt(64.W))
  var bufferReg_9 = Reg(UInt(64.W))

  io.buffer_ready := false.B
  when(io.enable) {
    io.buffer_ready := false.B
    bufferReg_1 := io.buffer_in
    bufferReg_2 := bufferReg_1
    bufferReg_3 := bufferReg_2
    bufferReg_4 := bufferReg_3
    bufferReg_5 := bufferReg_4
    bufferReg_6 := bufferReg_5
    bufferReg_7 := bufferReg_6
    bufferReg_8 := bufferReg_7
    bufferReg_9 := bufferReg_8
  }.elsewhen(!io.enable) {
    io.buffer_ready := true.B
  }
  io.buffer_out := bufferReg_9

  io.buffer_out_round_1 := bufferReg_1
  io.buffer_out_round_2 := bufferReg_2
  io.buffer_out_round_3 := bufferReg_3
  io.buffer_out_round_4 := bufferReg_4
  io.buffer_out_round_5 := bufferReg_5
  io.buffer_out_round_6 := bufferReg_6
  io.buffer_out_round_7 := bufferReg_7
  io.buffer_out_round_8 := bufferReg_8
  io.buffer_out_round_9 := bufferReg_9
}

object HelloMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Buffer())
}