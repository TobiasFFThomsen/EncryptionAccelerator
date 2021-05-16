import chisel3._

class Sha3 extends Module {
  val io            = IO( new Bundle {
    val iota_round = Input(UInt(64.W))
    val r_in    = Input(Vec(9, UInt(64.W)))
    val c_in    = Input(Vec(16,UInt(64.W)))
    val r_out   = Output(Vec(9, UInt(64.W)))
    val c_out   = Output(Vec(16, UInt(64.W)))

    // For testing:
    val theta_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_d   = Output(Vec(5,UInt(64.W)))
    val theta_c   = Output(Vec(5,UInt(64.W)))


    val rhoPi_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val chi_out   = Output(Vec(5,Vec(5,UInt(64.W))))
    val iota_out  = Output(UInt(64.W))

  })

  val round = Module(new Round())

  io.theta_d := round.io.R_theta_d_out
  io.theta_c := round.io.R_theta_c_out

  io.theta_out := round.io.R_theta_out
  io.rhoPi_out := round.io.R_rhoPi_out
  io.chi_out   := round.io.R_chi_out
  io.iota_out  := round.io.R_iota_out

  // The iota round tells the iota module what number in the table it should xor with.
  round.io.R_iota_round := io.iota_round

  // Rate (r) =  9 * 64 = 576 bits
  round.io.round_in(0)(0) := io.r_in(0)
  round.io.round_in(1)(0) := io.r_in(1)
  round.io.round_in(2)(0) := io.r_in(2)
  round.io.round_in(3)(0) := io.r_in(3)
  round.io.round_in(4)(0) := io.r_in(4)
  round.io.round_in(0)(1) := io.r_in(5)
  round.io.round_in(1)(1) := io.r_in(6)
  round.io.round_in(2)(1) := io.r_in(7)
  round.io.round_in(3)(1) := io.r_in(8)

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

  io.r_out(0) := round.io.round_out(0)(0)
  io.r_out(1) := round.io.round_out(1)(0)
  io.r_out(2) := round.io.round_out(2)(0)
  io.r_out(3) := round.io.round_out(3)(0)
  io.r_out(4) := round.io.round_out(4)(0)
  io.r_out(5) := round.io.round_out(0)(1)
  io.r_out(6) := round.io.round_out(1)(1)
  io.r_out(7) := round.io.round_out(2)(1)
  io.r_out(8) := round.io.round_out(3)(1)

  io.c_out(0) := round.io.round_out(4)(1)

  io.c_out(1) := round.io.round_out(0)(2)
  io.c_out(2) := round.io.round_out(1)(2)
  io.c_out(3) := round.io.round_out(2)(2)
  io.c_out(4) := round.io.round_out(3)(2)
  io.c_out(5) := round.io.round_out(4)(2)

  io.c_out(6) := round.io.round_out(0)(3)
  io.c_out(7) := round.io.round_out(1)(3)
  io.c_out(8) := round.io.round_out(2)(3)
  io.c_out(9) := round.io.round_out(3)(3)
  io.c_out(10) := round.io.round_out(4)(3)

  io.c_out(11) := round.io.round_out(0)(4)
  io.c_out(12) := round.io.round_out(1)(4)
  io.c_out(13) := round.io.round_out(2)(4)
  io.c_out(14) := round.io.round_out(3)(4)
  io.c_out(15) := round.io.round_out(4)(4)

}


