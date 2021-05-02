import chisel3._
import chisel3.util._

class Buffer_FSM extends Module{
  val io  = IO( new Bundle {
    val start_calculation = Input(Bool())
    val hash_ready        = Output(Bool())
    val buffer_ready      = Output(Bool())
    val d_1               = Input(UInt(64.W))
    val d_2               = Input(UInt(64.W))
    val d_3               = Input(UInt(64.W))
    val d_4               = Input(UInt(64.W))
    val d_5               = Input(UInt(64.W))
    val d_6               = Input(UInt(64.W))
    val d_7               = Input(UInt(64.W))
    val d_8               = Input(UInt(64.W))
    val d_9               = Input(UInt(64.W))

    val d_1               = Input(UInt(64.W))
    val d_2               = Input(UInt(64.W))
    val d_3               = Input(UInt(64.W))
    val d_4               = Input(UInt(64.W))
    val d_5               = Input(UInt(64.W))
    val d_6               = Input(UInt(64.W))
    val d_7               = Input(UInt(64.W))
    val d_8               = Input(UInt(64.W))
    val d_9               = Input(UInt(64.W))

  })

  val idle :: read_buffer :: write_buffer :: Nil = Enum(3)
  val stateReg = RegInit(idle)
  val countReg = RegInit(0.U)

  switch (stateReg){
    is (idle) {
      when(io.start_calculation){
        stateReg := read_buffer
      }
      io.buffer_ready := false.B
      io.hash_ready   := false.B
    }
    is (write_buffer) {
      when(countReg>9.U){
        io.buffer_ready := true.B
        stateReg := read_buffer
        countReg := 0.U
      }.elsewhen(countReg<=9.U){
        countReg := countReg + 1.U
      }
    }
    // The absorb phase:
    is (read_buffer) {
      when(countReg>24.U){
        io.hash_ready := true.B
        stateReg := idle
        countReg := 0.U
      }.elsewhen(countReg<=24.U){
        countReg := countReg + 1.U
      }
    }
  }
}
