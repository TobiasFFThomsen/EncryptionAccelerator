import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class SAMTester(dut: SAM) extends PeekPokeTester(dut) {
// 5^2 mod 7
  // 5^(10b) mod 7
  val a_lim = 3
  val b_lim = 5
  var cycle = 0
  for (a <- 0 to 9000) {
    poke(dut.io.t, BigInt("2"));
    poke(dut.io.n, 7);
    poke(dut.io.b, 5);
    poke(dut.io.valid_in, true);

    val result: BigInt = peek(dut.io.result)
    val v_in: BigInt = peek(dut.io.valid_in)
    val v_out: BigInt = peek(dut.io.valid_out)
    val progress_reg: BigInt = peek(dut.io.prog)
    val high: BigInt = peek(dut.io.high)
    val exp_lim: BigInt = peek(dut.io.exp_lim)


    //System.out.println("Cycle: " + cycle)
    /*
    System.out.println("Result: " + result);
    System.out.println("Progress: " + progress_reg)
    System.out.println("valid_in: " + v_in)
    System.out.println("high: " + high)
    System.out.println("exponent limit: " + exp_lim)
    System.out.println("Valid_out: " + v_out)
    System.out.println()
    */


    step(1)
    cycle = cycle + 1
  }

  // Here comes the Chisel/Scala code// for the testing}

}
class SAMSpec extends FlatSpec with Matchers {
  "SAM" should "pass" in {
    chisel3.iotesters.Driver(() => new SAM) { c => new SAMTester(c)} should be (true)
  }
}