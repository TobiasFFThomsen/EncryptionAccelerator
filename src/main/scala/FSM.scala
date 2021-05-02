import chisel3._
import chisel3.util._

class FSM extends Module{
  val io  = IO( new Bundle {
    //val start_calculation   = Input(Bool())
    val hash_ready          = Output(Bool())
    val buffer_ready        = Input(Bool())
    val counter_for_test    = Output(UInt(64.W))
    val select_for_xor      = Output(Bool())
    val request_next_block   = Output(Bool())
  })

  val idle :: calc_round :: done :: Nil = Enum(3)
  val stateReg        = RegInit(idle)
  val countReg        = RegInit(0.U(6.W))

  when(stateReg === done) {
    io.hash_ready := true.B
  }.otherwise{
    io.hash_ready := false.B
  }

  when(stateReg === idle){
    when(io.buffer_ready){
      io.select_for_xor := true.B
    }.otherwise
    {
      io.select_for_xor := false.B
    }
  }.otherwise
  {
      io.select_for_xor := false.B
  }

  when(stateReg === done){
    io.request_next_block := true.B
  }.otherwise{
    io.request_next_block := false.B
  }

  io.counter_for_test := countReg
  switch (stateReg){
    is (idle){
      stateReg := calc_round
      countReg := 0.U
      when(io.buffer_ready){
        stateReg := calc_round
      }.otherwise{
        stateReg := idle
      }
    }
    is (calc_round) {
      when(countReg<23.U){
        stateReg := calc_round
        countReg := countReg + 1.U
      }.otherwise{
        countReg := 0.U
        stateReg := done
      }
    }
    is (done){
      stateReg := idle
      countReg := 0.U
    }
  }
}
