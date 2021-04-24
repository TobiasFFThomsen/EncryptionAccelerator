import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class DividerTester(dut: Divider) extends PeekPokeTester(dut) {


  poke(dut.io.valid_in, false)
  step(1)

  poke(dut.io.valid_in, true)
  poke(dut.io.divisor, 2)
  poke(dut.io.dividend, 4)
  var quotient: BigInt = peek(dut.io.quotient)
  var remainder: BigInt = peek(dut.io.remainder)
  var v_out: BigInt = peek(dut.io.valid_out)
  System.out.println("quotient: " + quotient);
  System.out.println("remainder: " + remainder);
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()
  /*
  for(a <- 0 to 2048){
    step(1)
    result = peek(dut.io.result)
    v_out = peek(dut.io.valid_out)
    System.out.println("Result: " + result);
    System.out.println("Valid_out: " + v_out)
    System.out.println()
  }
   */
}

class DividerSpec extends FlatSpec with Matchers {
  "Divider" should "pass" in {
    chisel3.iotesters.Driver(() => new Divider) { c => new DividerTester(c)} should be (true)
  }
}