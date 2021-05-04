import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class fsm_tester (dut: FSM) extends PeekPokeTester(dut) {
  poke(dut.io.buffer_ready, true.B)
  println("counter : "+peek(dut.io.counter).toString()+" select for xor: "+peek(dut.io.select_for_xor).toString())
  for(i <- 0 to 24){
    step(1)
    println("counter : "+peek(dut.io.counter).toString()+" select for xor: "+peek(dut.io.select_for_xor).toString())
  }
  poke(dut.io.buffer_ready, false.B)
  println("")
  for(i <- 0 to 12){
    step(1)
    println("counter : "+peek(dut.io.counter).toString()+" select for xor: "+peek(dut.io.select_for_xor).toString())
  }
  poke(dut.io.buffer_ready, false.B)
  println("")
  for(i <- 12 to 24){
    step(1)
    println("counter : "+peek(dut.io.counter).toString()+" select for xor: "+peek(dut.io.select_for_xor).toString())
  }
}
class fsm_spec extends FlatSpec with Matchers {
  "FSM" should "pass" in {
    chisel3.iotesters.Driver(() => new FSM()) { c => new fsm_tester(c)} should be (true)
  }
}