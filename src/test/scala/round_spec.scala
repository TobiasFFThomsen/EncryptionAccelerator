import chisel3._
import chisel3.iotesters.PeekPokeTester
import org.scalatest._

class round_tester(dut: Sha3) extends PeekPokeTester(dut)  {

  var IOBuffer:Array[BigInt] = new Array[BigInt](9)

  ///////////////////////////INIT///////////////////////////////////
  System.out.println("Initializing the input buffer...\n")
  System.out.println("\n")
  initIOBuffer()

  System.out.println("Setting the buffer_ready signal to TRUE...\n")
  System.out.println("\n")
  poke(dut.io.buffer_ready, true.B)

  System.out.println("round 0")
  System.out.println("\n")
  printInputToRound()

  for(i <- 0 to 23){
    System.out.println("tick")
    System.out.println("\n")
    step(1)

    System.out.println("round "+i)
    System.out.println("\n")
    printInputToRound()
    printRoundInternals()
  }





  // Helper functions
  def printInputToRound():Unit={
    val round_in      = Array.ofDim[String](5, 5)
    val register_out  = Array.ofDim[String](5, 5)
    val iota_xor_val  = peek(dut.io.iota_xor_val_out).toString(16)
    val iota_round    = peek(dut.io.iota_round).toString(16)

    System.out.println("iota round " +iota_round+ " iota xor val out "+iota_xor_val)
    //////////REGISTER OUT////////////
    System.out.println("Register OUT")

    // Get the string value of the register out signal
    for(x <- 0 to 4)
      for(y <- 0 to 4)
        register_out(x)(y) = peek(dut.io.register_out(x)(y)).toString(16)

    // Print the value of the output of the register
    for(x <- 0 to 4)
      System.out.println(
        register_out(x)(0)+
          "\t"+register_out(x)(1)+
          "\t"+register_out(x)(2)+
          "\t"+register_out(x)(3)+
          "\t"+register_out(x)(4)
      )
    System.out.println("\n")

    //////////ROUND IN////////////
    for(x <- 0 to 4)
      for(y <- 0 to 4)
        round_in(x)(y) = peek(dut.io.round_in(x)(y)).toString(16)

    // Print the value of the input of the register
    System.out.println("Round IN")
    for(x <- 0 to 4)
      System.out.println(
        round_in(x)(0)+
          "\t"+round_in(x)(1)+
          "\t"+round_in(x)(2)+
          "\t"+round_in(x)(3)+
          "\t"+round_in(x)(4)
      )
    System.out.println("\n")
  }

  def printRoundInternals():Unit={

    val round_out     = Array.ofDim[String](5, 5)
    val register_out  = Array.ofDim[String](5, 5)
    val thetaOut      = Array.ofDim[String](5, 5)
    val rhoPiOut      = Array.ofDim[String](5, 5)
    val iotaOut       = Array.ofDim[String](5, 5)
    val chiOut        = Array.ofDim[String](5, 5)
    val theta_d       = Array.ofDim[String](5)
    val theta_c       = Array.ofDim[String](5)

    for(x <- 0 to 4)
      for(y <- 0 to 4)
        register_out(x)(y) = peek(dut.io.register_out(y)(x)).toString(16)

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

    for(x <- 0 to 4)
      for(y <- 0 to 4)
        iotaOut(x)(y) = peek(dut.io.chi_out(x)(y)).toString(16)
    iotaOut(0)(0) = peek(dut.io.iota_out).toString(16)

    for(x <- 0 to 4)
      for(y <- 0 to 4)
        round_out(x)(y) = peek(dut.io.round_out(y)(x)).toString(16)

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
    System.out.println("\n")

    System.out.println("Output from round")
    System.out.println("\n")
    for(y <- 0 to 4)
           System.out.println(round_out(0)(y)+
          "\t"+round_out(1)(y)+
          "\t"+round_out(2)(y)+
          "\t"+round_out(3)(y)+
          "\t"+round_out(4)(y)
        )
   }

  def initIOBuffer():Unit={
    poke(dut.io.r_in(0),0x000000000000000dL)

    for(i <- 1 to 7)
      poke(dut.io.r_in(i),0x0000000000000000L)

    poke(dut.io.r_in(8),0x8000000000000000L)
  }
}

class round_spec extends FlatSpec with Matchers {
  "sha3" should "pass" in {
    chisel3.iotesters.Driver(() => new Sha3()) { c => new round_tester(c)} should be (true)
  }
}

