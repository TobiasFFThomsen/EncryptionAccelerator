import BigIntUnits.CycledAdder
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class CycledAdderTester(dut: CycledAdder) extends PeekPokeTester(dut) {
  //var out: Seq[BigInt] = peek(dut.io.out)
  //var adder: Seq[BigInt] = peek(dut.io.adder_out)
  //var addend: Seq[BigInt] = peek(dut.io.addend_out)
  var result: BigInt = peek(dut.io.result)
  //var partial: BigInt = peek(dut.io.partial_out)
  var valid_out: BigInt = peek(dut.io.valid_out)
  var overflow: BigInt = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vetor       : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  poke(dut.io.adder, BigInt("30000000200000001", 16))
  poke(dut.io.addend, BigInt("60000000400000002", 16))
  poke(dut.io.valid_in, true)
  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")
  expect(dut.io.result, BigInt("166020696689155768323"))

  poke(dut.io.valid_in, false)
  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  System.out.println("----------------------\nNEW RUN:\n")
  poke(dut.io.valid_in, true)
  poke(dut.io.adder, BigInt("10000000280000000", 16))
  poke(dut.io.addend, BigInt("10000000280000000", 16))
  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")
  expect(dut.io.result, BigInt("36893488168893939712"))

  poke(dut.io.valid_in, false)
  step(1)

  poke(dut.io.adder, BigInt("fffffffffffffffffffffffe", 16))  // 79228162514264337593543950334
  poke(dut.io.addend, BigInt("-79228162514264337593543950333"))
  poke(dut.io.valid_in, true)
  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  step(1)
  //out = peek(dut.io.out)
  result = peek(dut.io.result)
  //adder = peek(dut.io.adder_out)
  //addend = peek(dut.io.addend_out)
  //partial = peek(dut.io.partial_out)
  valid_out = peek(dut.io.valid_out)
  overflow = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  //System.out.println("Adder vector      : " + adder)
  //System.out.println("Addend vector     : " + addend)
  //System.out.println("Partial cycle sum : " + partial)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")
  expect(dut.io.result, 1)


}
class CycledAdderSpec extends FlatSpec with Matchers {
  "CycledAdder" should "pass" in {
    chisel3.iotesters.Driver(() => new CycledAdder(96, 32)) { c => new CycledAdderTester(c)} should be (true)
  }
}
