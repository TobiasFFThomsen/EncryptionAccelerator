import Chisel.{Enum, PriorityEncoder, Reverse}
import chisel3._

import BigIntUnits._
/*
class RSA extends Module{
  val io = IO(new Bundle{
    // We current only accept input messages pr. byte, corresponding to an ASCII character
    val text = Input(UInt(8.W)) // message text m or cipher text c
    val key = Input(UInt(17.W)) // public exponent e or private exponent d. e should always be 65537 for higher general security
    val n = Input(UInt(4096.W)) // The modulo value
    val
    val result = Output(UInt(8.W))
  })
}
*/

class SAM extends Module {
  /*
  Computes w = b^t mod n
  Usage:
  b, t, and n must be valid when requesting result
  valid_in must be raised and held high while operation is running (until valid_out is raised).
  */
  val max_bit_width = 2048
  val idle :: start :: squaring :: first_mod :: mult_b :: second_mod :: step_done :: nil = Enum(6)

  val io = IO(new Bundle {
    // b, t, n, w
    val b: UInt = Input(UInt(max_bit_width.W))
    val t: UInt = Input(UInt(max_bit_width.W))
    val n: UInt = Input(UInt(max_bit_width.W))
    val result: UInt = Output(UInt(max_bit_width.W))
    //Control signals
    val valid_in: Bool = Input(Bool())
    val valid_out: Bool = Output(Bool())
    //Only for testing
    val run: Bool = Output(Bool())
    val high: Bool = Output(Bool())
    val prog: UInt = Output(UInt(max_bit_width.W))
    val exp_lim: UInt = Output(UInt(max_bit_width.W))
  })
  // Big integer arithmetic modules
  val Multiplier = new BigIntUnits.Multiplier()
  val Divider = new BigIntUnits.Divider()

  // Initial values
  // ---------------------------------------
  // Result and UI control signals
  val w_reg: UInt = RegInit(1.U((max_bit_width*3).W)) // Register holding current computed result

  // Internal control signals
  val progress_reg: UInt = RegInit(0.U(max_bit_width.W)); // Register holding iteration progress
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
  val exp_lim: UInt = RegInit(1.U(max_bit_width.W))
  val state_reg: UInt = RegInit(idle)
  // ---------------------------------------

  // Computing
  //-----------------------------------------------
  // Edge triggered run of operations
  // Start computing if:
  // 1) Not already computing
  // 2) valid input signal is raised
  // 3) valid input signal was not raised raised on prior cycle

  edge_high_reg := io.valid_in;
  // https://stackoverflow.com/questions/60394862/taking-log2ceil-of-uint
  exp_lim := io.t.getWidth.asUInt() - PriorityEncoder(Reverse(io.t)) - 1.U




