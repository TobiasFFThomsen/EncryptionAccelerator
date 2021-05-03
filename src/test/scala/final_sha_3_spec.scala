import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._


class final_sha_3_spec(dut: Sha3) extends PeekPokeTester(dut) {
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
}

class final_sha3_tester extends FlatSpec with Matchers {
  "sha3" should "pass" in {
    chisel3.iotesters.Driver(() => new Sha3()) { c => new final_sha_3_spec(c)} should be (true)
  }
}