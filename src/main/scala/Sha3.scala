import chisel3._


class Sha3 extends Module{
  val io  = IO( new Bundle {
    val w_in_from_outside      = Input(UInt(64.W))
    val data_read              = Input(Bool())
    val w_in_to_buffer         = Output(UInt(64.W))

    val block_length_in               = Input(UInt(64.W))
    val block_length_valid_from_env   = Input(Bool())
    val block_length_valid_to_fsm     = Output(Bool())
    val block_length_out              = Output(UInt(64.W))
    val data_valid_from_env           = Input(Bool())
    val data_valid_to_buffer          = Output(Bool())

    val testing_round_counter         = Output(UInt(64.W))
    val testing_global_round_counter  = Output(UInt(64.W))
    val testing_buffer_counter        = Output(UInt(64.W))
    val testing_buffer_ready          = Output(Bool())
    val testing_hash_ready            = Output(Bool())
  })

  val buffer          = Module(new Buffer())
  val fsm             = Module(new FSM())
  val round           = Module(new Round())
  val stateRegister   = Module(new StateRegister())

  io.data_valid_to_buffer  := io.data_valid_from_env

  val block_length_reg  = RegInit(0.U(64.W))

  io.w_in_to_buffer           := io.w_in_from_outside
  buffer.io.w_in              := io.w_in_to_buffer
  fsm.io.buffer_ready         := buffer.io.bufferReady
  fsm.io.block_length_valid   := io.block_length_valid_to_fsm

  buffer.io.roundReady            := fsm.io.select_for_xor
  buffer.io.dataRead              := io.data_read
  buffer.io.hashReady             := fsm.io.hash_ready
  buffer.io.dataValid             := io.data_valid_to_buffer
  io.testing_round_counter        := fsm.io.counter_for_test
  io.testing_global_round_counter := fsm.io.global_counter_for_test
  io.testing_buffer_counter       := buffer.io.testing_buffer_counter
  io.testing_buffer_ready         := buffer.io.bufferReady
  io.testing_hash_ready           := fsm.io.hash_ready

  fsm.io.block_length := block_length_reg
  io.block_length_out := block_length_reg

  when(io.block_length_valid_from_env){
    block_length_reg := io.block_length_in
    io.block_length_valid_to_fsm := true.B
  }.otherwise{
    block_length_reg := block_length_reg
    io.block_length_valid_to_fsm := false.B
  }

  fsm.io.block_length   := block_length_reg

  when(fsm.io.hash_ready)
  {
    buffer.io.d_0 := stateRegister.io.state_out_0_0
    buffer.io.d_1 := stateRegister.io.state_out_0_0
    buffer.io.d_2 := stateRegister.io.state_out_0_0
    buffer.io.d_3 := stateRegister.io.state_out_0_0
    buffer.io.d_4 := stateRegister.io.state_out_0_0
    buffer.io.d_5 := stateRegister.io.state_out_0_0
    buffer.io.d_8 := stateRegister.io.state_out_0_0
    buffer.io.d_6 := stateRegister.io.state_out_0_0
    buffer.io.d_7 := stateRegister.io.state_out_0_0
  }.otherwise{
    buffer.io.d_0 := 0.U
    buffer.io.d_1 := 0.U
    buffer.io.d_2 := 0.U
    buffer.io.d_3 := 0.U
    buffer.io.d_4 := 0.U
    buffer.io.d_5 := 0.U
    buffer.io.d_6 := 0.U
    buffer.io.d_7 := 0.U
    buffer.io.d_8 := 0.U
  }


