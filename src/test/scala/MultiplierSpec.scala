import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class MultiplierTester(dut: Multiplier) extends PeekPokeTester(dut) {
  poke(dut.io.valid_in, false)
  step(1)

  poke(dut.io.valid_in, true)
  poke(dut.io.multiplicator, 4294967295L)
  poke(dut.io.multiplicand, 4294967295L)
  var result: BigInt = peek(dut.io.result)
  var v_out: BigInt = peek(dut.io.valid_out)
  System.out.println("Result: " + result);
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  for(a <- 0 to 2048){
    step(1)
    result = peek(dut.io.result)
    v_out = peek(dut.io.valid_out)
    System.out.println("Result: " + result);
    System.out.println("Valid_out: " + v_out)
    System.out.println()
  }
}
class MultiplierSpec extends FlatSpec with Matchers {
  "Multiplier" should "pass" in {
    chisel3.iotesters.Driver(() => new Multiplier) { c => new MultiplierTester(c)} should be (true)
  }
}