import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._


class final_sha_3_tester(dut: Sha3) extends PeekPokeTester(dut) {

  println("State before anything :")
  poke(dut.io.testing_enable_state_register,false.B)
  poke(dut.io.data_valid_from_env, false.B)
  poke(dut.io.testing_count_for_iota, 0.U)

  println("tick\n")
  step(1)
  var poke_val_0_0 = peek(dut.io.testing_state_reg_0_0).toString(16)
  var poke_val_0_1 = peek(dut.io.testing_state_reg_0_1).toString(16)
  var poke_val_0_2 = peek(dut.io.testing_state_reg_0_2).toString(16)
  var poke_val_0_3 = peek(dut.io.testing_state_reg_0_3).toString(16)
  var poke_val_0_4 = peek(dut.io.testing_state_reg_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  var poke_val_1_0 = peek(dut.io.testing_state_reg_1_0).toString(16)
  var poke_val_1_1 = peek(dut.io.testing_state_reg_1_1).toString(16)
  var poke_val_1_2 = peek(dut.io.testing_state_reg_1_2).toString(16)
  var poke_val_1_3 = peek(dut.io.testing_state_reg_1_3).toString(16)
  var poke_val_1_4 = peek(dut.io.testing_state_reg_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  var poke_val_2_0 = peek(dut.io.testing_state_reg_2_0).toString(16)
  var poke_val_2_1 = peek(dut.io.testing_state_reg_2_1).toString(16)
  var poke_val_2_2 = peek(dut.io.testing_state_reg_2_2).toString(16)
  var poke_val_2_3 = peek(dut.io.testing_state_reg_2_3).toString(16)
  var poke_val_2_4 = peek(dut.io.testing_state_reg_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  var poke_val_3_0 = peek(dut.io.testing_state_reg_3_0).toString(16)
  var poke_val_3_1 = peek(dut.io.testing_state_reg_3_1).toString(16)
  var poke_val_3_2 = peek(dut.io.testing_state_reg_3_2).toString(16)
  var poke_val_3_3 = peek(dut.io.testing_state_reg_3_3).toString(16)
  var poke_val_3_4 = peek(dut.io.testing_state_reg_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  var poke_val_4_0 = peek(dut.io.testing_state_reg_4_0).toString(16)
  var poke_val_4_1 = peek(dut.io.testing_state_reg_4_1).toString(16)
  var poke_val_4_2 = peek(dut.io.testing_state_reg_4_2).toString(16)
  var poke_val_4_3 = peek(dut.io.testing_state_reg_4_3).toString(16)
  var poke_val_4_4 = peek(dut.io.testing_state_reg_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)

  println("\n")


  poke(dut.io.block_length_valid_from_env, false.B)
  poke(dut.io.data_valid_from_env, false.B)


  println("tick\n")
  step(1)
  poke(dut.io.block_length_valid_from_env, true.B)
  poke(dut.io.block_length_in,1.U)

  println("tick\n")
  step(1)
  println("block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm))
  println("block length to fsm: "+  peek(dut.io.block_length_out))
  println("\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())

  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())

  poke(dut.io.w_in_from_outside,0x000000000000000dL)
  poke(dut.io.data_valid_from_env, true.B)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("buffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())

  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x0000000000000000L)
  println("tick\n")
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  poke(dut.io.w_in_from_outside,0x8000000000000000L)
  step(1)

  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
    "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
    "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
    "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
    "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
    "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
    "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
    "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
    "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())


  println("tick\n")
  step(1)

  println("\n")
  println("Content of buffer:")
  println("\nbuffer[0]"+peek(dut.io.testing_buffer_content_0).toString(16)+"\n"+
          "buffer[1]"+peek(dut.io.testing_buffer_content_1).toString(16)+"\n"+
          "buffer[2]"+peek(dut.io.testing_buffer_content_2).toString(16)+"\n"+
          "buffer[3]"+peek(dut.io.testing_buffer_content_3).toString(16)+"\n"+
          "buffer[4]"+peek(dut.io.testing_buffer_content_4).toString(16)+"\n"+
          "buffer[5]"+peek(dut.io.testing_buffer_content_5).toString(16)+"\n"+
          "buffer[6]"+peek(dut.io.testing_buffer_content_6).toString(16)+"\n"+
          "buffer[7]"+peek(dut.io.testing_buffer_content_7).toString(16)+"\n"+
          "buffer[8]"+peek(dut.io.testing_buffer_content_8).toString(16)+"\n")

  //poke(dut.io.data_valid_from_env, false.B)
  println("State before rounds")
  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State  register enable :"+peek(dut.io.testing_enable_state_register).toString())
  println("\n")

  println("Input to round :\n")
  poke_val_0_0 = peek(dut.io.testing_round_in_0_0).toString(16)
  poke_val_0_1 = peek(dut.io.testing_round_in_0_1).toString(16)
  poke_val_0_2 = peek(dut.io.testing_round_in_0_2).toString(16)
  poke_val_0_3 = peek(dut.io.testing_round_in_0_3).toString(16)
  poke_val_0_4 = peek(dut.io.testing_round_in_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  poke_val_1_0 = peek(dut.io.testing_round_in_1_0).toString(16)
  poke_val_1_1 = peek(dut.io.testing_round_in_1_1).toString(16)
  poke_val_1_2 = peek(dut.io.testing_round_in_1_2).toString(16)
  poke_val_1_3 = peek(dut.io.testing_round_in_1_3).toString(16)
  poke_val_1_4 = peek(dut.io.testing_round_in_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  poke_val_2_0 = peek(dut.io.testing_round_in_2_0).toString(16)
  poke_val_2_1 = peek(dut.io.testing_round_in_2_1).toString(16)
  poke_val_2_2 = peek(dut.io.testing_round_in_2_2).toString(16)
  poke_val_2_3 = peek(dut.io.testing_round_in_2_3).toString(16)
  poke_val_2_4 = peek(dut.io.testing_round_in_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  poke_val_3_0 = peek(dut.io.testing_round_in_3_0).toString(16)
  poke_val_3_1 = peek(dut.io.testing_round_in_3_1).toString(16)
  poke_val_3_2 = peek(dut.io.testing_round_in_3_2).toString(16)
  poke_val_3_3 = peek(dut.io.testing_round_in_3_3).toString(16)
  poke_val_3_4 = peek(dut.io.testing_round_in_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  poke_val_4_0 = peek(dut.io.testing_round_in_4_0).toString(16)
  poke_val_4_1 = peek(dut.io.testing_round_in_4_1).toString(16)
  poke_val_4_2 = peek(dut.io.testing_round_in_4_2).toString(16)
  poke_val_4_3 = peek(dut.io.testing_round_in_4_3).toString(16)
  poke_val_4_4 = peek(dut.io.testing_round_in_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)

  println("\n")

  println("Output from state register:\n")

  poke_val_0_0 = peek(dut.io.testing_state_reg_0_0).toString(16)
  poke_val_0_1 = peek(dut.io.testing_state_reg_0_1).toString(16)
  poke_val_0_2 = peek(dut.io.testing_state_reg_0_2).toString(16)
  poke_val_0_3 = peek(dut.io.testing_state_reg_0_3).toString(16)
  poke_val_0_4 = peek(dut.io.testing_state_reg_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  poke_val_1_0 = peek(dut.io.testing_state_reg_1_0).toString(16)
  poke_val_1_1 = peek(dut.io.testing_state_reg_1_1).toString(16)
  poke_val_1_2 = peek(dut.io.testing_state_reg_1_2).toString(16)
  poke_val_1_3 = peek(dut.io.testing_state_reg_1_3).toString(16)
  poke_val_1_4 = peek(dut.io.testing_state_reg_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  poke_val_2_0 = peek(dut.io.testing_state_reg_2_0).toString(16)
  poke_val_2_1 = peek(dut.io.testing_state_reg_2_1).toString(16)
  poke_val_2_2 = peek(dut.io.testing_state_reg_2_2).toString(16)
  poke_val_2_3 = peek(dut.io.testing_state_reg_2_3).toString(16)
  poke_val_2_4 = peek(dut.io.testing_state_reg_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  poke_val_3_0 = peek(dut.io.testing_state_reg_3_0).toString(16)
  poke_val_3_1 = peek(dut.io.testing_state_reg_3_1).toString(16)
  poke_val_3_2 = peek(dut.io.testing_state_reg_3_2).toString(16)
  poke_val_3_3 = peek(dut.io.testing_state_reg_3_3).toString(16)
  poke_val_3_4 = peek(dut.io.testing_state_reg_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  poke_val_4_0 = peek(dut.io.testing_state_reg_4_0).toString(16)
  poke_val_4_1 = peek(dut.io.testing_state_reg_4_1).toString(16)
  poke_val_4_2 = peek(dut.io.testing_state_reg_4_2).toString(16)
  poke_val_4_3 = peek(dut.io.testing_state_reg_4_3).toString(16)
  poke_val_4_4 = peek(dut.io.testing_state_reg_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)

  println("Output from round:\n")

  poke_val_0_0 = peek(dut.io.testing_round_out_0_0).toString(16)
  poke_val_0_1 = peek(dut.io.testing_round_out_0_1).toString(16)
  poke_val_0_2 = peek(dut.io.testing_round_out_0_2).toString(16)
  poke_val_0_3 = peek(dut.io.testing_round_out_0_3).toString(16)
  poke_val_0_4 = peek(dut.io.testing_round_out_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  poke_val_1_0 = peek(dut.io.testing_round_out_1_0).toString(16)
  poke_val_1_1 = peek(dut.io.testing_round_out_1_1).toString(16)
  poke_val_1_2 = peek(dut.io.testing_round_out_1_2).toString(16)
  poke_val_1_3 = peek(dut.io.testing_round_out_1_3).toString(16)
  poke_val_1_4 = peek(dut.io.testing_round_out_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  poke_val_2_0 = peek(dut.io.testing_round_out_2_0).toString(16)
  poke_val_2_1 = peek(dut.io.testing_round_out_2_1).toString(16)
  poke_val_2_2 = peek(dut.io.testing_round_out_2_2).toString(16)
  poke_val_2_3 = peek(dut.io.testing_round_out_2_3).toString(16)
  poke_val_2_4 = peek(dut.io.testing_round_out_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  poke_val_3_0 = peek(dut.io.testing_round_out_3_0).toString(16)
  poke_val_3_1 = peek(dut.io.testing_round_out_3_1).toString(16)
  poke_val_3_2 = peek(dut.io.testing_round_out_3_2).toString(16)
  poke_val_3_3 = peek(dut.io.testing_round_out_3_3).toString(16)
  poke_val_3_4 = peek(dut.io.testing_round_out_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  poke_val_4_0 = peek(dut.io.testing_round_out_4_0).toString(16)
  poke_val_4_1 = peek(dut.io.testing_round_out_4_1).toString(16)
  poke_val_4_2 = peek(dut.io.testing_round_out_4_2).toString(16)
  poke_val_4_3 = peek(dut.io.testing_round_out_4_3).toString(16)
  poke_val_4_4 = peek(dut.io.testing_round_out_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)





  println("\n")
  poke(dut.io.testing_enable_state_register, true.B)
  poke(dut.io.testing_count_for_iota, 1.U)
  println("tick\n")
  step(1)

  println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
  println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
  println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
  println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
  println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
  println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
  println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())

  println("Input to round :\n")
  poke_val_0_0 = peek(dut.io.testing_round_in_0_0).toString(16)
  poke_val_0_1 = peek(dut.io.testing_round_in_0_1).toString(16)
  poke_val_0_2 = peek(dut.io.testing_round_in_0_2).toString(16)
  poke_val_0_3 = peek(dut.io.testing_round_in_0_3).toString(16)
  poke_val_0_4 = peek(dut.io.testing_round_in_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  poke_val_1_0 = peek(dut.io.testing_round_in_1_0).toString(16)
  poke_val_1_1 = peek(dut.io.testing_round_in_1_1).toString(16)
  poke_val_1_2 = peek(dut.io.testing_round_in_1_2).toString(16)
  poke_val_1_3 = peek(dut.io.testing_round_in_1_3).toString(16)
  poke_val_1_4 = peek(dut.io.testing_round_in_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  poke_val_2_0 = peek(dut.io.testing_round_in_2_0).toString(16)
  poke_val_2_1 = peek(dut.io.testing_round_in_2_1).toString(16)
  poke_val_2_2 = peek(dut.io.testing_round_in_2_2).toString(16)
  poke_val_2_3 = peek(dut.io.testing_round_in_2_3).toString(16)
  poke_val_2_4 = peek(dut.io.testing_round_in_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  poke_val_3_0 = peek(dut.io.testing_round_in_3_0).toString(16)
  poke_val_3_1 = peek(dut.io.testing_round_in_3_1).toString(16)
  poke_val_3_2 = peek(dut.io.testing_round_in_3_2).toString(16)
  poke_val_3_3 = peek(dut.io.testing_round_in_3_3).toString(16)
  poke_val_3_4 = peek(dut.io.testing_round_in_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  poke_val_4_0 = peek(dut.io.testing_round_in_4_0).toString(16)
  poke_val_4_1 = peek(dut.io.testing_round_in_4_1).toString(16)
  poke_val_4_2 = peek(dut.io.testing_round_in_4_2).toString(16)
  poke_val_4_3 = peek(dut.io.testing_round_in_4_3).toString(16)
  poke_val_4_4 = peek(dut.io.testing_round_in_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)

  println("\n")

  println("Output from state register :\n")

  poke_val_0_0 = peek(dut.io.testing_state_reg_0_0).toString(16)
  poke_val_0_1 = peek(dut.io.testing_state_reg_0_1).toString(16)
  poke_val_0_2 = peek(dut.io.testing_state_reg_0_2).toString(16)
  poke_val_0_3 = peek(dut.io.testing_state_reg_0_3).toString(16)
  poke_val_0_4 = peek(dut.io.testing_state_reg_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  poke_val_1_0 = peek(dut.io.testing_state_reg_1_0).toString(16)
  poke_val_1_1 = peek(dut.io.testing_state_reg_1_1).toString(16)
  poke_val_1_2 = peek(dut.io.testing_state_reg_1_2).toString(16)
  poke_val_1_3 = peek(dut.io.testing_state_reg_1_3).toString(16)
  poke_val_1_4 = peek(dut.io.testing_state_reg_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  poke_val_2_0 = peek(dut.io.testing_state_reg_2_0).toString(16)
  poke_val_2_1 = peek(dut.io.testing_state_reg_2_1).toString(16)
  poke_val_2_2 = peek(dut.io.testing_state_reg_2_2).toString(16)
  poke_val_2_3 = peek(dut.io.testing_state_reg_2_3).toString(16)
  poke_val_2_4 = peek(dut.io.testing_state_reg_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  poke_val_3_0 = peek(dut.io.testing_state_reg_3_0).toString(16)
  poke_val_3_1 = peek(dut.io.testing_state_reg_3_1).toString(16)
  poke_val_3_2 = peek(dut.io.testing_state_reg_3_2).toString(16)
  poke_val_3_3 = peek(dut.io.testing_state_reg_3_3).toString(16)
  poke_val_3_4 = peek(dut.io.testing_state_reg_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  poke_val_4_0 = peek(dut.io.testing_state_reg_4_0).toString(16)
  poke_val_4_1 = peek(dut.io.testing_state_reg_4_1).toString(16)
  poke_val_4_2 = peek(dut.io.testing_state_reg_4_2).toString(16)
  poke_val_4_3 = peek(dut.io.testing_state_reg_4_3).toString(16)
  poke_val_4_4 = peek(dut.io.testing_state_reg_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)

  println("\n")
  println("Output from round:\n")
  println("counter: "+peek(dut.io.testing_count_for_iota).toString())

  poke_val_0_0 = peek(dut.io.testing_round_out_0_0).toString(16)
  poke_val_0_1 = peek(dut.io.testing_round_out_0_1).toString(16)
  poke_val_0_2 = peek(dut.io.testing_round_out_0_2).toString(16)
  poke_val_0_3 = peek(dut.io.testing_round_out_0_3).toString(16)
  poke_val_0_4 = peek(dut.io.testing_round_out_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
      poke_val_0_1+"\t"+
      poke_val_0_2+"\t"+
      poke_val_0_3+"\t"+
      poke_val_0_4)

  poke_val_1_0 = peek(dut.io.testing_round_out_1_0).toString(16)
  poke_val_1_1 = peek(dut.io.testing_round_out_1_1).toString(16)
  poke_val_1_2 = peek(dut.io.testing_round_out_1_2).toString(16)
  poke_val_1_3 = peek(dut.io.testing_round_out_1_3).toString(16)
  poke_val_1_4 = peek(dut.io.testing_round_out_1_4).toString(16)
  println(
    poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  poke_val_2_0 = peek(dut.io.testing_round_out_2_0).toString(16)
  poke_val_2_1 = peek(dut.io.testing_round_out_2_1).toString(16)
  poke_val_2_2 = peek(dut.io.testing_round_out_2_2).toString(16)
  poke_val_2_3 = peek(dut.io.testing_round_out_2_3).toString(16)
  poke_val_2_4 = peek(dut.io.testing_round_out_2_4).toString(16)
  println(
    poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  poke_val_3_0 = peek(dut.io.testing_round_out_3_0).toString(16)
  poke_val_3_1 = peek(dut.io.testing_round_out_3_1).toString(16)
  poke_val_3_2 = peek(dut.io.testing_round_out_3_2).toString(16)
  poke_val_3_3 = peek(dut.io.testing_round_out_3_3).toString(16)
  poke_val_3_4 = peek(dut.io.testing_round_out_3_4).toString(16)
  println(
    poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  poke_val_4_0 = peek(dut.io.testing_round_out_4_0).toString(16)
  poke_val_4_1 = peek(dut.io.testing_round_out_4_1).toString(16)
  poke_val_4_2 = peek(dut.io.testing_round_out_4_2).toString(16)
  poke_val_4_3 = peek(dut.io.testing_round_out_4_3).toString(16)
  poke_val_4_4 = peek(dut.io.testing_round_out_4_4).toString(16)
  println(
    poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)




/*
  for(i <- 0 to 30)
    {
    println("tick\n")
    step(1)
    println("Local round counter :"+peek(dut.io.testing_round_counter).toString())
    println("Global round counter :"+peek(dut.io.testing_global_round_counter).toString())
    println("Result ready :"+peek(dut.io.testing_hash_ready).toString())
    println("Buffer ready :"+peek(dut.io.testing_buffer_ready).toString())
    println("Buffer counter :"+peek(dut.io.testing_buffer_counter).toString())
    println("Select for xor :"+peek(dut.io.testing_select_for_xor).toString())
    println("State register enable :"+peek(dut.io.testing_enable_state_register).toString())
    println("State for round "+i+" :\n")

    val poke_val_0_0 = peek(dut.io.testing_state_reg_0_0).toString(16)
    val poke_val_0_1 = peek(dut.io.testing_state_reg_0_1).toString(16)
    val poke_val_0_2 = peek(dut.io.testing_state_reg_0_2).toString(16)
    val poke_val_0_3 = peek(dut.io.testing_state_reg_0_3).toString(16)
    val poke_val_0_4 = peek(dut.io.testing_state_reg_0_4).toString(16)
    println(
      poke_val_0_0+"\t"+
        poke_val_0_1+"\t"+
        poke_val_0_2+"\t"+
        poke_val_0_3+"\t"+
        poke_val_0_4)

    val poke_val_1_0 = peek(dut.io.testing_state_reg_1_0).toString(16)
    val poke_val_1_1 = peek(dut.io.testing_state_reg_1_1).toString(16)
    val poke_val_1_2 = peek(dut.io.testing_state_reg_1_2).toString(16)
    val poke_val_1_3 = peek(dut.io.testing_state_reg_1_3).toString(16)
    val poke_val_1_4 = peek(dut.io.testing_state_reg_1_4).toString(16)
    println(
      poke_val_1_0+"\t"+
        poke_val_1_1+"\t"+
        poke_val_1_2+"\t"+
        poke_val_1_3+"\t"+
        poke_val_1_4)

    val poke_val_2_0 = peek(dut.io.testing_state_reg_2_0).toString(16)
    val poke_val_2_1 = peek(dut.io.testing_state_reg_2_1).toString(16)
    val poke_val_2_2 = peek(dut.io.testing_state_reg_2_2).toString(16)
    val poke_val_2_3 = peek(dut.io.testing_state_reg_2_3).toString(16)
    val poke_val_2_4 = peek(dut.io.testing_state_reg_2_4).toString(16)
    println(
      poke_val_2_0+"\t"+
        poke_val_2_1+"\t"+
        poke_val_2_2+"\t"+
        poke_val_2_3+"\t"+
        poke_val_2_4)

    val poke_val_3_0 = peek(dut.io.testing_state_reg_3_0).toString(16)
    val poke_val_3_1 = peek(dut.io.testing_state_reg_3_1).toString(16)
    val poke_val_3_2 = peek(dut.io.testing_state_reg_3_2).toString(16)
    val poke_val_3_3 = peek(dut.io.testing_state_reg_3_3).toString(16)
    val poke_val_3_4 = peek(dut.io.testing_state_reg_3_4).toString(16)
    println(
      poke_val_3_0+"\t"+
        poke_val_3_1+"\t"+
        poke_val_3_2+"\t"+
        poke_val_3_3+"\t"+
        poke_val_3_4)

    val poke_val_4_0 = peek(dut.io.testing_state_reg_4_0).toString(16)
    val poke_val_4_1 = peek(dut.io.testing_state_reg_4_1).toString(16)
    val poke_val_4_2 = peek(dut.io.testing_state_reg_4_2).toString(16)
    val poke_val_4_3 = peek(dut.io.testing_state_reg_4_3).toString(16)
    val poke_val_4_4 = peek(dut.io.testing_state_reg_4_4).toString(16)
    println(
      poke_val_4_0+"\t"+
        poke_val_4_1+"\t"+
        poke_val_4_2+"\t"+
        poke_val_4_3+"\t"+
        poke_val_4_4)
    println("\n")
  }

*/




/*
  step(27)
  println("result ready "+peek(dut.io.testing_hash_ready).toString())
  val peek_result = peek(dut.io.testing_result).toString(16)
  println("result "+peek_result)
*/

}

class final_sha3_spec extends FlatSpec with Matchers {
  "sha3" should "pass" in {
    chisel3.iotesters.Driver(() => new Sha3()) { c => new final_sha_3_tester(c)} should be (true)
  }
}

/*


 */