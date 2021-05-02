import BigIntUnits.Multiplier
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

// Test consecutive running of multiplier
class MultiplierTester2(dut: Multiplier) extends PeekPokeTester(dut) {

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

  step(2049)
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

  step(2049)
  expect(dut.io.valid_out, true)
  expect(dut.io.result, expected_2)
}
class MultiplierSpec_ConsecutiveRuns extends FlatSpec with Matchers {
  "BigIntUnits.Multiplier" should "pass" in {
    chisel3.iotesters.Driver(() => new Multiplier) { c => new MultiplierTester2(c)} should be (true)
  }
}