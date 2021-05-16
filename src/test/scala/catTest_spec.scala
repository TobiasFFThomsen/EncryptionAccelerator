import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class catTest_spec(dut: catTest) extends PeekPokeTester(dut) {
    poke(dut.io.cat_in(0),1.U)
    poke(dut.io.cat_in(1),2.U)
    System.out.println(peek(dut.io.cat_out))
}


class catTestspec extends FlatSpec with Matchers {
  "cattest" should "pass" in {
    chisel3.iotesters.Driver(() => new catTest()) { c => new catTest_spec(c)} should be (true)
  }
}