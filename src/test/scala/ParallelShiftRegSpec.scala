import BigIntUnits.ParallelShiftRegister
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class ParallelShiftRegisterTester(dut: ParallelShiftRegister) extends PeekPokeTester(dut) {
  poke(dut.io.enable, false)
  poke(dut.io.load_shift, false)  // Shift
  var out_res: Seq[BigInt] = peek(dut.io.out)
  System.out.println(out_res)

  poke(dut.io.serial_input, 123)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  poke(dut.io.enable, true)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  poke(dut.io.serial_input, 124)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  poke(dut.io.serial_input, 125)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  poke(dut.io.serial_input, 126)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  for(i <- 0 until 4){
    poke(dut.io.parallel_input(i), i)
  }
  poke(dut.io.serial_input, 100)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

  poke(dut.io.load_shift, true)
  step(1)
  out_res = peek(dut.io.out)
  System.out.println(out_res)

}
class ParallelShiftRegisterSpec extends FlatSpec with Matchers {
  "ParallelShiftRegister" should "pass" in {
    chisel3.iotesters.Driver(() => new ParallelShiftRegister(64, 32)) { c => new ParallelShiftRegisterTester(c)} should be (true)
  }
}
