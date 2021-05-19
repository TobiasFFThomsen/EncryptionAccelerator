import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class round_tester(dut: Sha3) extends PeekPokeTester(dut)  {

  val stateRegister: Array[Array[BigInt]] = Array.ofDim[BigInt](5, 5)
  System.out.println("State register before the first round:\n")
  printRound("Input", "Verbose")

  poke(dut.io.iota_round, 0.U)

  System.out.println("Round 1\n")

  printRound("Input", "Verbose")

  /*
  for(i <- 0 to 23) {
    System.out.println("ROUND "+i)

    // 1. Set the iota to i
    poke(dut.io.iota_round,i.U)

    // 2. Input the output of the last calculation to the round (r_in and c_in)
    printState("Input", "")

    // 3. Peek at the result (this is supposed to be the result of the first round)
    printState("Output", "Verbose")

    // 4. Store the output of this calculation in some variables (the r_out and c_out)
  }
  */


  // Helper functions
  def printRound(s:String, arg:String):Unit={
    System.out.println("\n\n PRINTING "+s+" OF ROUND")
    val peekState     = Array.ofDim[String](5, 5)
    val thetaOut      = Array.ofDim[String](5, 5)
    val rhoPiOut      = Array.ofDim[String](5, 5)
    val iotaOut       = Array.ofDim[String](5, 5)
    val chiOut        = Array.ofDim[String](5, 5)
    val register_out  = Array.ofDim[String](5, 5)
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
      peekState(3)(4) = peek(dut.io.c_in(10)).toString(16)
      peekState(4)(0) = peek(dut.io.c_in(11)).toString(16)
      peekState(4)(1) = peek(dut.io.c_in(12)).toString(16)
      peekState(4)(2) = peek(dut.io.c_in(13)).toString(16)
      peekState(4)(3) = peek(dut.io.c_in(14)).toString(16)
      peekState(4)(4) = peek(dut.io.c_in(15)).toString(16)

      for(x <- 0 to 4)
        for(y <- 0 to 4)
          register_out(x)(y) = peek(dut.io.register_out(x)(y)).toString(16)

      System.out.println("Register out (Round in)")
      System.out.println("\n")

      for(x <- 0 to 4)
        System.out.println(
          register_out(x)(0)+
            "\t"+register_out(x)(1)+
            "\t"+register_out(x)(2)+
            "\t"+register_out(x)(3)+
            "\t"+register_out(x)(4)
        )
      System.out.println("\n")

    }
    if(s.contentEquals("Output")){

      if(arg.contentEquals("Verbose")){

        for(x <- 0 to 4)
          for(y <- 0 to 4)
            register_out(x)(y) = peek(dut.io.register_out(x)(y)).toString(16)

       for(x <- 0 to 4)
          for(y <- 0 to 4)
            thetaOut(x)(y) = peek(dut.io.theta_out(x)(y)).toString(16)

        for(i <- 0 to 4)
          theta_c(i) = peek(dut.io.theta_c(i)).toString(16)

        for(i <- 0 to 4)
          theta_d(i) = peek(dut.io.theta_d(i)).toString(16)

        for(x <- 0 to 4)
          for(y <- 0 to 4)
            rhoPiOut(x)(y) = peek(dut.io.rhoPi_out(x)(y)).toString(16)

        for(x <- 0 to 4)
          for(y <- 0 to 4)
            chiOut(x)(y) = peek(dut.io.chi_out(x)(y)).toString(16)

        for(x <- 0 to 4) {
          for(y <- 0 to 4) {
            iotaOut(x)(y) = peek(dut.io.rhoPi_out(x)(y)).toString(16)
          }
        iotaOut(0)(0) = peek(dut.io.iota_out).toString(16)
      }

      for(x <- 0 to 4)
        for(y <- 0 to 4)
          peekState(x)(y) = peek(dut.io.round_out(x)(y)).toString(16)
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
   }

  def initStateRegister():Unit={
    System.out.println("test")
    for(x <- 0 to 4)
      for(y <- 0 to 4)
        poke(dut.io.register_in(x)(y),0x0000000000000000L)
    step(1)
  }
}

class round_spec extends FlatSpec with Matchers {
  "sha3" should "pass" in {
    chisel3.iotesters.Driver(() => new Sha3()) { c => new round_tester(c)} should be (true)
  }
}

