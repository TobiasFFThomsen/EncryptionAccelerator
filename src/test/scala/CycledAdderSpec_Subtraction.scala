import BigIntUnits.CycledAdder
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class CycledAdderTester3(dut: CycledAdder) extends PeekPokeTester(dut) {
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

  poke(dut.io.adder, BigInt("13789127389127893729873812738912789213793821"))
  poke(dut.io.addend, BigInt("-81237128973892112312312312323123213"))
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
class CycledAdderSpec_Subtraction extends FlatSpec with Matchers {
  "CycledAdder" should "pass" in {
    chisel3.iotesters.Driver(() => new CycledAdder(4096, 32)) { c => new CycledAdderTester3(c)} should be (true)
  }
}