  //r portion of the round input (576bit/64bit = 9):
  when(buffer.io.bufferReady && fsm.io.select_for_xor){
    round.io.round_in_0_0 := stateRegister.io.state_out_0_0 ^ buffer.io.r_0
    round.io.round_in_1_0 := stateRegister.io.state_out_1_0 ^ buffer.io.r_1
    round.io.round_in_2_0 := stateRegister.io.state_out_2_0 ^ buffer.io.r_2
    round.io.round_in_3_0 := stateRegister.io.state_out_3_0 ^ buffer.io.r_3
    round.io.round_in_4_0 := stateRegister.io.state_out_4_0 ^ buffer.io.r_4
    round.io.round_in_0_1 := stateRegister.io.state_out_0_1 ^ buffer.io.r_5
    round.io.round_in_1_1 := stateRegister.io.state_out_1_1 ^ buffer.io.r_6
    round.io.round_in_2_1 := stateRegister.io.state_out_2_1 ^ buffer.io.r_7
    round.io.round_in_3_1 := stateRegister.io.state_out_3_1 ^ buffer.io.r_8
  }.otherwise{
    round.io.round_in_0_0 := stateRegister.io.state_out_0_0
    round.io.round_in_1_0 := stateRegister.io.state_out_1_0
    round.io.round_in_2_0 := stateRegister.io.state_out_2_0
    round.io.round_in_3_0 := stateRegister.io.state_out_3_0
    round.io.round_in_4_0 := stateRegister.io.state_out_4_0
    round.io.round_in_0_1 := stateRegister.io.state_out_0_1
    round.io.round_in_1_1 := stateRegister.io.state_out_1_1
    round.io.round_in_2_1 := stateRegister.io.state_out_2_1
    round.io.round_in_3_1 := stateRegister.io.state_out_3_1
  }


  // c portion of the round input:
  round.io.round_in_4_1 := stateRegister.io.state_out_4_1
  round.io.round_in_0_2 := stateRegister.io.state_out_0_2
  round.io.round_in_1_2 := stateRegister.io.state_out_1_2
  round.io.round_in_2_2 := stateRegister.io.state_out_2_2
  round.io.round_in_3_2 := stateRegister.io.state_out_3_2
  round.io.round_in_4_2 := stateRegister.io.state_out_4_2
  round.io.round_in_0_3 := stateRegister.io.state_out_0_3
  round.io.round_in_1_3 := stateRegister.io.state_out_1_3
  round.io.round_in_2_3 := stateRegister.io.state_out_2_3
  round.io.round_in_3_3 := stateRegister.io.state_out_3_3
  round.io.round_in_4_3 := stateRegister.io.state_out_4_3
  round.io.round_in_0_4 := stateRegister.io.state_out_0_4
  round.io.round_in_1_4 := stateRegister.io.state_out_1_4
  round.io.round_in_2_4 := stateRegister.io.state_out_2_4
  round.io.round_in_3_4 := stateRegister.io.state_out_3_4
  round.io.round_in_4_4 := stateRegister.io.state_out_4_4

  stateRegister.io.state_in_0_0 :=  round.io.round_out_0_0
  stateRegister.io.state_in_1_0 :=  round.io.round_out_1_0
  stateRegister.io.state_in_2_0 :=  round.io.round_out_2_0
  stateRegister.io.state_in_3_0 :=  round.io.round_out_3_0
  stateRegister.io.state_in_4_0 :=  round.io.round_out_4_0
  stateRegister.io.state_in_0_1 :=  round.io.round_out_0_1
  stateRegister.io.state_in_1_1 :=  round.io.round_out_1_1
  stateRegister.io.state_in_2_1 :=  round.io.round_out_2_1
  stateRegister.io.state_in_3_1 :=  round.io.round_out_3_1
  stateRegister.io.state_in_4_1 :=  round.io.round_out_4_2
  stateRegister.io.state_in_0_2 :=  round.io.round_out_0_2
  stateRegister.io.state_in_1_2 :=  round.io.round_out_1_2
  stateRegister.io.state_in_2_2 :=  round.io.round_out_2_2
  stateRegister.io.state_in_3_2 :=  round.io.round_out_3_2
  stateRegister.io.state_in_4_2 :=  round.io.round_out_4_3
  stateRegister.io.state_in_0_3 :=  round.io.round_out_0_3
  stateRegister.io.state_in_1_3 :=  round.io.round_out_1_3
  stateRegister.io.state_in_2_3 :=  round.io.round_out_2_3
  stateRegister.io.state_in_3_3 :=  round.io.round_out_3_3
  stateRegister.io.state_in_4_3 :=  round.io.round_out_4_4
  stateRegister.io.state_in_0_4 :=  round.io.round_out_0_4
  stateRegister.io.state_in_1_4 :=  round.io.round_out_1_4
  stateRegister.io.state_in_2_4 :=  round.io.round_out_2_4
  stateRegister.io.state_in_3_4 :=  round.io.round_out_3_4
  stateRegister.io.state_in_4_4 :=  round.io.round_out_4_4

}
