import BigIntUnits.CycledMultiplier
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

// Test consecutive running of multiplier
class CycledMultiplierTester1(dut: CycledMultiplier) extends PeekPokeTester(dut) {

  val multiplicator_1 = 200
  val multiplicand_1 = 350
  val multiplicator_2 = 200
  val multiplicand_2 = 380
  val expected_1 = 70000
  val expected_2 = 76000

  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, false)
  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, true)
  poke(dut.io.multiplicator, multiplicator_1)
  poke(dut.io.multiplicand, multiplicand_1)
  step(1)
  expect(dut.io.valid_out, false)

  step(100000)
  expect(dut.io.valid_out, true)
  expect(dut.io.result, expected_1)

  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.multiplicator, multiplicator_2)
  poke(dut.io.multiplicand, multiplicand_2)
  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, false)
  step(1)
  expect(dut.io.valid_out, true)

  poke(dut.io.valid_in, true)
  step(1)
  expect(dut.io.valid_out, false)

/*
  step(40000)
  expect(dut.io.valid_out, true)
  expect(dut.io.result, expected_2)

 */
}
class CycledMultiplierSpec extends FlatSpec with Matchers {
  "BigIntUnits.CycledMultiplier" should "pass" in {
    chisel3.iotesters.Driver(() => new CycledMultiplier) { c => new CycledMultiplierTester1(c)} should be (true)
  }
}