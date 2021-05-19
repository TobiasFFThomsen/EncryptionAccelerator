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
    val register_in   = Input(Vec(5,Vec(5,UInt(64.W))))
    val register_out  = Output(Vec(5,Vec(5,UInt(64.W))))

  })

  val round           = Module(new Round())
  val stateRegister   = Module(new StateRegister())

  // Signals for testing
  io.theta_d    := round.io.R_theta_d_out
  io.theta_c    := round.io.R_theta_c_out
  io.theta_out  := round.io.R_theta_out
  io.rhoPi_out  := round.io.R_rhoPi_out
  io.chi_out    := round.io.R_chi_out
  io.iota_out   := round.io.R_iota_out
  
  stateRegister.io.registerIn := io.register_in
  io.register_out := stateRegister.io.registerOut


  // The iota round tells the iota module what number in the table it should xor with.
  round.io.R_iota_round := io.iota_round

  /*
    poke(dut.io.r_in(0),stateRegister(0)(0))
    poke(dut.io.r_in(1),stateRegister(0)(1))
    poke(dut.io.r_in(2),stateRegister(0)(2))
    poke(dut.io.r_in(3),stateRegister(0)(3))
    poke(dut.io.r_in(4),stateRegister(0)(4))
    poke(dut.io.r_in(5),stateRegister(1)(0))
    poke(dut.io.r_in(6),stateRegister(1)(1))
    poke(dut.io.r_in(7),stateRegister(1)(2))
    poke(dut.io.r_in(8),stateRegister(1)(3))
   */



  // Rate (r) =  9 * 64 = 576 bits
  when(io.buffer_ready){
    round.io.round_in(0)(0) := io.r_in(0)^stateRegister.io.registerOut(0)(0)
    round.io.round_in(1)(0) := io.r_in(1)^stateRegister.io.registerOut(0)(1)
    round.io.round_in(2)(0) := io.r_in(2)^stateRegister.io.registerOut(0)(2)
    round.io.round_in(3)(0) := io.r_in(3)^stateRegister.io.registerOut(0)(3)
    round.io.round_in(4)(0) := io.r_in(4)^stateRegister.io.registerOut(0)(4)
    round.io.round_in(0)(1) := io.r_in(5)^stateRegister.io.registerOut(1)(0)
    round.io.round_in(1)(1) := io.r_in(6)^stateRegister.io.registerOut(1)(1)
    round.io.round_in(2)(1) := io.r_in(7)^stateRegister.io.registerOut(1)(2)
    round.io.round_in(3)(1) := io.r_in(8)^stateRegister.io.registerOut(1)(3)
  }.otherwise{
    round.io.round_in(0)(0) := io.r_in(0)
    round.io.round_in(1)(0) := io.r_in(1)
    round.io.round_in(2)(0) := io.r_in(2)
    round.io.round_in(3)(0) := io.r_in(3)
    round.io.round_in(4)(0) := io.r_in(4)
    round.io.round_in(0)(1) := io.r_in(5)
    round.io.round_in(1)(1) := io.r_in(6)
    round.io.round_in(2)(1) := io.r_in(7)
    round.io.round_in(3)(1) := io.r_in(8)
  }

  // Capacity (c) = 16*64 = 1024 bits
  round.io.round_in(4)(1) := io.c_in(0)
  round.io.round_in(0)(2) := io.c_in(1)
  round.io.round_in(1)(2) := io.c_in(2)
  round.io.round_in(2)(2) := io.c_in(3)
  round.io.round_in(3)(2) := io.c_in(4)
  round.io.round_in(4)(2) := io.c_in(5)
  round.io.round_in(0)(3) := io.c_in(6)
  round.io.round_in(1)(3) := io.c_in(7)
  round.io.round_in(2)(3) := io.c_in(8)
  round.io.round_in(3)(3) := io.c_in(9)
  round.io.round_in(4)(3) := io.c_in(10)
  round.io.round_in(0)(4) := io.c_in(11)
  round.io.round_in(1)(4) := io.c_in(12)
  round.io.round_in(2)(4) := io.c_in(13)
  round.io.round_in(3)(4) := io.c_in(14)
  round.io.round_in(4)(4) := io.c_in(15)

  for(x <- 0 to 4){
    for(y <- 0 to 4){
      io.round_out(x)(y) := round.io.round_out(y)(x)
    }
  }

  stateRegister.io.registerIn := round.io.round_out
  round.io.round_in           := stateRegister.io.registerOut

}


