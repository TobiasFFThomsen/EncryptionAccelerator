import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class SAMTester(dut: SAM) extends PeekPokeTester(dut) {
  poke(dut.io.t, 1);
  poke(dut.io.n, 1);
  poke(dut.io.b, 1);
  poke(dut.io.valid_in, false)
  val result: BigInt = peek(dut.io.result)
  //val v_in: BigInt = peek(dut.io.valid_in)
  val v_out: BigInt = peek(dut.io.valid_out)
  System.out.println(result)
  //System.out.println(v_in)
  System.out.println(v_out)

  // Here comes the Chisel/Scala code// for the testing}
}
class SAMSpec extends FlatSpec with Matchers {
  "SAM" should "pass" in {
    chisel3.iotesters.Driver(() => new SAM) { c => new SAMTester(c)} should be (true)
  }
}
/*
class SAMSpec extends FlatSpec with Matchers {
  "Hello" should "pass" in {
    chisel3.iotesters.Driver(() => new Hello()) { c =>
      new PeekPokeTester(c) {

        var ledStatus = -1
        println("Start the blinking LED")
        for (i <- 0 until 100) {
          step(10000)
          val ledNow = peek(c.io.led).toInt
          val s = if (ledNow == 0) "o" else "*"
          if (ledStatus != ledNow) {
            System.out.println(s)
            ledStatus = ledNow
          }
        }
        println("\nEnd the blinking LED")
      }
    } should be (true)
  }
}
*/
