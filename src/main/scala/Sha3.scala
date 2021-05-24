import chisel3._
import chisel3.util._

class Sha3 extends Module {
  val io            = IO( new Bundle {
    val buffer_ready      = Input(Bool())
    val enable_buffer     = Input(Bool())
    //val result_32         = Output(Vec(16,UInt(32.W)))
    //val status_reg        = Output(UInt(32.W))
    //val data_in           = Input(UInt(32.W))
    //val m_len             = Input(UInt(32.W))

    // Dummy signals for synthesis
    val select            = Input(Bool())
    val dummy_output      = Output(Bits())

    // For testing:
    /* These signals should be commented in when running peek poke tests
    val round_out           = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_out           = Output(Vec(5,Vec(5,UInt(64.W))))
    val theta_c             = Output(Vec(5,UInt(64.W)))
    val theta_d             = Output(Vec(5,UInt(64.W)))
    val rhoPi_out           = Output(Vec(5,Vec(5,UInt(64.W))))
    val chi_out             = Output(Vec(5,Vec(5,UInt(64.W))))
    val iota_out            = Output(UInt(64.W))
    val iota_xor_val_out    = Output(UInt(64.W))
    val iota_round          = Output(UInt(64.W))
    val round_in            = Output(Vec(5,Vec(5,UInt(64.W))))
    val register_out        = Output(Vec(5,Vec(5,UInt(64.W))))
    val buffer_content_32   = Output(Vec(18,UInt(32.W)))
    val next_state          = Output(UInt(32.W))
     */
  })

  val m_len = 1.U

  // Instantiating the Round module
  val round    = Module(new Round())
  val buffer   = Module(new Buffer())

  // Initializing the state register
  // SHA3 state:
  val stateReg  = RegInit(VecInit(Seq.fill(5)(VecInit(Seq.fill(5)(0.U(64.W))))))
  val resultReg = RegInit(VecInit(Seq.fill(16)(0.U(32.W))))

  // State enum
  val idle :: error :: rounds :: result_ready :: Nil = Enum(4)

  // Registers
  val state_reg         = RegInit(idle)
  val xor_select        = RegInit(false.B)
  val iota_round        = RegInit(0.U(8.W))
  val status_reg        = RegInit(0.U(32.W))
  val current_message   = RegInit(0.U(32.W))

  // Signals
  buffer.io.enable  := io.enable_buffer


  // Signals when peek poke testing:
  // io.status_reg     := status_reg
  // buffer.io.dataIn  := io.data_in

  /* Signals for synthesis:
      (Hardcoding a value to make the algorithm run, without having to assign ports to switches or buttons in a
      constraint file):

   */
  when(io.select){
    buffer.io.dataIn := 0x01234567.U
  }otherwise{
    buffer.io.dataIn := 0x76543210.U
  }

  when((resultReg(0))(0)===1.U){
    io.dummy_output := true.B
  }.otherwise{
    io.dummy_output := false.B
  }


  // Signals for testing
  /* These signals have to be commented in, when running the peek poke tests:
  io.next_state := state_reg
  io.theta_d              := round.io.R_theta_d_out
  io.theta_c              := round.io.R_theta_c_out
  io.theta_out            := round.io.R_theta_out
  io.rhoPi_out            := round.io.R_rhoPi_out
  io.chi_out              := round.io.R_chi_out
  io.iota_out             := round.io.R_iota_out
  io.round_in             := round.io.round_in
  io.register_out         := stateReg
  io.iota_xor_val_out     := round.io.R_iota_xor_val_out
  io.iota_round           := round.io.R_iota_round
  io.buffer_content_32    := buffer.io.data_32_out
  io.round_out            := round.io.round_out
  */

