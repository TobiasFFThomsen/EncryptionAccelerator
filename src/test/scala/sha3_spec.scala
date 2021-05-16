import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class sha3_tester(dut: Round) extends PeekPokeTester(dut) {

  for(x <- 0 to 4)
    for(y <- 0 to 4)
      poke(dut.io.round_in(x)(y),0x000000000000000L)

    poke(dut.io.round_in(0)(0),0x000000000000000dL)
    poke(dut.io.round_in(3)(1),0x8000000000000000L)


  println("State before first round:")
  for(x <- 0 to 4) {
    val peek_val_1 = peek(dut.io.round_in(x)(0)).toString(16)
    val peek_val_2 = peek(dut.io.round_in(x)(1)).toString(16)
    val peek_val_3 = peek(dut.io.round_in(x)(2)).toString(16)
    val peek_val_4 = peek(dut.io.round_in(x)(3)).toString(16)
    val peek_val_5 = peek(dut.io.round_in(x)(4)).toString(16)
    println(peek_val_1+"\t"+peek_val_2+"\t"+peek_val_3+"\t"+peek_val_4+"\t"+peek_val_5)
  }

  println("theta state after first round:")
  for(x <- 0 to 4) {
    val theta_peek_val_1 = peek(dut.io.R_theta_out(x)(0)).toString(16)
    val theta_peek_val_2 = peek(dut.io.R_theta_out(x)(1)).toString(16)
    val theta_peek_val_3 = peek(dut.io.R_theta_out(x)(2)).toString(16)
    val theta_peek_val_4 = peek(dut.io.R_theta_out(x)(3)).toString(16)
    val theta_peek_val_5 = peek(dut.io.R_theta_out(x)(4)).toString(16)
    println(theta_peek_val_1+"\t"+theta_peek_val_2+"\t"+theta_peek_val_3+"\t"+theta_peek_val_4+"\t"+theta_peek_val_5)
  }

  println("rho and pi state after first round:")
  for(x <- 0 to 4) {
    val rho_peek_val_1 = peek(dut.io.R_rhoPi_out(x)(0)).toString(16)
    val rho_peek_val_2 = peek(dut.io.R_rhoPi_out(x)(1)).toString(16)
    val rho_peek_val_3 = peek(dut.io.R_rhoPi_out(x)(2)).toString(16)
    val rho_peek_val_4 = peek(dut.io.R_rhoPi_out(x)(3)).toString(16)
    val rho_peek_val_5 = peek(dut.io.R_rhoPi_out(x)(4)).toString(16)
    println(rho_peek_val_1+"\t"+rho_peek_val_2+"\t"+rho_peek_val_3+"\t"+rho_peek_val_4+"\t"+rho_peek_val_5)
  }

  println("chi state after first round:")
  for(x <- 0 to 4) {
    val chi_peek_val_1 = peek(dut.io.R_chi_out(x)(0)).toString(16)
    val chi_peek_val_2 = peek(dut.io.R_chi_out(x)(1)).toString(16)
    val chi_peek_val_3 = peek(dut.io.R_chi_out(x)(2)).toString(16)
    val chi_peek_val_4 = peek(dut.io.R_chi_out(x)(3)).toString(16)
    val chi_peek_val_5 = peek(dut.io.R_chi_out(x)(4)).toString(16)
    println(chi_peek_val_1+"\t"+chi_peek_val_2+"\t"+chi_peek_val_3+"\t"+chi_peek_val_4+"\t"+chi_peek_val_5)
  }

  println("iota state after first round:")
  val iota_peek_val = peek(dut.io.R_iota_out).toString(16)
  println(iota_peek_val)

  println("Round 1/24:")
  for(x <- 0 to 4) {
    val out_peek_val_1 = peek(dut.io.round_out(x)(0)).toString(16)
    val out_peek_val_2 = peek(dut.io.round_out(x)(1)).toString(16)
    val out_peek_val_3 = peek(dut.io.round_out(x)(2)).toString(16)
    val out_peek_val_4 = peek(dut.io.round_out(x)(3)).toString(16)
    val out_peek_val_5 = peek(dut.io.round_out(x)(4)).toString(16)
    println(out_peek_val_1+"\t"+out_peek_val_2+"\t"+out_peek_val_3+"\t"+out_peek_val_4+"\t"+out_peek_val_5)
  }

}


class sha3_spec extends FlatSpec with Matchers {
  "THETA" should "pass" in {
    chisel3.iotesters.Driver(() => new Round()) { c => new sha3_tester(c)} should be (true)
  }
}

