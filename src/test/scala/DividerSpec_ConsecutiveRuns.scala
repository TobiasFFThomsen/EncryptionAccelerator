import BigIntUnits.Divider
import chisel3.iotesters.PeekPokeTester
import org.scalatest.{FlatSpec, Matchers}

class DividerTester2(dut: Divider) extends PeekPokeTester(dut) {
  val divisor_1 = 211
  val dividend_1 = 70000
  val divisor_2 = 223
  val dividend_2 = 10010
  val expected_quotient_1 = 331
  val expected_quotient_2 = 44
  val expected_remainder_1 = 159
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

  step(400)
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

  step(400)
  expect(dut.io.valid_out, true)

  expect(dut.io.quotient, expected_quotient_2)
  expect(dut.io.remainder, expected_remainder_2)
}

class DividerSpec_ConsecutiveRuns extends FlatSpec with Matchers {
  "BigIntUnits.Divider" should "pass" in {
    chisel3.iotesters.Driver(() => new Divider) { c => new DividerTester2(c)} should be (true)
  }
}