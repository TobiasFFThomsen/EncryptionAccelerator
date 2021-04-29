import Chisel.{Enum, PriorityEncoder, Reverse}
import chisel3._
import BigIntUnits._

class SAM extends Module {
  /*
  Computes w = b^t mod n
  Usage:
  b, t, and n must be valid when requesting result
  valid_in must be raised and held high while operation is running (until valid_out is raised).
  */
  val max_bit_width = 2048
  val idle :: start :: squaring :: first_mod :: mult_b :: second_mod :: step_done :: nil1 = Enum(7)
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
    //Only for testing
    val high: Bool = Output(Bool())
    val prog: UInt = Output(UInt(max_bit_width.W))
    val exp_lim: UInt = Output(UInt(max_bit_width.W))
  })
  // Big integer arithmetic modules
  val Multiplier = Module(new BigIntUnits.Multiplier())
  val Divider = Module(new BigIntUnits.Divider())

  // Initial values
  // ---------------------------------------
  // Result and UI control signals
  val w_reg: UInt = RegInit(1.U((max_bit_width*2).W)) // Register holding current computed result

  // Internal control signals
  val progress_reg: UInt = RegInit(0.U(12.W)); // Register holding iteration progress
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
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
  val reversed_t = Reverse(io.t)
  edge_high_reg := io.valid_in;

  // ------------------------------------------------------------------------
  // https://stackoverflow.com/questions/60394862/taking-log2ceil-of-uint

  val highest_bit_pos = WireInit(0.U(12.W))

  when(reversed_t(511,0) > 0.U){
    highest_bit_pos := 511.U - PriorityEncoder(reversed_t(511,0)) + 1536.U
  }.elsewhen(reversed_t(1023, 512) > 0.U){
    highest_bit_pos := 511.U - PriorityEncoder(reversed_t(1023, 512)) + 1024.U
  }.elsewhen(reversed_t(1535, 1024) > 0.U){
    highest_bit_pos := 511.U - PriorityEncoder(reversed_t(1535, 1024)) + 512.U
  }.elsewhen(reversed_t(2047, 1536) > 0.U){
    highest_bit_pos := 511.U - PriorityEncoder(reversed_t(2047, 1536))
  }.otherwise{
    highest_bit_pos := 0.U
  }

  // -------------------------------------------------------------------------

  when(state_reg === idle) {
    // No computation being performed
    // Trigger computation
    sub_state_reg := load
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
    Multiplier.io.valid_in := false.B
    Multiplier.io.multiplicator := 0.U // w_reg(2047, 0)
    Multiplier.io.multiplicand := 0.U// w_reg(2047, 0)
    Divider.io.valid_in := false.B
    Divider.io.dividend := 0.U
    Divider.io.divisor := 0.U

  }.elsewhen(state_reg === start){
    // Start computation
    when (progress_reg === highest_bit_pos + 1.U) {
      // Done, stop iterating
      state_reg := idle
      printf("DONE!\n")
    }.otherwise{
      state_reg := squaring
    }
    w_reg := w_reg
    progress_reg := progress_reg
    Multiplier.io.valid_in := false.B
    Multiplier.io.multiplicator  := 0.U // w_reg(2047, 0)
    Multiplier.io.multiplicand := 0.U // w_reg(2047, 0)
    Divider.io.valid_in := false.B
    Divider.io.dividend := 0.U
    Divider.io.divisor := 0.U
  }.elsewhen(state_reg === squaring){
    progress_reg := progress_reg
    when(sub_state_reg === load){
      w_reg := w_reg
      state_reg := squaring
      sub_state_reg := compute
      Multiplier.io.valid_in := true.B
      Multiplier.io.multiplicator  := w_reg(2047, 0)
      Multiplier.io.multiplicand := w_reg(2047, 0)
      Divider.io.valid_in := false.B
      Divider.io.dividend := 0.U
      Divider.io.divisor := 0.U
    }.otherwise{
      // Square
      // w_reg := (w_reg * w_reg) % io.n;
      Divider.io.valid_in := false.B// true.B
      Divider.io.dividend := 0.U// w_reg
      Divider.io.divisor := 0.U// io.n
      when(Multiplier.io.valid_out){
        // Store result. Reset multiplier
        // Start modulo reduction
        state_reg := first_mod
        sub_state_reg := load

        w_reg := Multiplier.io.result
        Multiplier.io.valid_in := false.B
        Multiplier.io.multiplicator  := 0.U
        Multiplier.io.multiplicand := 0.U
      }.otherwise{
        // Continue squaring
        state_reg := squaring
        sub_state_reg := compute

        w_reg := w_reg
        Multiplier.io.valid_in := true.B
        Multiplier.io.multiplicator  := w_reg(2047, 0)
        Multiplier.io.multiplicand := w_reg(2047, 0)
      }
    }

    }.elsewhen(state_reg === first_mod){
      progress_reg := progress_reg
      Multiplier.io.valid_in := false.B
      Multiplier.io.multiplicator := 0.U
      Multiplier.io.multiplicand := 0.U
      when(sub_state_reg === load){
        state_reg := first_mod
        sub_state_reg := compute

        w_reg := w_reg
        Divider.io.valid_in := true.B
        Divider.io.dividend := w_reg
        Divider.io.divisor := io.n
      }.otherwise{
        when(Divider.io.valid_out){
          // Store result. Reset divider.
          when(io.t(highest_bit_pos - progress_reg)){ // If exponent bit is 1
            state_reg := mult_b
          }.otherwise{
            // Stop. Next step (exponent bit)
            state_reg := step_done
          }
          sub_state_reg := load

          w_reg := Divider.io.remainder
          Divider.io.valid_in := false.B
          Divider.io.divisor  := 0.U
          Divider.io.dividend := 0.U
        }.otherwise{
          // Continue dividing
          state_reg := first_mod
          sub_state_reg := compute

          w_reg := w_reg
          Divider.io.valid_in := true.B
          Divider.io.dividend := w_reg
          Divider.io.divisor := io.n
        }
      }

    }.elsewhen(state_reg === mult_b){
    Multiplier.io.valid_in := true.B
    Multiplier.io.multiplicator := w_reg(2047, 0)
    Multiplier.io.multiplicand := io.b
      // Square and multiply
      // w_reg := ((w_reg * w_reg % io.n) * io.b) % io.n;
      progress_reg := progress_reg
      when(Multiplier.io.valid_out){
        // Store result. Reset multiplier
        // printf("AFTER FIRST MOD w_reg: %d\n", w_reg)
        w_reg := Multiplier.io.result
        Multiplier.io.valid_in := false.B
        Multiplier.io.multiplicator  := 0.U
        Multiplier.io.multiplicand := 0.U

        // Start modulo reduction

        // printf("Doing second modulo reduction!\n")
        state_reg := second_mod
        Divider.io.valid_in := true.B
        Divider.io.dividend := w_reg
        Divider.io.divisor := io.n
      }.otherwise{
        // Continue squaring
        state_reg := mult_b
        w_reg := w_reg
        Multiplier.io.valid_in := true.B
        Multiplier.io.multiplicator  := w_reg(2047, 0)
        Multiplier.io.multiplicand := w_reg(2047, 0)

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
      w_reg := w_reg
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
  io.result := w_reg(2047, 0)
  //-----------------------

  //For testing only:
  io.prog := progress_reg
  io.high := edge_high_reg
  io.exp_lim := highest_bit_pos
}