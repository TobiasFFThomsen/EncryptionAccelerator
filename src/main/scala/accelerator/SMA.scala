package accelerator

import BigIntUnits.{CycledDivider, CycledMultiplier}
import Chisel.{Enum}
import chisel3._


class SMA() extends Module {
  /*
  Computes w = b^t mod n
  Usage:
  b, t, and n must be valid when requesting result
  valid_in must be raised and held high while operation is running (until valid_out is raised).
  */
  val max_bit_width = 2048
  val idle :: initialize :: start :: squaring :: first_mod :: mult_b :: second_mod :: step_done :: nil1 = Enum(8)
  val load :: compute :: nil2 = Enum(2)

  val io = IO(new Bundle {
    // b, t, n, w
    val b: UInt = Input(UInt(max_bit_width.W))
    val t: UInt = Input(UInt(max_bit_width.W))
    val n: UInt = Input(UInt(max_bit_width.W))
    val result: UInt = Output(UInt(max_bit_width.W))
    //Control signals
    val valid_in: Bool = Input(Bool())
    val valid_out: Bool = Output(Bool())
  })
  // Big integer arithmetic modules
  val multiplier: CycledMultiplier = Module(new CycledMultiplier())
  val divider: CycledDivider = Module(new CycledDivider())

  // Initial values
  // ---------------------------------------
  // Result and UI control signals
  val w_reg: UInt = RegInit(1.U((max_bit_width * 2).W)) // Register holding current computed result

  // Internal control signals
  val progress_reg: UInt = RegInit(0.U(12.W)); // Register holding iteration progress
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
  edge_high_reg := io.valid_in
  // val exp_lim: UInt = RegInit(1.U(max_bit_width.W))
  val state_reg: UInt = RegInit(idle)
  val sub_state_reg: UInt = RegInit(load)
  // ---------------------------------------

  // Computing
  //-----------------------------------------------
  // Edge triggered run of operations
  // Start computing if:
  // 1) Not already computing
  // 2) valid input signal is raised
  // 3) valid input signal was not raised raised on prior cycle

  // ------------------------------------------------------------------------
  // https://stackoverflow.com/questions/60394862/taking-log2ceil-of-uint

  val highest_bit_pos_reg: UInt = RegInit(2047.U(12.W))

  // Multiplier states
  multiplier.io.valid_in := false.B
  multiplier.io.multiplicator := 0.U
  multiplier.io.multiplicand := 0.U
  divider.io.valid_in := false.B
  divider.io.dividend := 0.U
  divider.io.divisor := 0.U

  // Multiplier control
  when(state_reg === squaring) {
    multiplier.io.valid_in := true.B
    multiplier.io.multiplicator := w_reg(2047, 0)
    multiplier.io.multiplicand := w_reg(2047, 0)
  }.elsewhen(state_reg === mult_b) {
    multiplier.io.valid_in := true.B
    multiplier.io.multiplicator := w_reg(2047, 0)
    multiplier.io.multiplicand := io.b
  }

  // Divider control
  when(state_reg === first_mod || state_reg === second_mod) {
    divider.io.valid_in := true.B
    divider.io.dividend := w_reg
    divider.io.divisor := io.n
  }

  when(state_reg === idle) {
    // No computation being performed
    // Trigger computation
    when(io.valid_in & !edge_high_reg) {
      //Initialize computation if not already running and edge high
      highest_bit_pos_reg := 2047.U
      state_reg := initialize
      w_reg := 1.U
      progress_reg := 0.U
    }

  }.elsewhen(state_reg === initialize){
    // Search for the most significant asserted bit
    // printf("pos: %d\n", highest_bit_pos_reg)
    when(io.t(highest_bit_pos_reg)){
      state_reg := start
    }.otherwise{
      highest_bit_pos_reg := highest_bit_pos_reg - 1.U
    }

  }.elsewhen(state_reg === start) {
    // Start computation

    when(progress_reg === highest_bit_pos_reg + 1.U) {
      // Done, stop iterating
      state_reg := idle
      // printf("DONE!\n")
      // printf("Result: %d\n\n", w_reg)
    }.otherwise {
      state_reg := squaring
    }
    sub_state_reg := load

  }.elsewhen(state_reg === squaring) {

    when(sub_state_reg === load) {
      sub_state_reg := compute
      // printf("w_reg after start state: %d\n", w_reg)
    }.otherwise {
      // Square
      // w_reg := (w_reg * w_reg) % io.n;
      when(multiplier.io.valid_out) {
        // Store result. Reset multiplier
        // Start modulo reduction
        state_reg := first_mod
        sub_state_reg := load
        w_reg := multiplier.io.result

      }
    }
  }.elsewhen(state_reg === first_mod) {
    when(sub_state_reg === load) {
      // printf("w_reg after squaring state: %d\n", w_reg)
      sub_state_reg := compute

    }.otherwise {
      when(divider.io.valid_out) {
        // Store result. Reset divider.
        when(io.t(highest_bit_pos_reg - progress_reg)) { // If exponent bit is 1
          state_reg := mult_b
        }.otherwise {
          // Stop. Next step (exponent bit)
          state_reg := step_done
        }
        sub_state_reg := load

        w_reg := divider.io.remainder
      }
    }
  }.elsewhen(state_reg === mult_b) {
    when(sub_state_reg === load) {
      sub_state_reg := compute
      // printf("w_reg after first modulo state: %d\n", w_reg)

    }.otherwise {
      when(multiplier.io.valid_out) {
        state_reg := second_mod
        sub_state_reg := load
        // Store result. Reset multiplier
        // printf("AFTER FIRST MOD w_reg: %d\n", w_reg)
        w_reg := multiplier.io.result
      }
    }
  }.elsewhen(state_reg === second_mod) {

    when(sub_state_reg === load) {
      sub_state_reg := compute
      // printf("w_reg after mult_b state: %d\n", w_reg)

    }.otherwise {
      when(divider.io.valid_out) {
        // Store result. Reset divider.
        state_reg := step_done
        sub_state_reg := load

        w_reg := divider.io.remainder
      }
    }
  }.otherwise {
    // state_reg must be step_done
    // Done with computation
    progress_reg := progress_reg + 1.U
    state_reg := start
    // printf("w_reg after second mod state: %d\n", w_reg)
    // printf("Progress reg: %d\n", progress_reg)
  }


  // Assign output
  //-----------------------
  // While running assume output is invalid
  when(state_reg =/= idle){
    io.valid_out := false.B
  }.otherwise{
    io.valid_out := true.B
  }
  io.result := w_reg(2047, 0)
  //-----------------------
}

object GenerateSMAVerilog extends App {
  println("Generating the Verilog file for SMA!")
  (new chisel3.stage.ChiselStage).emitVerilog(new SMA())
}