  when(state_reg === idle) {
    // No computation being performed
    // Trigger computation
    when(io.valid_in & !edge_high_reg) {
      //Initialize computation if not already running and edge high
      w_reg := 1.U;
      progress_reg := 0.U;
      state_reg := start
    }.otherwise{
      w_reg := w_reg
      progress_reg := progress_reg
      state_reg := idle
    }
    Multiplier.io.valid_in := true.B
    Multiplier.io.multiplicator  := w_reg
    Multiplier.io.multiplicand := w_reg
    Divider.io.valid_in := false.B
    Divider.io.dividend := 0.U
    Divider.io.divisor := 0.U

  }.elsewhen(state_reg === start){
    // Start computation
    when (progress_reg === exp_lim + 1.U) {
      // Done, stop iterating
      w_reg := w_reg
      progress_reg := progress_reg
      state_reg := idle

      Multiplier.io.valid_in := false.B
      Multiplier.io.multiplicator  := 0.U
      Multiplier.io.multiplicand := 0.U
    }.otherwise{
      progress_reg := progress_reg
      state_reg := squaring
      w_reg := w_reg

      Multiplier.io.valid_in := true.B
      Multiplier.io.multiplicator  := w_reg
      Multiplier.io.multiplicand := w_reg
    }

    Divider.io.valid_in := false.B
    Divider.io.dividend := 0.U
    Divider.io.divisor := 0.U
  }.elsewhen(state_reg === squaring){
      // Square
      // w_reg := (w_reg * w_reg) % io.n;
      progress_reg := progress_reg
      when(Multiplier.io.valid_out){
        // Store result. Reset multiplier
        w_reg := Multiplier.io.result
        Multiplier.io.valid_in := false.B
        Multiplier.io.multiplicator  := 0.U
        Multiplier.io.multiplicand := 0.U

        // Start modulo reduction
        state_reg := first_mod
        Divider.io.valid_in := true.B
        Divider.io.dividend := w_reg
        Divider.io.divisor := io.n
      }.otherwise{
        // Continue squaring
        state_reg := squaring
        w_reg := w_reg
        Multiplier.io.valid_in := true.B
        Multiplier.io.multiplicator  := w_reg
        Multiplier.io.multiplicand := w_reg

        Divider.io.valid_in := false.B
        Divider.io.dividend := 0.U
        Divider.io.divisor := 0.U
      }
    }.elsewhen(state_reg === first_mod){
      progress_reg := progress_reg
      when(Divider.io.valid_out){
        // Store result. Reset divider.
        w_reg := Divider.io.remainder
        Divider.io.valid_in := false.B
        Divider.io.divisor  := 0.U
        Divider.io.dividend := 0.U

        when(io.t(exp_lim - progress_reg)){ // If exponent bit is 1
          // Start multiplying by b
          state_reg := mult_b
          Multiplier.io.valid_in := true.B
          Multiplier.io.multiplicator := w_reg
          Multiplier.io.multiplicand := io.b
        }.otherwise{
          // Stop. Next step (exponent bit)
          state_reg := step_done
          Multiplier.io.valid_in := false.B
          Multiplier.io.multiplicator := 0.U
          Multiplier.io.multiplicand := 0.U

        }
      }.otherwise{
        // Continue dividing
        state_reg := first_mod
        w_reg := w_reg
        Divider.io.valid_in := true.B
        Divider.io.dividend := w_reg
        Divider.io.divisor := io.n

        Multiplier.io.valid_in := false.B
        Multiplier.io.multiplicator := 0.U
        Multiplier.io.multiplicand := 0.U
      }
    }.elsewhen(state_reg === mult_b){
      // Square and multiply
      // w_reg := ((w_reg * w_reg % io.n) * io.b) % io.n;
      progress_reg := progress_reg
      when(Multiplier.io.valid_out){
        // Store result. Reset multiplier
        w_reg := Multiplier.io.result
        Multiplier.io.valid_in := false.B
        Multiplier.io.multiplicator  := 0.U
        Multiplier.io.multiplicand := 0.U

        // Start modulo reduction
        state_reg := second_mod
        Divider.io.valid_in := true.B
        Divider.io.dividend := w_reg
        Divider.io.divisor := io.n
      }.otherwise{
        // Continue squaring
        state_reg := mult_b
        w_reg := w_reg
        Multiplier.io.valid_in := true.B
        Multiplier.io.multiplicator  := w_reg
        Multiplier.io.multiplicand := w_reg

        Divider.io.valid_in := false.B
        Divider.io.divisor  := 0.U
        Divider.io.dividend := 0.U
      }

    }.elsewhen(state_reg === second_mod){
      progress_reg := progress_reg
      // Common for all state:
      Multiplier.io.valid_in := false.B
      Multiplier.io.multiplicator := 0.U
      Multiplier.io.multiplicand := 0.U
      when(Divider.io.valid_out){
        // Store result. Reset divider.
        w_reg := Divider.io.remainder
        Divider.io.valid_in := false.B
        Divider.io.divisor  := 0.U
        Divider.io.dividend := 0.U

        // Stop. Next step (exponent bit)
        state_reg := step_done

      }.otherwise{
        // Continue dividing
        state_reg := second_mod
        w_reg := w_reg
        Divider.io.valid_in := true.B
        Divider.io.dividend := w_reg
        Divider.io.divisor := io.n
      }
    }.otherwise{
      // state_reg must be step_done
      // Done with computation
      progress_reg := progress_reg + 1.U
      state_reg := start
      Multiplier.io.valid_in := false.B
      Multiplier.io.multiplicator := 0.U
      Multiplier.io.multiplicand := 0.U
      Divider.io.valid_in := false.B
      Divider.io.divisor  := 0.U
      Divider.io.dividend := 0.U
    }

  // Assign output
  //-----------------------
  // While running assume output is invalid
  when(state_reg =/= idle){
    io.valid_out := false.B
  }.otherwise{
    io.valid_out := true.B
  }
  io.result := w_reg
  //-----------------------

  //For testing only:
  io.prog := progress_reg
  io.high := edge_high_reg
  io.exp_lim := exp_lim
}