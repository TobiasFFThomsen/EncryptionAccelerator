import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class SAMTester(dut: SAM) extends PeekPokeTester(dut) {
  /*
  val a_lim = 3
  val b_lim = 5
  var cycle = 0
  var go = false
  poke(dut.io.valid_in, false)
  for (a <- 0 to a_lim){
    poke(dut.io.valid_in, go)
    for (b <- 0 to b_lim){
      poke(dut.io.t, 4);
      poke(dut.io.n, 1);
      poke(dut.io.b, 1);
      //step(1);
      val result: BigInt = peek(dut.io.result)
      val v_in: BigInt = peek(dut.io.valid_in)
      val v_out: BigInt = peek(dut.io.valid_out)
      val progress_reg: BigInt = peek(dut.io.prog)
      val high: BigInt = peek(dut.io.high)
      val exp_lim: BigInt = peek(dut.io.exp_lim)
      val run: BigInt = peek(dut.io.run)

      System.out.println("Cycle: " + cycle)
      System.out.println("Result: " + result);
      System.out.println("Progress: " + progress_reg)
      System.out.println("valid_in: " + v_in)
      System.out.println("high: " + high)
      System.out.println("exponent limit: " + exp_lim)
      System.out.println("run: " + run)
      System.out.println("Valid_out: " + v_out)
      System.out.println()

      step(1)
      cycle = cycle + 1
    }
  }
    go = !go
   */
  var cycle = 0
  poke(dut.io.t, 8);
  poke(dut.io.n, 23);
  poke(dut.io.b, 17);
  poke(dut.io.valid_in, true)
  var result: BigInt = peek(dut.io.result)
  var v_in: BigInt = peek(dut.io.valid_in)
  var v_out: BigInt = peek(dut.io.valid_out)
  var progress_reg: BigInt = peek(dut.io.prog)
  var high: BigInt = peek(dut.io.high)
  var exp_lim: BigInt = peek(dut.io.exp_lim)
  var run: BigInt = peek(dut.io.run)

  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  // Cycle 1
  step(1)
  cycle = cycle + 1
  result = peek(dut.io.result)
  v_in = peek(dut.io.valid_in)
  v_out = peek(dut.io.valid_out)
  progress_reg = peek(dut.io.prog)
  high = peek(dut.io.high)
  exp_lim = peek(dut.io.exp_lim)
  run = peek(dut.io.run)
  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  // Cycle 2
  step(1)
  cycle = cycle + 1
  result = peek(dut.io.result)
  v_in = peek(dut.io.valid_in)
  v_out = peek(dut.io.valid_out)
  progress_reg = peek(dut.io.prog)
  high = peek(dut.io.high)
  exp_lim = peek(dut.io.exp_lim)
  run = peek(dut.io.run)
  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  // Cycle 3
  step(1)
  cycle = cycle + 1
  result = peek(dut.io.result)
  v_in = peek(dut.io.valid_in)
  v_out = peek(dut.io.valid_out)
  progress_reg = peek(dut.io.prog)
  high = peek(dut.io.high)
  exp_lim = peek(dut.io.exp_lim)
  run = peek(dut.io.run)
  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  step(1)
  cycle = cycle + 1
  result = peek(dut.io.result)
  v_in = peek(dut.io.valid_in)
  v_out = peek(dut.io.valid_out)
  progress_reg = peek(dut.io.prog)
  high = peek(dut.io.high)
  exp_lim = peek(dut.io.exp_lim)
  run = peek(dut.io.run)
  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  step(1)
  cycle = cycle + 1
  result = peek(dut.io.result)
  v_in = peek(dut.io.valid_in)
  v_out = peek(dut.io.valid_out)
  progress_reg = peek(dut.io.prog)
  high = peek(dut.io.high)
  exp_lim = peek(dut.io.exp_lim)
  run = peek(dut.io.run)
  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()

  step(1)
  cycle = cycle + 1
  result = peek(dut.io.result)
  v_in = peek(dut.io.valid_in)
  v_out = peek(dut.io.valid_out)
  progress_reg = peek(dut.io.prog)
  high = peek(dut.io.high)
  exp_lim = peek(dut.io.exp_lim)
  run = peek(dut.io.run)
  System.out.println("Cycle: " + cycle)
  System.out.println("t: " + peek(dut.io.t))
  System.out.println("Result: " + result);
  System.out.println("Progress: " + progress_reg)
  System.out.println("valid_in: " + v_in)
  System.out.println("high: " + high)
  System.out.println("exponent limit: " + exp_lim)
  System.out.println("run: " + run)
  System.out.println("Valid_out: " + v_out)
  System.out.println()
  // Here comes the Chisel/Scala code// for the testing}
}
class SAMSpec extends FlatSpec with Matchers {
  "SAM" should "pass" in {
    chisel3.iotesters.Driver(() => new SAM) { c => new SAMTester(c)} should be (true)
  }
}