  /*State machine controlling the SHA3 accelerator*/
  /*Replace the m_len value with the commented-out input of the same name (in this case io.m_len)
  (found in the io bundle in the top of this file)
  case this module is used together with the SHA_top module, as a io device for patmos*/
  switch(state_reg){
    is(idle) {
      when(io.buffer_ready && m_len > 0.U){
        xor_select := true.B
        iota_round := 0.U
        status_reg := 1.U
        state_reg  := rounds
        current_message := current_message + 1.U
      }.elsewhen(io.buffer_ready && m_len <= 0.U){
        state_reg := error
      }
    }
    is(rounds) {
      xor_select := false.B
      stateReg   := round.io.round_out
      when(iota_round < 24.U){
        iota_round := iota_round + 1.U
      }.elsewhen(current_message===m_len){
        resultReg(0)  := Cat(Seq(stateReg(0)(0)(7,0),stateReg(0)(0)(15,8),stateReg(0)(0)(23,16),stateReg(0)(0)(31,24)))
        resultReg(1)  := Cat(Seq(stateReg(0)(0)(39,32),stateReg(0)(0)(47,40),stateReg(0)(0)(55,48),stateReg(0)(0)(63,56)))
        resultReg(2)  := Cat(Seq(stateReg(1)(0)(7,0),stateReg(1)(0)(15,8),stateReg(1)(0)(23,16),stateReg(1)(0)(31,24)))
        resultReg(3)  := Cat(Seq(stateReg(1)(0)(39,32),stateReg(1)(0)(47,40),stateReg(1)(0)(55,48),stateReg(1)(0)(63,56)))
        resultReg(4)  := Cat(Seq(stateReg(2)(0)(7,0),stateReg(2)(0)(15,8),stateReg(2)(0)(23,16),stateReg(2)(0)(31,24)))
        resultReg(5)  := Cat(Seq(stateReg(2)(0)(39,32),stateReg(2)(0)(47,40),stateReg(2)(0)(55,48),stateReg(2)(0)(63,56)))
        resultReg(6)  := Cat(Seq(stateReg(3)(0)(7,0),stateReg(3)(0)(15,8),stateReg(3)(0)(23,16),stateReg(3)(0)(31,24)))
        resultReg(7)  := Cat(Seq(stateReg(3)(0)(39,32),stateReg(3)(0)(47,40),stateReg(3)(0)(55,48),stateReg(3)(0)(63,56)))
        resultReg(8)  := Cat(Seq(stateReg(4)(0)(7,0),stateReg(4)(0)(15,8),stateReg(4)(0)(23,16),stateReg(4)(0)(31,24)))
        resultReg(9)  := Cat(Seq(stateReg(4)(0)(39,32),stateReg(4)(0)(47,40),stateReg(4)(0)(55,48),stateReg(4)(0)(63,56)))
        resultReg(10) := Cat(Seq(stateReg(0)(1)(7,0),stateReg(0)(1)(15,8),stateReg(0)(1)(23,16),stateReg(0)(1)(31,24)))
        resultReg(11) := Cat(Seq(stateReg(0)(1)(39,32),stateReg(0)(1)(47,40),stateReg(0)(1)(55,48),stateReg(0)(1)(63,56)))
        resultReg(12) := Cat(Seq(stateReg(1)(1)(7,0),stateReg(1)(1)(15,8),stateReg(1)(1)(23,16),stateReg(1)(1)(31,24)))
        resultReg(13) := Cat(Seq(stateReg(1)(1)(39,32),stateReg(1)(1)(47,40),stateReg(1)(1)(55,48),stateReg(1)(1)(63,56)))
        resultReg(14) := Cat(Seq(stateReg(2)(1)(7,0),stateReg(2)(1)(15,8),stateReg(2)(1)(23,16),stateReg(2)(1)(31,24)))
        resultReg(15) := Cat(Seq(stateReg(2)(1)(39,32),stateReg(2)(1)(47,40),stateReg(2)(1)(55,48),stateReg(2)(1)(63,56)))
        state_reg := idle
        status_reg := 2.U;
        current_message := 0.U

        for(x <- 0 to 4)
          for(y <- 0 to 4)
            stateReg(x)(y) := 0.U

      }.otherwise{
        status_reg := 4.U
        state_reg := idle
      }
    }
    is(error) {
      state_reg := idle
      current_message := 0.U
      status_reg := 3.U
    }
  }
  // The iota round tells the iota module what number in the it's table it should xor with (and is used in the FSM to keep track of the round count, ensuring that the module runs for 24 rounds).
  round.io.R_iota_round := iota_round

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

  //io.result_32 := resultReg
}
/*Generating the verilog HD*/
object sha3_verilog extends App {
  println("Generating the Verilog file for CycledMultiplier!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Sha3())
}
