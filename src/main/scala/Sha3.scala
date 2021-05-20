import chisel3._

class Sha3 extends Module {
  val io            = IO( new Bundle {

    val iota_round   = Input(UInt(64.W))
    val r_in         = Input(Vec(9, UInt(64.W)))
    val c_in         = Input(Vec(16,UInt(64.W)))
    val buffer_ready = Input(Bool())

    // For testing:
    val round_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_d   = Output(Vec(5,UInt(64.W)))
    val theta_c   = Output(Vec(5,UInt(64.W)))
    val rhoPi_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val chi_out   = Output(Vec(5,Vec(5,UInt(64.W))))
    val iota_out  = Output(UInt(64.W))
    val round_in  = Output(Vec(5,Vec(5,UInt(64.W))))
    //val register_in   = Input(Vec(5,Vec(5,UInt(64.W))))
    val register_out  = Output(Vec(5,Vec(5,UInt(64.W))))

  })

  // Instantiating the Round module
  val round    = Module(new Round())

  // Initializing the state register
  val stateReg = RegInit(VecInit(Seq.fill(5)(VecInit(Seq.fill(5)(0.U(64.W))))))

  // Initializing the counter register


  // Signals for testing
  io.theta_d      := round.io.R_theta_d_out
  io.theta_c      := round.io.R_theta_c_out
  io.theta_out    := round.io.R_theta_out
  io.rhoPi_out    := round.io.R_rhoPi_out
  io.chi_out      := round.io.R_chi_out
  io.iota_out     := round.io.R_iota_out
  io.round_in     := round.io.round_in
  io.register_out := stateReg
  /*
        ALSO FOR TESTING:
         For some reason we need to reverse the rows and columns.
   */

  for(x <- 0 to 4){
    for(y <- 0 to 4){
      io.round_out(x)(y) := round.io.round_out(x)(y)
    }
  }


  // The iota round tells the iota module what number in the table it should xor with.
  round.io.R_iota_round := io.iota_round

  // Connecting the state register.
  stateReg            := round.io.round_out
  round.io.round_in   := stateReg

  // Rate (r) =  9 * 64 = 576 bits.
  when(io.buffer_ready){
    round.io.round_in(0)(0) := io.r_in(0)^stateReg(0)(0)
    round.io.round_in(1)(0) := io.r_in(1)^stateReg(1)(0)
    round.io.round_in(2)(0) := io.r_in(2)^stateReg(2)(0)
    round.io.round_in(3)(0) := io.r_in(3)^stateReg(3)(0)
    round.io.round_in(4)(0) := io.r_in(4)^stateReg(4)(0)
    round.io.round_in(0)(1) := io.r_in(5)^stateReg(0)(1)
    round.io.round_in(1)(1) := io.r_in(6)^stateReg(1)(1)
    round.io.round_in(2)(1) := io.r_in(7)^stateReg(2)(1)
    round.io.round_in(3)(1) := io.r_in(8)^stateReg(3)(1)
  }.otherwise{
    round.io.round_in(0)(0) := stateReg(0)(0)
    round.io.round_in(1)(0) := stateReg(1)(0)
    round.io.round_in(2)(0) := stateReg(2)(0)
    round.io.round_in(3)(0) := stateReg(3)(0)
    round.io.round_in(4)(0) := stateReg(4)(0)
    round.io.round_in(0)(1) := stateReg(0)(1)
    round.io.round_in(1)(1) := stateReg(1)(1)
    round.io.round_in(2)(1) := stateReg(2)(1)
    round.io.round_in(3)(1) := stateReg(3)(1)
  }

  // Capacity (c) = 16*64 = 1024 bits
  round.io.round_in(4)(1) := stateReg(4)(1)
  round.io.round_in(0)(2) := stateReg(0)(2)
  round.io.round_in(1)(2) := stateReg(1)(2)
  round.io.round_in(2)(2) := stateReg(2)(2)
  round.io.round_in(3)(2) := stateReg(3)(2)
  round.io.round_in(4)(2) := stateReg(4)(2)
  round.io.round_in(0)(3) := stateReg(0)(3)
  round.io.round_in(1)(3) := stateReg(1)(3)
  round.io.round_in(2)(3) := stateReg(2)(3)
  round.io.round_in(3)(3) := stateReg(3)(3)
  round.io.round_in(4)(3) := stateReg(4)(3)
  round.io.round_in(0)(4) := stateReg(0)(4)
  round.io.round_in(1)(4) := stateReg(1)(4)
  round.io.round_in(2)(4) := stateReg(2)(4)
  round.io.round_in(3)(4) := stateReg(3)(4)
  round.io.round_in(4)(4) := stateReg(4)(4)



}


