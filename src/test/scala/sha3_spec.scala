import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class sha3_tester(dut: Round) extends PeekPokeTester(dut) {
  poke(dut.io.round_in_0_0,0x000008000000000cL)
  poke(dut.io.round_in_0_1,0x0000000000000000L)
  poke(dut.io.round_in_0_2,0x000000000000001aL)
  poke(dut.io.round_in_0_3,0x00000000d4003400L)
  poke(dut.io.round_in_0_4,0x40000d4000000000L)

  poke(dut.io.round_in_1_0,0x0000d00000000000L)
  poke(dut.io.round_in_1_1,0x0001a00001a80000L)
  poke(dut.io.round_in_1_2,0x0000000000001ac0L)
  poke(dut.io.round_in_1_3,0x0000000000008000L)
  poke(dut.io.round_in_1_4,0x0040000000000000L)

  poke(dut.io.round_in_2_0,0x000008000006a000L)
  poke(dut.io.round_in_2_1,0x2000000000000000L)
  poke(dut.io.round_in_2_2,0x0000000000000000L)
  poke(dut.io.round_in_2_3,0x0000000000003400L)
  poke(dut.io.round_in_2_4,0x00000d4000000034L)

  poke(dut.io.round_in_3_0,0x000000000000000dL)
  poke(dut.io.round_in_3_1,0x0001a00000000000L)
  poke(dut.io.round_in_3_2,0x0000000000001a9aL)
  poke(dut.io.round_in_3_3,0x00000000d4008000L)
  poke(dut.io.round_in_3_4,0x4000000000000000L)

  poke(dut.io.round_in_4_0,0x0000d0000006a000L)
  poke(dut.io.round_in_4_1,0x2000000001a80000L)
  poke(dut.io.round_in_4_2,0x0000000000000040L)
  poke(dut.io.round_in_4_3,0x0000000000000000L)
  poke(dut.io.round_in_4_4,0x0040000000000034L)


  poke(dut.io.counter, 1.U)


  var peek_val_0_0 = peek(dut.io.round_in_0_0).toString(16)
  var peek_val_0_1 = peek(dut.io.round_in_0_1).toString(16)
  var peek_val_0_2 = peek(dut.io.round_in_0_2).toString(16)
  var peek_val_0_3 = peek(dut.io.round_in_0_3).toString(16)
  var peek_val_0_4 = peek(dut.io.round_in_0_4).toString(16)
  var peek_val_1_0 = peek(dut.io.round_in_1_0).toString(16)
  var peek_val_1_1 = peek(dut.io.round_in_1_1).toString(16)
  var peek_val_1_2 = peek(dut.io.round_in_1_2).toString(16)
  var peek_val_1_3 = peek(dut.io.round_in_1_3).toString(16)
  var peek_val_1_4 = peek(dut.io.round_in_1_4).toString(16)
  var peek_val_2_0 = peek(dut.io.round_in_2_0).toString(16)
  var peek_val_2_1 = peek(dut.io.round_in_2_1).toString(16)
  var peek_val_2_2 = peek(dut.io.round_in_2_2).toString(16)
  var peek_val_2_3 = peek(dut.io.round_in_2_3).toString(16)
  var peek_val_2_4 = peek(dut.io.round_in_2_4).toString(16)
  var peek_val_3_0 = peek(dut.io.round_in_3_0).toString(16)
  var peek_val_3_1 = peek(dut.io.round_in_3_1).toString(16)
  var peek_val_3_2 = peek(dut.io.round_in_3_2).toString(16)
  var peek_val_3_3 = peek(dut.io.round_in_3_3).toString(16)
  var peek_val_3_4 = peek(dut.io.round_in_3_4).toString(16)
  var peek_val_4_0 = peek(dut.io.round_in_4_0).toString(16)
  var peek_val_4_1 = peek(dut.io.round_in_4_1).toString(16)
  var peek_val_4_2 = peek(dut.io.round_in_4_2).toString(16)
  var peek_val_4_3 = peek(dut.io.round_in_4_3).toString(16)
  var peek_val_4_4 = peek(dut.io.round_in_4_4).toString(16)

  println("State before first round:")


  peek_val_0_0 = peek(dut.io.round_in_0_0).toString(16)
  peek_val_0_1 = peek(dut.io.round_in_0_1).toString(16)
  peek_val_0_2 = peek(dut.io.round_in_0_2).toString(16)
  peek_val_0_3 = peek(dut.io.round_in_0_3).toString(16)
  peek_val_0_4 = peek(dut.io.round_in_0_4).toString(16)
  println(peek_val_0_0+"\t"+
          peek_val_0_1+"\t"+
          peek_val_0_2+"\t"+
          peek_val_0_3+"\t"+
          peek_val_0_4)
  println("\n")
  peek_val_1_0 = peek(dut.io.round_in_1_0).toString(16)
  peek_val_1_1 = peek(dut.io.round_in_1_1).toString(16)
  peek_val_1_2 = peek(dut.io.round_in_1_2).toString(16)
  peek_val_1_3 = peek(dut.io.round_in_1_3).toString(16)
  peek_val_1_4 = peek(dut.io.round_in_1_4).toString(16)
  println(
    peek_val_1_0+"\t"+
    peek_val_1_1+"\t"+
    peek_val_1_2+"\t"+
    peek_val_1_3+"\t"+
    peek_val_1_4)
  println("\n")
  peek_val_2_0 = peek(dut.io.round_in_2_0).toString(16)
  peek_val_2_1 = peek(dut.io.round_in_2_1).toString(16)
  peek_val_2_2 = peek(dut.io.round_in_2_2).toString(16)
  peek_val_2_3 = peek(dut.io.round_in_2_3).toString(16)
  peek_val_2_4 = peek(dut.io.round_in_2_4).toString(16)
  println(
      peek_val_2_0+"\t"+
      peek_val_2_1+"\t"+
      peek_val_2_2+"\t"+
      peek_val_2_3+"\t"+
      peek_val_2_4)
  println("\n")
  peek_val_3_0 = peek(dut.io.round_in_3_0).toString(16)
  peek_val_3_1 = peek(dut.io.round_in_3_1).toString(16)
  peek_val_3_2 = peek(dut.io.round_in_3_2).toString(16)
  peek_val_3_3 = peek(dut.io.round_in_3_3).toString(16)
  peek_val_3_4 = peek(dut.io.round_in_3_4).toString(16)
  println(
      peek_val_3_0+"\t"+
      peek_val_3_1+"\t"+
      peek_val_3_2+"\t"+
      peek_val_3_3+"\t"+
      peek_val_3_4)
  println("\n")
  peek_val_4_0 = peek(dut.io.round_in_4_0).toString(16)
  peek_val_4_1 = peek(dut.io.round_in_4_1).toString(16)
  peek_val_4_2 = peek(dut.io.round_in_4_2).toString(16)
  peek_val_4_3 = peek(dut.io.round_in_4_3).toString(16)
  peek_val_4_4 = peek(dut.io.round_in_4_4).toString(16)
  println(
      peek_val_4_0+"\t"+
      peek_val_4_1+"\t"+
      peek_val_4_2+"\t"+
      peek_val_4_3+"\t"+
      peek_val_4_4)

  println("\n")
  println("theta")
  peek_val_0_0 = peek(dut.io.theta_out_0_0).toString(16)
  peek_val_0_1 = peek(dut.io.theta_out_0_1).toString(16)
  peek_val_0_2 = peek(dut.io.theta_out_0_2).toString(16)
  peek_val_0_3 = peek(dut.io.theta_out_0_3).toString(16)
  peek_val_0_4 = peek(dut.io.theta_out_0_4).toString(16)
  println(peek_val_0_0+"\t"+
    peek_val_0_1+"\t"+
    peek_val_0_2+"\t"+
    peek_val_0_3+"\t"+
    peek_val_0_4)
  println("\n")
  peek_val_1_0 = peek(dut.io.theta_out_1_0).toString(16)
  peek_val_1_1 = peek(dut.io.theta_out_1_1).toString(16)
  peek_val_1_2 = peek(dut.io.theta_out_1_2).toString(16)
  peek_val_1_3 = peek(dut.io.theta_out_1_3).toString(16)
  peek_val_1_4 = peek(dut.io.theta_out_1_4).toString(16)
  println(
    peek_val_1_0+"\t"+
      peek_val_1_1+"\t"+
      peek_val_1_2+"\t"+
      peek_val_1_3+"\t"+
      peek_val_1_4)
  println("\n")
  peek_val_2_0 = peek(dut.io.theta_out_2_0).toString(16)
  peek_val_2_1 = peek(dut.io.theta_out_2_1).toString(16)
  peek_val_2_2 = peek(dut.io.theta_out_2_2).toString(16)
  peek_val_2_3 = peek(dut.io.theta_out_2_3).toString(16)
  peek_val_2_4 = peek(dut.io.theta_out_2_4).toString(16)
  println(
    peek_val_2_0+"\t"+
      peek_val_2_1+"\t"+
      peek_val_2_2+"\t"+
      peek_val_2_3+"\t"+
      peek_val_2_4)
  println("\n")
  peek_val_3_0 = peek(dut.io.theta_out_3_0).toString(16)
  peek_val_3_1 = peek(dut.io.theta_out_3_1).toString(16)
  peek_val_3_2 = peek(dut.io.theta_out_3_2).toString(16)
  peek_val_3_3 = peek(dut.io.theta_out_3_3).toString(16)
  peek_val_3_4 = peek(dut.io.theta_out_3_4).toString(16)
  println(
    peek_val_3_0+"\t"+
      peek_val_3_1+"\t"+
      peek_val_3_2+"\t"+
      peek_val_3_3+"\t"+
      peek_val_3_4)
  println("\n")
  peek_val_4_0 = peek(dut.io.theta_out_4_0).toString(16)
  peek_val_4_1 = peek(dut.io.theta_out_4_1).toString(16)
  peek_val_4_2 = peek(dut.io.theta_out_4_2).toString(16)
  peek_val_4_3 = peek(dut.io.theta_out_4_3).toString(16)
  peek_val_4_4 = peek(dut.io.theta_out_4_4).toString(16)
  println(
    peek_val_4_0+"\t"+
      peek_val_4_1+"\t"+
      peek_val_4_2+"\t"+
      peek_val_4_3+"\t"+
      peek_val_4_4)
  println("\n")

  println("rhoPi")
  peek_val_0_0 = peek(dut.io.rhoPi_out_0_0).toString(16)
  peek_val_0_1 = peek(dut.io.rhoPi_out_0_1).toString(16)
  peek_val_0_2 = peek(dut.io.rhoPi_out_0_2).toString(16)
  peek_val_0_3 = peek(dut.io.rhoPi_out_0_3).toString(16)
  peek_val_0_4 = peek(dut.io.rhoPi_out_0_4).toString(16)
  println(peek_val_0_0+"\t"+
    peek_val_0_1+"\t"+
    peek_val_0_2+"\t"+
    peek_val_0_3+"\t"+
    peek_val_0_4)
  println("\n")
  peek_val_1_0 = peek(dut.io.rhoPi_out_1_0).toString(16)
  peek_val_1_1 = peek(dut.io.rhoPi_out_1_1).toString(16)
  peek_val_1_2 = peek(dut.io.rhoPi_out_1_2).toString(16)
  peek_val_1_3 = peek(dut.io.rhoPi_out_1_3).toString(16)
  peek_val_1_4 = peek(dut.io.rhoPi_out_1_4).toString(16)
  println(
    peek_val_1_0+"\t"+
      peek_val_1_1+"\t"+
      peek_val_1_2+"\t"+
      peek_val_1_3+"\t"+
      peek_val_1_4)
  println("\n")
  peek_val_2_0 = peek(dut.io.rhoPi_out_2_0).toString(16)
  peek_val_2_1 = peek(dut.io.rhoPi_out_2_1).toString(16)
  peek_val_2_2 = peek(dut.io.rhoPi_out_2_2).toString(16)
  peek_val_2_3 = peek(dut.io.rhoPi_out_2_3).toString(16)
  peek_val_2_4 = peek(dut.io.rhoPi_out_2_4).toString(16)
  println(
    peek_val_2_0+"\t"+
      peek_val_2_1+"\t"+
      peek_val_2_2+"\t"+
      peek_val_2_3+"\t"+
      peek_val_2_4)
  println("\n")
  peek_val_3_0 = peek(dut.io.rhoPi_out_3_0).toString(16)
  peek_val_3_1 = peek(dut.io.rhoPi_out_3_1).toString(16)
  peek_val_3_2 = peek(dut.io.rhoPi_out_3_2).toString(16)
  peek_val_3_3 = peek(dut.io.rhoPi_out_3_3).toString(16)
  peek_val_3_4 = peek(dut.io.rhoPi_out_3_4).toString(16)
  println(
    peek_val_3_0+"\t"+
      peek_val_3_1+"\t"+
      peek_val_3_2+"\t"+
      peek_val_3_3+"\t"+
      peek_val_3_4)
  println("\n")
  peek_val_4_0 = peek(dut.io.rhoPi_out_4_0).toString(16)
  peek_val_4_1 = peek(dut.io.rhoPi_out_4_1).toString(16)
  peek_val_4_2 = peek(dut.io.rhoPi_out_4_2).toString(16)
  peek_val_4_3 = peek(dut.io.rhoPi_out_4_3).toString(16)
  peek_val_4_4 = peek(dut.io.rhoPi_out_4_4).toString(16)
  println(
    peek_val_4_0+"\t"+
      peek_val_4_1+"\t"+
      peek_val_4_2+"\t"+
      peek_val_4_3+"\t"+
      peek_val_4_4)
  println("\n")

  println("chi")
  peek_val_0_0 = peek(dut.io.chi_out_0_0).toString(16)
  peek_val_0_1 = peek(dut.io.chi_out_0_1).toString(16)
  peek_val_0_2 = peek(dut.io.chi_out_0_2).toString(16)
  peek_val_0_3 = peek(dut.io.chi_out_0_3).toString(16)
  peek_val_0_4 = peek(dut.io.chi_out_0_4).toString(16)
  println(peek_val_0_0+"\t"+
    peek_val_0_1+"\t"+
    peek_val_0_2+"\t"+
    peek_val_0_3+"\t"+
    peek_val_0_4)
  println("\n")
  peek_val_1_0 = peek(dut.io.chi_out_1_0).toString(16)
  peek_val_1_1 = peek(dut.io.chi_out_1_1).toString(16)
  peek_val_1_2 = peek(dut.io.chi_out_1_2).toString(16)
  peek_val_1_3 = peek(dut.io.chi_out_1_3).toString(16)
  peek_val_1_4 = peek(dut.io.chi_out_1_4).toString(16)
  println(
    peek_val_1_0+"\t"+
      peek_val_1_1+"\t"+
      peek_val_1_2+"\t"+
      peek_val_1_3+"\t"+
      peek_val_1_4)
  println("\n")
  peek_val_2_0 = peek(dut.io.chi_out_2_0).toString(16)
  peek_val_2_1 = peek(dut.io.chi_out_2_1).toString(16)
  peek_val_2_2 = peek(dut.io.chi_out_2_2).toString(16)
  peek_val_2_3 = peek(dut.io.chi_out_2_3).toString(16)
  peek_val_2_4 = peek(dut.io.chi_out_2_4).toString(16)
  println(
    peek_val_2_0+"\t"+
      peek_val_2_1+"\t"+
      peek_val_2_2+"\t"+
      peek_val_2_3+"\t"+
      peek_val_2_4)

  peek_val_3_0 = peek(dut.io.chi_out_3_0).toString(16)
  peek_val_3_1 = peek(dut.io.chi_out_3_1).toString(16)
  peek_val_3_2 = peek(dut.io.chi_out_3_2).toString(16)
  peek_val_3_3 = peek(dut.io.chi_out_3_3).toString(16)
  peek_val_3_4 = peek(dut.io.chi_out_3_4).toString(16)
  println(
    peek_val_3_0+"\t"+
      peek_val_3_1+"\t"+
      peek_val_3_2+"\t"+
      peek_val_3_3+"\t"+
      peek_val_3_4)

  peek_val_4_0 = peek(dut.io.chi_out_4_0).toString(16)
  peek_val_4_1 = peek(dut.io.chi_out_4_1).toString(16)
  peek_val_4_2 = peek(dut.io.chi_out_4_2).toString(16)
  peek_val_4_3 = peek(dut.io.chi_out_4_3).toString(16)
  peek_val_4_4 = peek(dut.io.chi_out_4_4).toString(16)
  println(
    peek_val_4_0+"\t"+
      peek_val_4_1+"\t"+
      peek_val_4_2+"\t"+
      peek_val_4_3+"\t"+
      peek_val_4_4)
  println("\n")
  println("iota" + peek(dut.io.iota_out).toString(16))
  println("\n")


  println("done")
  val poke_val_0_0 = peek(dut.io.round_out_0_0).toString(16)
  val poke_val_0_1 = peek(dut.io.round_out_0_1).toString(16)
  val poke_val_0_2 = peek(dut.io.round_out_0_2).toString(16)
  val poke_val_0_3 = peek(dut.io.round_out_0_3).toString(16)
  val poke_val_0_4 = peek(dut.io.round_out_0_4).toString(16)
  println(
    poke_val_0_0+"\t"+
    poke_val_0_1+"\t"+
    poke_val_0_2+"\t"+
    poke_val_0_3+"\t"+
    poke_val_0_4)

  val poke_val_1_0 = peek(dut.io.round_out_1_0).toString(16)
  val poke_val_1_1 = peek(dut.io.round_out_1_1).toString(16)
  val poke_val_1_2 = peek(dut.io.round_out_1_2).toString(16)
  val poke_val_1_3 = peek(dut.io.round_out_1_3).toString(16)
  val poke_val_1_4 = peek(dut.io.round_out_1_4).toString(16)
  println(
      poke_val_1_0+"\t"+
      poke_val_1_1+"\t"+
      poke_val_1_2+"\t"+
      poke_val_1_3+"\t"+
      poke_val_1_4)

  val poke_val_2_0 = peek(dut.io.round_out_2_0).toString(16)
  val poke_val_2_1 = peek(dut.io.round_out_2_1).toString(16)
  val poke_val_2_2 = peek(dut.io.round_out_2_2).toString(16)
  val poke_val_2_3 = peek(dut.io.round_out_2_3).toString(16)
  val poke_val_2_4 = peek(dut.io.round_out_2_4).toString(16)
  println(
      poke_val_2_0+"\t"+
      poke_val_2_1+"\t"+
      poke_val_2_2+"\t"+
      poke_val_2_3+"\t"+
      poke_val_2_4)

  val poke_val_3_0 = peek(dut.io.round_out_3_0).toString(16)
  val poke_val_3_1 = peek(dut.io.round_out_3_1).toString(16)
  val poke_val_3_2 = peek(dut.io.round_out_3_2).toString(16)
  val poke_val_3_3 = peek(dut.io.round_out_3_3).toString(16)
  val poke_val_3_4 = peek(dut.io.round_out_3_4).toString(16)
  println(
      poke_val_3_0+"\t"+
      poke_val_3_1+"\t"+
      poke_val_3_2+"\t"+
      poke_val_3_3+"\t"+
      poke_val_3_4)

  val poke_val_4_0 = peek(dut.io.round_out_4_0).toString(16)
  val poke_val_4_1 = peek(dut.io.round_out_4_1).toString(16)
  val poke_val_4_2 = peek(dut.io.round_out_4_2).toString(16)
  val poke_val_4_3 = peek(dut.io.round_out_4_3).toString(16)
  val poke_val_4_4 = peek(dut.io.round_out_4_4).toString(16)
  println(
      poke_val_4_0+"\t"+
      poke_val_4_1+"\t"+
      poke_val_4_2+"\t"+
      poke_val_4_3+"\t"+
      poke_val_4_4)



  /*
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

*/
}

class sha3_spec extends FlatSpec with Matchers {
  "THETA" should "pass" in {
    chisel3.iotesters.Driver(() => new Round()) { c => new sha3_tester(c)} should be (true)
  }
}

