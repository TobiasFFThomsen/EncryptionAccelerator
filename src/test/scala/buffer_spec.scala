import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class buffer_tester(dut: Buffer) extends PeekPokeTester(dut) {

  poke(dut.io.dataIn,1.U)
  step(1)
  poke(dut.io.dataIn,2.U)
  step(1)
  poke(dut.io.dataIn,3.U)
  step(1)
  poke(dut.io.dataIn,4.U)
  step(1)
  poke(dut.io.dataIn,5.U)
  step(1)
  poke(dut.io.dataIn,6.U)
  step(1)
  poke(dut.io.dataIn,7.U)
  step(1)
  poke(dut.io.dataIn,8.U)
  step(1)
  poke(dut.io.dataIn,9.U)
  step(1)

  for(i <- 0 to 8)
    System.out.println(peek(dut.io.dataOut(i)).toString(16))
}

class buffer_spec extends FlatSpec with Matchers {

  "buffer" should "pass" in {
    chisel3.iotesters.Driver(() => new Buffer()) { c => new buffer_tester(c)} should be (true)
  }

}
