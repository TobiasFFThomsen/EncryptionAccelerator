import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class round_tester(dut: Sha3) extends PeekPokeTester(dut)  {

  var pokeState = Array.ofDim[BigInt](5, 5)

  // 0. Set the iota_round to 0
  poke(dut.io.iota_round,0.U)

  // 1. Input the first r bits
  poke(dut.io.r_in(0),0x000000000000000dL)

  for(i <- 1 to 7)
    poke(dut.io.r_in(i),0x000000000000000L)

  poke(dut.io.r_in(8),0x8000000000000000L)

  // 2. Input the c's to be zero
  for(i <- 0 to 15)
    poke(dut.io.c_in(i),0x000000000000000L)

  // 3. Peek at the input
  printState("Input", "")

  // 4. Peek at the result (this is supposed to be the result of the first round)
  printState("Output", "Verbose")

  // 5. Store the output of this calculation in some variables (the r_out and c_out)
  storeState()

  // 6. Set the iota to 1
  poke(dut.io.iota_round,1.U)

  // 7. Input the output of the last calculation to the round (r_in and c_in)
  loadState()
  printState("Input", "")

  // 8. Peek at the result (this is supposed to be the result of the second round).
  printState("Output", "Verbose")


  // Helper functions
  def printState(s:String, arg:String):Unit={
    System.out.println("\n\n PRINTING "+s+" OF ROUND")
    val peekState = Array.ofDim[String](5, 5)
    val thetaOut  = Array.ofDim[String](5, 5)
    val rhoPiOut  = Array.ofDim[String](5, 5)
    val iotaOut   = Array.ofDim[String](5, 5)
    val chiOut    = Array.ofDim[String](5, 5)
    val theta_d   = Array.ofDim[String](5)
    val theta_c   = Array.ofDim[String](5)

    if(s.contentEquals("Input")){

      peekState(0)(0) = peek(dut.io.r_in(0)).toString(16)
      peekState(0)(1) = peek(dut.io.r_in(1)).toString(16)
      peekState(0)(2) = peek(dut.io.r_in(2)).toString(16)
      peekState(0)(3) = peek(dut.io.r_in(3)).toString(16)
      peekState(0)(4) = peek(dut.io.r_in(4)).toString(16)
      peekState(1)(0) = peek(dut.io.r_in(5)).toString(16)
      peekState(1)(1) = peek(dut.io.r_in(6)).toString(16)
      peekState(1)(2) = peek(dut.io.r_in(7)).toString(16)
      peekState(1)(3) = peek(dut.io.r_in(8)).toString(16)

      peekState(1)(4) = peek(dut.io.c_in(0)).toString(16)
      peekState(2)(0) = peek(dut.io.c_in(1)).toString(16)
      peekState(2)(1) = peek(dut.io.c_in(2)).toString(16)
      peekState(2)(2) = peek(dut.io.c_in(3)).toString(16)
      peekState(2)(3) = peek(dut.io.c_in(4)).toString(16)
      peekState(2)(4) = peek(dut.io.c_in(5)).toString(16)
      peekState(3)(0) = peek(dut.io.c_in(6)).toString(16)
      peekState(3)(1) = peek(dut.io.c_in(7)).toString(16)
      peekState(3)(2) = peek(dut.io.c_in(8)).toString(16)
      peekState(3)(3) = peek(dut.io.c_in(9)).toString(16)
      peekState(3)(4) = peek(dut.io.c_in(10)).toString(16) //error
      peekState(4)(0) = peek(dut.io.c_in(11)).toString(16)
      peekState(4)(1) = peek(dut.io.c_in(12)).toString(16)
      peekState(4)(2) = peek(dut.io.c_in(13)).toString(16)
      peekState(4)(3) = peek(dut.io.c_in(14)).toString(16)
      peekState(4)(4) = peek(dut.io.c_in(15)).toString(16)
    }
    if(s.contentEquals("Output")){

      if(arg.contentEquals("Verbose")){

        for(x <- 0 to 4) {
          for(y <- 0 to 4) {
            thetaOut(x)(y) = peek(dut.io.theta_out(x)(y)).toString(16)
          }
        }

        for(i <- 0 to 4)
          theta_c(i) = peek(dut.io.theta_c(i)).toString(16)

        for(i <- 0 to 4)
          theta_d(i) = peek(dut.io.theta_d(i)).toString(16)

        for(x <- 0 to 4) {
          for(y <- 0 to 4) {
            rhoPiOut(x)(y) = peek(dut.io.rhoPi_out(x)(y)).toString(16)
          }
        }

        for(x <- 0 to 4) {
          for(y <- 0 to 4) {
            chiOut(x)(y) = peek(dut.io.chi_out(x)(y)).toString(16)
          }
        }

        for(x <- 0 to 4) {
          for(y <- 0 to 4) {
            iotaOut(x)(y) = peek(dut.io.rhoPi_out(x)(y)).toString(16)
          }
        }
        iotaOut(0)(0) = peek(dut.io.iota_out).toString(16)
      }
      peekState(0)(0) = peek(dut.io.r_out(0)).toString(16)
      peekState(0)(1) = peek(dut.io.r_out(1)).toString(16)
      peekState(0)(2) = peek(dut.io.r_out(2)).toString(16)
      peekState(0)(3) = peek(dut.io.r_out(3)).toString(16)
      peekState(0)(4) = peek(dut.io.r_out(4)).toString(16)
      peekState(1)(0) = peek(dut.io.r_out(5)).toString(16)
      peekState(1)(1) = peek(dut.io.r_out(6)).toString(16)
      peekState(1)(2) = peek(dut.io.r_out(7)).toString(16)
      peekState(1)(3) = peek(dut.io.r_out(8)).toString(16)

      peekState(1)(4) = peek(dut.io.c_out(0)).toString(16)

      peekState(2)(0) = peek(dut.io.c_out(1)).toString(16)
      peekState(2)(1) = peek(dut.io.c_out(2)).toString(16)
      peekState(2)(2) = peek(dut.io.c_out(3)).toString(16)
      peekState(2)(3) = peek(dut.io.c_out(4)).toString(16)
      peekState(2)(4) = peek(dut.io.c_out(5)).toString(16)

      peekState(3)(0) = peek(dut.io.c_out(6)).toString(16)
      peekState(3)(1) = peek(dut.io.c_out(7)).toString(16)
      peekState(3)(2) = peek(dut.io.c_out(8)).toString(16)
      peekState(3)(3) = peek(dut.io.c_out(9)).toString(16)
      peekState(3)(4) = peek(dut.io.c_out(10)).toString(16)

      peekState(4)(0) = peek(dut.io.c_out(11)).toString(16)
      peekState(4)(1) = peek(dut.io.c_out(12)).toString(16)
      peekState(4)(2) = peek(dut.io.c_out(13)).toString(16)
      peekState(4)(3) = peek(dut.io.c_out(14)).toString(16)
      peekState(4)(4) = peek(dut.io.c_out(15)).toString(16)
    }

    if(arg.contentEquals("Verbose")){
      System.out.println("\nTheta_C")
      System.out.println("\n")
      System.out.println(
        theta_c(0)+
        "\t"+ theta_c(1)+
        "\t"+ theta_c(2)+
        "\t"+ theta_c(3)+
        "\t"+ theta_c(4)
      )
      System.out.println("\n")
      System.out.println("Theta_D")
      System.out.println("\n")
      System.out.println(
        theta_d(0)+
          "\t"+ theta_d(1)+
          "\t"+ theta_d(2)+
          "\t"+ theta_d(3)+
          "\t"+ theta_d(4)
      )
      System.out.println("\n")

      System.out.println("Theta state")
      System.out.println("\n")
      for(x <- 0 to 4)
        System.out.println(
          thetaOut(x)(0)+
          "\t"+thetaOut(x)(1)+
          "\t"+thetaOut(x)(2)+
          "\t"+thetaOut(x)(3)+
          "\t"+thetaOut(x)(4)
        )
      System.out.println("\n")

      System.out.println("Rho/Pi state")
      System.out.println("\n")
      for(x <- 0 to 4)
        System.out.println(
          rhoPiOut(x)(0)+
          "\t"+rhoPiOut(x)(1)+
          "\t"+rhoPiOut(x)(2)+
          "\t"+rhoPiOut(x)(3)+
          "\t"+rhoPiOut(x)(4)
        )
      System.out.println("\n")

      System.out.println("Chi state")
      System.out.println("\n")

      for(x <- 0 to 4)
        System.out.println(
          chiOut(x)(0)+
          "\t"+chiOut(x)(1)+
          "\t"+chiOut(x)(2)+
          "\t"+chiOut(x)(3)+
          "\t"+chiOut(x)(4)
        )
      System.out.println("\n")

      System.out.println("Iota state")
      System.out.println("\n")

      for(x <- 0 to 4)
        System.out.println(
          iotaOut(x)(0)+
          "\t"+iotaOut(x)(1)+
          "\t"+iotaOut(x)(2)+
          "\t"+iotaOut(x)(3)+
          "\t"+iotaOut(x)(4)
        )
    }
    System.out.println("\n")

    System.out.println("Round")

    System.out.println("\n")

    for(y <- 0 to 4)
           System.out.println(peekState(0)(y)+
          "\t"+peekState(1)(y)+
          "\t"+peekState(2)(y)+
          "\t"+peekState(3)(y)+
          "\t"+peekState(4)(y)
        )
  }

  def storeState():Unit={
    pokeState(0)(0) = peek(dut.io.r_out(0))
    pokeState(0)(1) = peek(dut.io.r_out(1))
    pokeState(0)(2) = peek(dut.io.r_out(2))
    pokeState(0)(3) = peek(dut.io.r_out(3))
    pokeState(0)(4) = peek(dut.io.r_out(4))
    pokeState(1)(0) = peek(dut.io.r_out(5))
    pokeState(1)(1) = peek(dut.io.r_out(6))
    pokeState(1)(2) = peek(dut.io.r_out(7))
    pokeState(1)(3) = peek(dut.io.r_out(8))

    pokeState(1)(4) = peek(dut.io.c_out(0))
    pokeState(2)(0) = peek(dut.io.c_out(1))
    pokeState(2)(1) = peek(dut.io.c_out(2))
    pokeState(2)(2) = peek(dut.io.c_out(3))
    pokeState(2)(3) = peek(dut.io.c_out(4))
    pokeState(2)(4) = peek(dut.io.c_out(5))
    pokeState(3)(0) = peek(dut.io.c_out(6))
    pokeState(3)(1) = peek(dut.io.c_out(7))
    pokeState(3)(2) = peek(dut.io.c_out(8))
    pokeState(3)(3) = peek(dut.io.c_out(9))
    pokeState(3)(4) = peek(dut.io.c_out(10))
    pokeState(4)(0) = peek(dut.io.c_out(11))
    pokeState(4)(1) = peek(dut.io.c_out(12))
    pokeState(4)(2) = peek(dut.io.c_out(13))
    pokeState(4)(3) = peek(dut.io.c_out(14))
    pokeState(4)(4) = peek(dut.io.c_out(15))
  }

  def loadState():Unit={
    poke(dut.io.r_in(0),pokeState(0)(0))
    poke(dut.io.r_in(1),pokeState(0)(1))
    poke(dut.io.r_in(2),pokeState(0)(2))
    poke(dut.io.r_in(3),pokeState(0)(3))
    poke(dut.io.r_in(4),pokeState(0)(4))
    poke(dut.io.r_in(5),pokeState(1)(0))
    poke(dut.io.r_in(6),pokeState(1)(1))
    poke(dut.io.r_in(7),pokeState(1)(2))
    poke(dut.io.r_in(8),pokeState(1)(3))

    poke(dut.io.c_in(0), pokeState(1)(4))
    poke(dut.io.c_in(1), pokeState(2)(0))
    poke(dut.io.c_in(2), pokeState(2)(1))
    poke(dut.io.c_in(3), pokeState(2)(2))
    poke(dut.io.c_in(4), pokeState(2)(3))
    poke(dut.io.c_in(5), pokeState(2)(4))
    poke(dut.io.c_in(6), pokeState(3)(0))
    poke(dut.io.c_in(7), pokeState(3)(1))
    poke(dut.io.c_in(8), pokeState(3)(2))
    poke(dut.io.c_in(9), pokeState(3)(3))
    poke(dut.io.c_in(10), pokeState(3)(4))
    poke(dut.io.c_in(11), pokeState(4)(0))
    poke(dut.io.c_in(12), pokeState(4)(1))
    poke(dut.io.c_in(13), pokeState(4)(2))
    poke(dut.io.c_in(14), pokeState(4)(3))
    poke(dut.io.c_in(15), pokeState(4)(4))
  }
}

class round_spec extends FlatSpec with Matchers {
  "sha3" should "pass" in {
    chisel3.iotesters.Driver(() => new Sha3()) { c => new round_tester(c)} should be (true)
  }
}

