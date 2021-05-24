import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class SAMTester(dut: SAM) extends PeekPokeTester(dut) {
  // 5^2 mod 7
  // 5^(10b) mod 7
  val a_lim = 3
  val b_lim = 5
  var cycle = 0

  poke(dut.io.valid_in, false)
  step(1)

  poke(dut.io.t, BigInt("17"));
  poke(dut.io.n, 213);
  poke(dut.io.b, 27);
  poke(dut.io.valid_in, true);
  step(1)
  expect(dut.io.valid_out, false)
  step(100000)
  expect(dut.io.valid_out, true)
  expect(dut.io.result, 60)

  poke(dut.io.valid_in, false)
  step(1)

/*
  poke(dut.io.t, BigInt("16254312363712312311231231231"));
  poke(dut.io.n, 276372);
  poke(dut.io.b, 5216332123123123L);
  poke(dut.io.valid_in, true);

  step(1)
  expect(dut.io.valid_out, false)

  step(400000)
  expect(dut.io.valid_out, true)
  expect(dut.io.result, 232615)

  poke(dut.io.valid_in, false)
  step(1)

 */
/*
  poke(dut.io.t, BigInt("1625431236371231231123123123116254312363712312311231231231"));
  poke(dut.io.n, BigInt("12786387113123"));
  poke(dut.io.b, BigInt("5216332123123123182937982"));
  poke(dut.io.valid_in, true);

  step(1)
  expect(dut.io.valid_out, false)

  step(900000)
  expect(dut.io.valid_out, true)
  expect(dut.io.result, 2643790355569L)

 */
  /*
  val result: BigInt = peek(dut.io.result)
  val v_in: BigInt = peek(dut.io.valid_in)
  val v_out: BigInt = peek(dut.io.valid_out)
  val progress_reg: BigInt = peek(dut.io.prog)
  val high: BigInt = peek(dut.io.high)
  val exp_lim: BigInt = peek(dut.io.exp_lim)

  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("Valid_out: " + v_out)
  System.out.println()
  */
  // Here comes the Chisel/Scala code// for the testing}
}
class SAMSpec extends FlatSpec with Matchers {
  "SAM" should "pass" in {
    chisel3.iotesters.Driver(() => new SAM) { c => new SAMTester(c)} should be (true)
  }
}
