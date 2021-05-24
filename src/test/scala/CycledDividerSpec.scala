import BigIntUnits.CycledDivider
import chisel3.iotesters.PeekPokeTester
import org.scalatest.{FlatSpec, Matchers}

import scala.math.BigInt

class CycledDividerTester(dut: CycledDivider) extends PeekPokeTester(dut) {
  val divisor_1 = 3
  val dividend_1 = 20
  val divisor_2 = 223
  val dividend_2 = 10010
  val expected_quotient_1 = 6
  val expected_quotient_2 = 44
  val expected_remainder_1 = 2
  val expected_remainder_2 = 198

  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, false)
  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, true)
  poke(dut.io.divisor, divisor_1)
  poke(dut.io.dividend, dividend_1)
  step(1)
  expect(dut.io.valid_out, false)
  System.out.println(peek(dut.io.valid_out))

  step(2000)
  val valid_o: BigInt = peek(dut.io.valid_out)
  val q_result: BigInt = peek(dut.io.quotient)
  val remainder_result: BigInt = peek(dut.io.remainder)

  expect(dut.io.valid_out, true)
  expect(dut.io.quotient, expected_quotient_1)
  expect(dut.io.remainder, expected_remainder_1)

  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.divisor, divisor_2)
  poke(dut.io.dividend, dividend_2)
  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, false)
  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, true)
  step(1)
  expect(dut.io.valid_out, false)

  step(10000)
  expect(dut.io.valid_out, true)

  expect(dut.io.quotient, expected_quotient_2)
  expect(dut.io.remainder, expected_remainder_2)
}

class CycledDividerSpec extends FlatSpec with Matchers {
  "BigIntUnits.CycledDivider" should "pass" in {
    chisel3.iotesters.Driver(() => new CycledDivider) { c => new CycledDividerTester(c)} should be (true)
  }
}