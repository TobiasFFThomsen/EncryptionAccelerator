import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class sha3_tester(dut: Theta) extends PeekPokeTester(dut) {
  for(x <- 0 to 4)
    for(y <- 0 to 4)
      poke(dut.io.theta_in(x)(y),0x000000000000000L)


  poke(dut.io.theta_in(0)(0),0x000000000000000dL)
  poke(dut.io.theta_in(3)(1),0x8000000000000000L)

  println("State before first round:")

  for(x <- 0 to 4) {
    val peek_val_1 = peek(dut.io.theta_in(x)(0)).toString(16)
    val peek_val_2 = peek(dut.io.theta_in(x)(1)).toString(16)
    val peek_val_3 = peek(dut.io.theta_in(x)(2)).toString(16)
    val peek_val_4 = peek(dut.io.theta_in(x)(3)).toString(16)
    val peek_val_5 = peek(dut.io.theta_in(x)(4)).toString(16)
    println(peek_val_1+"\t"+peek_val_2+"\t"+peek_val_3+"\t"+peek_val_4+"\t"+peek_val_5)
  }

  println("State after first round:")
  for(x <- 0 to 4) {
      val peek_val_1 = peek(dut.io.theta_out(x)(0)).toString(16)
      val peek_val_2 = peek(dut.io.theta_out(x)(1)).toString(16)
      val peek_val_3 = peek(dut.io.theta_out(x)(2)).toString(16)
      val peek_val_4 = peek(dut.io.theta_out(x)(3)).toString(16)
      val peek_val_5 = peek(dut.io.theta_out(x)(4)).toString(16)
      println(peek_val_1+"\t"+peek_val_2+"\t"+peek_val_3+"\t"+peek_val_4+"\t"+peek_val_5)
  }

  println("Theta_D")
  val theta_d_1 = peek(dut.io.theta_d(0)).toString(16)
  val theta_d_2 = peek(dut.io.theta_d(1)).toString(16)
  val theta_d_3 = peek(dut.io.theta_d(2)).toString(16)
  val theta_d_4 = peek(dut.io.theta_d(3)).toString(16)
  val theta_d_5 = peek(dut.io.theta_d(4)).toString(16)
  println(theta_d_1+"\t"+theta_d_2+"\t"+theta_d_3+"\t"+theta_d_4+"\t"+theta_d_5)

  println("Theta_C")
  val theta_c_1 = peek(dut.io.theta_c(0)).toString(16)
  val theta_c_2 = peek(dut.io.theta_c(1)).toString(16)
  val theta_c_3 = peek(dut.io.theta_c(2)).toString(16)
  val theta_c_4 = peek(dut.io.theta_c(3)).toString(16)
  val theta_c_5 = peek(dut.io.theta_c(4)).toString(16)
  println(theta_c_1+"\t"+theta_c_2+"\t"+theta_c_3+"\t"+theta_c_4+"\t"+theta_c_5)





  /*
  val rot_val_0_0 = peek(dut.io.rotation1Out(0)).toString(16)
  val rot_val_1_0 = peek(dut.io.rotation1Out(1)).toString(16)
  val rot_val_2_0 = peek(dut.io.rotation1Out(2)).toString(16)
  val rot_val_3_0 = peek(dut.io.rotation1Out(3)).toString(16)
  val rot_val_4_0 = peek(dut.io.rotation1Out(4)).toString(16)

  val rot_val_0_1 = peek(dut.io.rotation2Out(0)).toString(16)
  val rot_val_1_1 = peek(dut.io.rotation2Out(1)).toString(16)
  val rot_val_2_1 = peek(dut.io.rotation2Out(2)).toString(16)
  val rot_val_3_1 = peek(dut.io.rotation2Out(3)).toString(16)
  val rot_val_4_1 = peek(dut.io.rotation2Out(4)).toString(16)

  val rotation_result_0 = peek(dut.io.rotationResultsOut(0)).toString(16)
  val rotation_result_1 = peek(dut.io.rotationResultsOut(1)).toString(16)
  val rotation_result_2 = peek(dut.io.rotationResultsOut(2)).toString(16)
  val rotation_result_3 = peek(dut.io.rotationResultsOut(3)).toString(16)
  val rotation_result_4 = peek(dut.io.rotationResultsOut(4)).toString(16)

  println("Results of rotation")
  println(rot_val_0_0 + " | " + rot_val_0_1 + " = " + rotation_result_0)
  println(rot_val_1_0 + " | " + rot_val_1_1 + " = " + rotation_result_1)
  println(rot_val_2_0 + " | " + rot_val_2_1 + " = " + rotation_result_2)
  println(rot_val_3_0 + " | " + rot_val_3_1 + " = " + rotation_result_3)
  println(rot_val_4_0 + " | " + rot_val_4_1 + " = " + rotation_result_4)


  println("Testing out")
  val testingoutval = peek(dut.io.testingOut(2)).toString(16)
  println(testingoutval)

   */
}


class sha3_spec extends FlatSpec with Matchers {
  "THETA" should "pass" in {
    chisel3.iotesters.Driver(() => new Round()) { c => new sha3_tester(c)} should be (true)
  }
}

