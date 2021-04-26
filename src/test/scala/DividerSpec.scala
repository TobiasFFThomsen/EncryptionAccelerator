import BigIntUnits.Divider
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

import scala.math.BigInt

class DividerTester(dut: Divider) extends PeekPokeTester(dut) {

  var dividend = BigInt("32317006071311007300714876688669951960444102669715484032130345427524655138867890893197201411522913463688717960921898019494119559150490921095088152386448283120630877367300996091750197750389652106796057638384067568276792218642619756161838094338476170470581645852036305042887575891541065808607552399123930385521914333389668342420684974786564569494856176035326322058077805659331026192708460314150258592864177116725943603718461857357598351152301645904403697613233287231227125684710820209725157101726931323469678542580656697935045997268352998638215525166389437335543602135433229604645318478604952148193555853611059596230655")
  var divisor = BigInt("1289371278128390128390812978361278631273861278368127381")
  System.out.println(dividend)
  System.out.println(divisor)
  poke(dut.io.valid_in, false)
  step(1)

  poke(dut.io.valid_in, true)
  poke(dut.io.divisor, divisor)
  poke(dut.io.dividend, dividend)
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
  System.out.println("step: " + step)
  System.out.println("state: " + state)
  System.out.println("divisor_peek: " + divisor_out)
  System.out.println()

  for(a <- 0 to 6000){
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
    //System.out.println("run: " + run)
    //System.out.println("step: " + step)
    //System.out.println("state: " + state)
    //System.out.println("divisor_peek: " + divisor_out)
    System.out.println()
  }
}

class DividerSpec extends FlatSpec with Matchers {
  "BigIntUnits.Divider" should "pass" in {
    chisel3.iotesters.Driver(() => new Divider) { c => new DividerTester(c)} should be (true)
  }
}