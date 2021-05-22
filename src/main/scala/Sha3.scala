import chisel3._
import chisel3.util._

class Sha3 extends Module {
  val io            = IO( new Bundle {

    //val iota_round   = Input(UInt(64.W))
    val data_in      = Input(UInt(32.W))
    val c_in         = Input(Vec(16,UInt(64.W)))
    val buffer_ready = Input(Bool())
    val enable_buffer = Input(Bool())
    val result        = Output(UInt(512.W))
    // For testing:
    val round_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_c   = Output(Vec(5,UInt(64.W)))
    val theta_d   = Output(Vec(5,UInt(64.W)))
    val rhoPi_out = Output(Vec(5,Vec(5,UInt(64.W))))
    val chi_out   = Output(Vec(5,Vec(5,UInt(64.W))))
    val iota_out  = Output(UInt(64.W))
    val iota_xor_val_out = Output(UInt(64.W))
    val iota_round       = Output(UInt(64.W))
    val round_in  = Output(Vec(5,Vec(5,UInt(64.W))))

    val IObuffer_content = Output(Vec(9,UInt(64.W)))
    val IObuffer_content_32 = Output(Vec(18,UInt(32.W)))

    //val register_in   = Input(Vec(5,Vec(5,UInt(64.W))))
    val register_out  = Output(Vec(5,Vec(5,UInt(64.W))))
    //val state = Output(String)

  })

  // Instantiating the Round module
  val round    = Module(new Round())
  val buffer   = Module(new Buffer())
  // Initializing the state register
  val stateReg = RegInit(VecInit(Seq.fill(5)(VecInit(Seq.fill(5)(0.U(64.W))))))

  // Initializing the counter register
  val idle ::  rounds :: done :: Nil = Enum(3)
  //val counterReg    = RegInit(0.U)
  val next_state    = RegInit(idle)
  val xor_select    = RegInit(false.B)
  val iota_round    = RegInit(0.U(8.W))
  val status_reg    = RegInit(0.U(8.W))

  // Signals
  buffer.io.dataIn  := io.data_in
  buffer.io.enable  := io.enable_buffer


  // Signals for testing
  io.theta_d      := round.io.R_theta_d_out
  io.theta_c      := round.io.R_theta_c_out
  io.theta_out    := round.io.R_theta_out
  io.rhoPi_out    := round.io.R_rhoPi_out
  io.chi_out      := round.io.R_chi_out
  io.iota_out     := round.io.R_iota_out
  io.round_in     := round.io.round_in
  io.register_out := stateReg
  io.iota_xor_val_out := round.io.R_iota_xor_val_out
  io.iota_round       := round.io.R_iota_round
  io.IObuffer_content := buffer.io.dataOut
  io.IObuffer_content_32  := buffer.io.data_32_out

  for(x <- 0 to 4){
    for(y <- 0 to 4){
      io.round_out(x)(y) := round.io.round_out(x)(y)
    }
  }


  switch(next_state){
    is(idle) {
      xor_select := true.B
      iota_round := 0.U
      when(io.buffer_ready){
        next_state  := rounds
      }.otherwise{
        next_state := idle
      }
    }
    is(rounds) {
      xor_select := false.B
      stateReg   := round.io.round_out
      when(iota_round < 23.U){
        next_state := rounds
        iota_round := iota_round + 1.U
      }.otherwise{
        iota_round := iota_round
        next_state := idle
      }
    }
  }





  // The iota round tells the iota module what number in the table it should xor with.
  round.io.R_iota_round := iota_round

  // Connecting the state register.
  //round.io.round_in   := stateReg

  // Rate (r) =  9 * 64 = 576 bits.

