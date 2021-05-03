import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._


class buffer_and_fsm_tester(dut: Sha3) extends PeekPokeTester(dut) {
  poke(dut.io.block_length_valid_from_env, false.B)
  poke(dut.io.data_valid_from_env, false.B)
  step(1)
  poke(dut.io.block_length_valid_from_env, true.B)
  poke(dut.io.block_length_in,5.U)
  step(1)
  println("block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm))
  println("block length to fsm: "+  peek(dut.io.block_length_out))
  step(1)
  poke(dut.io.data_valid_from_env, true.B)
  for (i <- 0 to 8) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )

  }

  step(1)
  poke(dut.io.data_valid_from_env, false.B)

  for(i <- 0 to 23){
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  step(1)
  poke(dut.io.data_valid_from_env, true.B)

  for (i <- 0 to 4) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
      ", buffer ready " + peek(dut.io.testing_buffer_ready) +
      ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
      ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
      ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
      ", cycle "+i+
      ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  poke(dut.io.data_valid_from_env, false.B)
  step(1)

  for (i <- 0 to 4) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  poke(dut.io.data_valid_from_env, true.B)
  step(1)

  for (i <- 0 to 25) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  for (i <- 0 to 25) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  for (i <- 0 to 25) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  for (i <- 0 to 25) {
    step(1)
    poke(dut.io.w_in_from_outside, i.U)
    println(
      "hash ready " + peek(dut.io.testing_hash_ready) +
        ", buffer ready " + peek(dut.io.testing_buffer_ready) +
        ", round local counter  " + peek(dut.io.testing_round_counter).toString()+
        ", round global counter  " + peek(dut.io.testing_global_round_counter).toString()+
        ", buffer counter " + peek(dut.io.testing_buffer_counter).toString()+
        ", cycle "+i+
        ", block length valid to fsm: "+  peek(dut.io.block_length_valid_to_fsm).toString()
    )
  }

  /*
  poke(dut.io.w_in,1.U)
  step(1)
  poke(dut.io.w_in,2.U)
  step(1)
  poke(dut.io.w_in,3.U)
  step(1)
  poke(dut.io.w_in,4.U)
  step(1)
  poke(dut.io.w_in,5.U)
  step(1)
  poke(dut.io.w_in,6.U)
  step(1)
  poke(dut.io.w_in,7.U)
  step(1)
  poke(dut.io.w_in,8.U)
  step(1)
  poke(dut.io.w_in,9.U)
  step(1)

  for(i <- 0 to 24){
    step(1)
    println("counter : "+peek(dut.io.testing_round_counter).toString())
  }
*/
}

class buffer_and_fsm_spec extends FlatSpec with Matchers {
  "FSM_and_BUFFER" should "pass" in {
    chisel3.iotesters.Driver(() => new Sha3()) { c => new buffer_and_fsm_tester(c)} should be (true)
  }
}