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
     val w_in   = Input(UInt(64.W))
     val w_out  = Output(UInt(64.W))
  })

  val round         = Module(new Round())
  val stateRegister = Module(new StateRegister())
  val buffer        = Module(new Buffer())

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

  buffer.io.w_in  := io.w_in
  buffer.io.w_out := io.w_out

}
