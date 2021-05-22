import BigIntUnits.CycledAdder
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class CycledAdderTester4(dut: CycledAdder) extends PeekPokeTester(dut) {
  //var out: Seq[BigInt] = peek(dut.io.out)
  var result: BigInt = peek(dut.io.result)
  var valid_out: BigInt = peek(dut.io.valid_out)
  var overflow: BigInt = peek(dut.io.overflow)
  //System.out.println("Out vector        : " + out)
  System.out.println("Interpreted result: " + result)
  System.out.println("Valid out         : " + valid_out)
  System.out.println("Carry/Overflow    : " + overflow)
  System.out.println("---------")

  poke(dut.io.adder, BigInt(""))
  poke(dut.io.addend, BigInt("1"))
  poke(dut.io.valid_in, true)

  for(i <- 0 until 130){
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
  }



}
class CycledAdderSpec_Convert2sComplement extends FlatSpec with Matchers {
  "CycledAdder" should "pass" in {
    chisel3.iotesters.Driver(() => new CycledAdder(4096, 32)) { c => new CycledAdderTester4(c)} should be (true)
  }
}
