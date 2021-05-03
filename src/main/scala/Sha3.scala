import chisel3._


class Sha3 extends Module{
  val io  = IO( new Bundle {
    /*
    val r_0_0 = Input(UInt(64.W)) //r_1
    val r_1_0 = Input(UInt(64.W)) //r_2
    val r_2_0 = Input(UInt(64.W)) //r_3
    val r_3_0 = Input(UInt(64.W)) //r_4
    val r_4_0 = Input(UInt(64.W)) //r_5

    val r_0_1 = Input(UInt(64.W)) //r_6
    val r_1_1 = Input(UInt(64.W)) //r_7
    val r_2_1 = Input(UInt(64.W)) //r_8
    val r_3_1 = Input(UInt(64.W)) //r_9

    val d_0_0 = Output(UInt(64.W)) //d_1
    val d_1_0 = Output(UInt(64.W)) //d_2
    val d_2_0 = Output(UInt(64.W)) //d_3
    val d_3_0 = Output(UInt(64.W)) //d_4
    val d_4_0 = Output(UInt(64.W)) //d_5

    val d_0_1 = Output(UInt(64.W)) //d_6
    val d_1_1 = Output(UInt(64.W)) //d_7
    val d_2_1 = Output(UInt(64.W)) //d_8
    val d_3_1 = Output(UInt(64.W)) //d_9
     */
    val w_in_from_outside      = Input(UInt(64.W))
    val data_read              = Input(Bool())
    val w_in_to_buffer         = Output(UInt(64.W))

    val testing_round_counter  = Output(UInt(64.W))
    val testing_buffer_counter = Output(UInt(64.W))
    val testing_buffer_ready   = Output(Bool())
    val testing_hash_ready     = Output(Bool())

    val block_length_in                  = Input(UInt(64.W))
    val block_length_valid_from_env      = Input(Bool())
    val block_length_valid_to_fsm        = Output(Bool())
    val block_length_out       = Output(UInt(64.W))

    val data_valid_from_env    = Input(Bool())
    val data_valid_to_buffer   = Output(Bool())
  })

  //val round         = Module(new Round())
  val buffer          = Module(new Buffer())
  val fsm             = Module(new FSM())

  io.data_valid_to_buffer  := io.data_valid_from_env

  val block_length_reg  = RegInit(0.U(64.W))

  io.w_in_to_buffer        := io.w_in_from_outside
  buffer.io.w_in           := io.w_in_to_buffer
  fsm.io.buffer_ready      := buffer.io.bufferReady
  fsm.io.block_length_valid  := io.block_length_valid_to_fsm

  buffer.io.roundReady     := fsm.io.select_for_xor
  buffer.io.dataRead       := io.data_read
  buffer.io.hashReady      := fsm.io.hash_ready
  buffer.io.dataValid      := io.data_valid_to_buffer
  io.testing_round_counter := fsm.io.counter_for_test
  io.testing_buffer_ready  := buffer.io.bufferReady
  io.testing_hash_ready    := fsm.io.hash_ready

  //io.block_length_out := block_length_reg

  fsm.io.block_length := block_length_reg
  io.block_length_out := block_length_reg
  when(io.block_length_valid_from_env){
    block_length_reg := io.block_length_in
    io.block_length_valid_to_fsm := true.B
  }.otherwise{
    block_length_reg := block_length_reg
    io.block_length_valid_to_fsm := false.B
  }

  //block_length_reg      := block_length_reg
  fsm.io.block_length   := block_length_reg

  buffer.io.d_0 := 0.U
  buffer.io.d_1 := 0.U
  buffer.io.d_2 := 0.U
  buffer.io.d_3 := 0.U
  buffer.io.d_4 := 0.U
  buffer.io.d_5 := 0.U
  buffer.io.d_6 := 0.U
  buffer.io.d_7 := 0.U
  buffer.io.d_8 := 0.U


  //val roundCountWire  = Wire(UInt(64.W))


  /*
  roundCountWire := fsm.io.counter_for_test
  fsm.io.buffer_ready := buffer.io.bufferReady


  buffer.io.roundReady        := fsm.io.select_for_xor
  w_in_wire                   := buffer.io.w_in
  */


  //val stateRegister = Module(new StateRegister())
  //val buffer        = Module(new Buffer())

  /*
  // r portion of the round input (576bit/64bit = 9):
  round.io.round_in_0_0 := stateRegister.io.state_out_0_0 ^ buffer.io.r_0
  round.io.round_in_1_0 := stateRegister.io.state_out_1_0 ^ buffer.io.r_1
  round.io.round_in_2_0 := stateRegister.io.state_out_2_0 ^ buffer.io.r_2
  round.io.round_in_3_0 := stateRegister.io.state_out_3_0 ^ buffer.io.r_3
  round.io.round_in_4_0 := stateRegister.io.state_out_4_0 ^ buffer.io.r_4
  round.io.round_in_0_1 := stateRegister.io.state_out_0_1 ^ buffer.io.r_5
  round.io.round_in_1_1 := stateRegister.io.state_out_1_1 ^ buffer.io.r_6
  round.io.round_in_2_1 := stateRegister.io.state_out_2_1 ^ buffer.io.r_7
  round.io.round_in_3_1 := stateRegister.io.state_out_3_1 ^ buffer.io.r_8
  */
  // c portion of the round input:
  /*
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
  stateRegister.io.state_in_4_0 :=  round.io.round_out_4_0
  stateRegister.io.state_in_4_0 :=  round.io.round_out_0_1
  stateRegister.io.state_in_1_1 :=  round.io.round_out_1_1
  stateRegister.io.state_in_2_1 :=  round.io.round_out_2_1
  stateRegister.io.state_in_3_1 :=  round.io.round_out_3_1
  stateRegister.io.state_in_4_1 :=  round.io.round_out_4_1
  stateRegister.io.state_in_0_2 :=  round.io.round_out_0_2
  stateRegister.io.state_in_1_2 :=  round.io.round_out_1_2
  stateRegister.io.state_in_2_2 :=  round.io.round_out_2_2
  stateRegister.io.state_in_3_2 :=  round.io.round_out_3_2
  stateRegister.io.state_in_4_2 :=  round.io.round_out_4_2
  stateRegister.io.state_in_0_3 :=  round.io.round_out_0_3
  stateRegister.io.state_in_1_3 :=  round.io.round_out_1_3
  stateRegister.io.state_in_2_3 :=  round.io.round_out_2_3
  stateRegister.io.state_in_3_3 :=  round.io.round_out_3_3
  stateRegister.io.state_in_4_3 :=  round.io.round_out_4_3
  stateRegister.io.state_in_0_4 :=  round.io.round_out_0_4
  stateRegister.io.state_in_1_4 :=  round.io.round_out_1_4
  stateRegister.io.state_in_2_4 :=  round.io.round_out_2_4
  stateRegister.io.state_in_3_4 :=  round.io.round_out_3_4
  stateRegister.io.state_in_4_4 :=  round.io.round_out_4_4
  */

  /*
  buffer.io.w_in  := io.w_in
  buffer.io.w_out := io.w_out

   */

}
