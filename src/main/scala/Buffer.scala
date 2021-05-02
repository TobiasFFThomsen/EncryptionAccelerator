import chisel3._
import chisel3.util._

class Buffer extends Module {
  val io  = IO( new Bundle {
    val r_0  = Output(UInt(64.W))
    val r_1  = Output(UInt(64.W))
    val r_2  = Output(UInt(64.W))
    val r_3  = Output(UInt(64.W))
    val r_4  = Output(UInt(64.W))
    val r_5  = Output(UInt(64.W))
    val r_6  = Output(UInt(64.W))
    val r_7  = Output(UInt(64.W))
    val r_8  = Output(UInt(64.W))

    val d_0  = Input(UInt(64.W))
    val d_1  = Input(UInt(64.W))
    val d_2  = Input(UInt(64.W))
    val d_3  = Input(UInt(64.W))
    val d_4  = Input(UInt(64.W))
    val d_5  = Input(UInt(64.W))
    val d_6  = Input(UInt(64.W))
    val d_7  = Input(UInt(64.W))
    val d_8  = Input(UInt(64.W))
    val d_9  = Input(UInt(64.W))

    val w_in  = Input(UInt(64.W))
    val w_out = Output(UInt(64.W))

    val bufferReady = Output(Bool())
    val hashReady   = Input(Bool())

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

  val hash_ready :: buffer_ready :: fill_buffer :: Nil = Enum(3)
  val stateReg = RegInit(fill_buffer)
  val countReg = RegInit(0.U)

  switch (stateReg){
    is (fill_buffer){
      when(countReg<=9.U){
        bufferReg_1 := io.w_in
        bufferReg_2 := bufferReg_1
        bufferReg_3 := bufferReg_2
        bufferReg_4 := bufferReg_3
        bufferReg_5 := bufferReg_4
        bufferReg_6 := bufferReg_5
        bufferReg_7 := bufferReg_6
        bufferReg_8 := bufferReg_7
        bufferReg_9 := bufferReg_8
        countReg := countReg + 1.U
      }.elsewhen(countReg>9.U){
        io.bufferReady := true.B
        stateReg := buffer_ready
      }
    }

    // The absorb phase:
    is (buffer_ready) {
      when(io.hashReady){
        stateReg := hash_ready
      }
    }

    // Squeeze phase:
    is (hash_ready) {
      bufferReg_1 := io.d_1
      bufferReg_3 := io.d_2
      bufferReg_2 := io.d_3
      bufferReg_4 := io.d_4
      bufferReg_5 := io.d_5
      bufferReg_6 := io.d_6
      bufferReg_7 := io.d_7
      bufferReg_8 := io.d_8
      bufferReg_9 := io.d_9
    }
  }
}