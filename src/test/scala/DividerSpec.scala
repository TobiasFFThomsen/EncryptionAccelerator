import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class DividerTester(dut: Divider) extends PeekPokeTester(dut) {


  poke(dut.io.valid_in, false)
  step(1)

  poke(dut.io.valid_in, true)
  poke(dut.io.divisor, 83)
  poke(dut.io.dividend, 1236)
  var quotient: BigInt = peek(dut.io.quotient)
  var remainder: BigInt = peek(dut.io.remainder)
  var v_out: BigInt = peek(dut.io.valid_out)
  var run: BigInt = peek(dut.io.run)
  var step: BigInt = peek(dut.io.step)
  var state: BigInt = peek(dut.io.state)
  var divisor_out: BigInt = peek(dut.io.divisor_out)

  System.out.println("quotient: " + quotient);
  System.out.println("remainder: " + remainder);
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println("run: " + run)
  System.out.println("step: " + step)
  System.out.println("state: " + state)
  System.out.println("divisor_peek: " + divisor_out)
  System.out.println()

  for(a <- 0 to 20){
    step(1)
    quotient = peek(dut.io.quotient)
    remainder = peek(dut.io.remainder)
    v_out = peek(dut.io.valid_out)
    run = peek(dut.io.run)
    step = peek(dut.io.step)
    state = peek(dut.io.state)
    divisor_out = peek(dut.io.divisor_out)
    System.out.println("Quotient: " + quotient);
    System.out.println("Remainder: " + remainder);
    System.out.println("Valid_out: " + v_out)
    System.out.println("run: " + run)
    System.out.println("step: " + step)
    System.out.println("state: " + state)
    System.out.println("divisor_peek: " + divisor_out)
    System.out.println()
  }
}

class DividerSpec extends FlatSpec with Matchers {
  "Divider" should "pass" in {
    chisel3.iotesters.Driver(() => new Divider) { c => new DividerTester(c)} should be (true)
  }
}