  when(xor_select){
    round.io.round_in(0)(0) := buffer.io.dataOut(8)^stateReg(0)(0)
    round.io.round_in(1)(0) := buffer.io.dataOut(7)^stateReg(1)(0)
    round.io.round_in(2)(0) := buffer.io.dataOut(6)^stateReg(2)(0)
    round.io.round_in(3)(0) := buffer.io.dataOut(5)^stateReg(3)(0)
    round.io.round_in(4)(0) := buffer.io.dataOut(4)^stateReg(4)(0)
    round.io.round_in(0)(1) := buffer.io.dataOut(3)^stateReg(0)(1)
    round.io.round_in(1)(1) := buffer.io.dataOut(2)^stateReg(1)(1)
    round.io.round_in(2)(1) := buffer.io.dataOut(1)^stateReg(2)(1)
    round.io.round_in(3)(1) := buffer.io.dataOut(0)^stateReg(3)(1)
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

/*
  io.result := Cat(Seq( stateReg(0)(0)(3,0),
                        stateReg(0)(0)(7,3)
    ,
                        stateReg(0)(0)(12,8),
                        stateReg(0)(0)(16,12),
                        stateReg(0)(0)(20,16),
                        stateReg(0)(0)(24,20),
                        stateReg(0)(0)(28,24),
                        stateReg(0)(0)(32,28),
                        stateReg(0)(0)(36,32),
                        stateReg(0)(0)(40,36),
                        stateReg(0)(0)(40,36),
  ))
 */


  io.result := Cat(Seq(
                        stateReg(0)(0)(7,0),
                        stateReg(0)(0)(15,8),
                        stateReg(0)(0)(23,16),
                        stateReg(0)(0)(31,24),
                        stateReg(0)(0)(39,32),
                        stateReg(0)(0)(47,40),
                        stateReg(0)(0)(55,48),
                        stateReg(0)(0)(63,56),

                        stateReg(1)(0)(7,0),
                        stateReg(1)(0)(15,8),
                        stateReg(1)(0)(23,16),
                        stateReg(1)(0)(31,24),
                        stateReg(1)(0)(39,32),
                        stateReg(1)(0)(47,40),
                        stateReg(1)(0)(55,48),
                        stateReg(1)(0)(63,56),

                        stateReg(2)(0)(7,0),
                        stateReg(2)(0)(15,8),
                        stateReg(2)(0)(23,16),
                        stateReg(2)(0)(31,24),
                        stateReg(2)(0)(39,32),
                        stateReg(2)(0)(47,40),
                        stateReg(2)(0)(55,48),
                        stateReg(2)(0)(63,56),


                        stateReg(3)(0)(7,0),
                        stateReg(3)(0)(15,8),
                        stateReg(3)(0)(23,16),
                        stateReg(3)(0)(31,24),
                        stateReg(3)(0)(39,32),
                        stateReg(3)(0)(47,40),
                        stateReg(3)(0)(55,48),
                        stateReg(3)(0)(63,56),


                        stateReg(4)(0)(7,0),
                        stateReg(4)(0)(15,8),
                        stateReg(4)(0)(23,16),
                        stateReg(4)(0)(31,24),
                        stateReg(4)(0)(39,32),
                        stateReg(4)(0)(47,40),
                        stateReg(4)(0)(55,48),
                        stateReg(4)(0)(63,56),

                        stateReg(0)(1)(7,0),
                        stateReg(0)(1)(15,8),
                        stateReg(0)(1)(23,16),
                        stateReg(0)(1)(31,24),
                        stateReg(0)(1)(39,32),
                        stateReg(0)(1)(47,40),
                        stateReg(0)(1)(55,48),
                        stateReg(0)(1)(63,56),

                        stateReg(1)(1)(7,0),
                        stateReg(1)(1)(15,8),
                        stateReg(1)(1)(23,16),
                        stateReg(1)(1)(31,24),
                        stateReg(1)(1)(39,32),
                        stateReg(1)(1)(47,40),
                        stateReg(1)(1)(55,48),
                        stateReg(1)(1)(63,56),

                        stateReg(2)(1)(7,0),
                        stateReg(2)(1)(15,8),
                        stateReg(2)(1)(23,16),
                        stateReg(2)(1)(31,24),
                        stateReg(2)(1)(39,32),
                        stateReg(2)(1)(47,40),
                        stateReg(2)(1)(55,48),
                        stateReg(2)(1)(63,56),
                  ))

  //^(stateReg(0)(0))(12,8)^(stateReg(0)(0))(12,8)


}


