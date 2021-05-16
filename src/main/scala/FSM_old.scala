import chisel3._
import chisel3.util._

class FSM_old extends Module{
  val io  = IO( new Bundle {
    //val start_calculation   = Input(Bool())
    val hash_ready          = Output(Bool())
    val buffer_ready        = Input(Bool())
    val block_length        = Input(UInt(64.W))
    val counter    = Output(UInt(64.W))
    val global_counter_for_test = Output(UInt(64.W))
    val select_for_xor      = Output(Bool())
    val block_length_valid  = Input(Bool())
    val enable_state_reg    = Output(Bool())
    //val request_next_block   = Output(Bool())
  })

  val idle :: calc_round :: done :: Nil = Enum(3)
  val stateReg             = RegInit(idle)
  val localCountReg        = RegInit(0.U(6.W))
  val globalCountReg       = RegInit(0.U(64.W))
  val xor_sel              = RegInit(false.B)

  when(stateReg === done) {
    io.enable_state_reg := false.B
    io.hash_ready := true.B
  }.otherwise{
    io.enable_state_reg := false.B
    io.hash_ready := false.B
  }

  when(stateReg === idle){
    io.enable_state_reg := false.B
    when(io.buffer_ready){
      //io.select_for_xor := true.B
      xor_sel := true.B
    }.otherwise
    {
      xor_sel := false.B
      //io.select_for_xor := false.B
    }
  }.otherwise
  {
    io.enable_state_reg := true.B
      //io.select_for_xor := false.B
    xor_sel := false.B
  }
/*
  when(stateReg === done){
    io.request_next_block := true.B
  }.otherwise{
    io.request_next_block := false.B
  }
*/
  io.select_for_xor := xor_sel
  io.counter := localCountReg
  io.global_counter_for_test := globalCountReg
  switch (stateReg){
    is (idle){
      io.enable_state_reg := false.B
      when(io.block_length_valid){
        stateReg := calc_round
        localCountReg := 0.U
        when(io.buffer_ready){
          when(globalCountReg < io.block_length){
            stateReg := calc_round
            globalCountReg := globalCountReg+1.U
          }.otherwise{
            stateReg := done
            globalCountReg := 0.U
          }
        }.otherwise{
          globalCountReg := globalCountReg
          stateReg := idle
        }
      }.otherwise {
        stateReg := idle
        localCountReg := 0.U
        globalCountReg := 0.U
      }
    }
    is (calc_round) {
      globalCountReg := globalCountReg
      when(localCountReg<23.U){
        io.enable_state_reg := true.B
        stateReg := calc_round
        localCountReg := localCountReg + 1.U
      }.otherwise{
        io.enable_state_reg := false.B
        localCountReg := 0.U
        stateReg := idle
      }
    }
    is (done){
      io.enable_state_reg := false.B
      globalCountReg := 0.U
      stateReg := idle
      localCountReg := 0.U
    }
  }
}
