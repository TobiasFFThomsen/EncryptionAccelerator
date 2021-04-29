package BigIntUnits

import Chisel.{Enum, switch}
import chisel3._
import chisel3.util.is

class Divider extends Module{
  val width = 2048
  val idle :: loading :: computing :: Nil = Enum(3)
  val shift :: add :: Nil = Enum(2)

  val io = IO(new Bundle {
    // Inputs
    val dividend: UInt = Input(UInt((2 * width).W))
    //Our divisor must be able to accomodate R which can be bits(n) + 1.
    val divisor: UInt = Input(UInt((width + 1).W))
    val valid_in: Bool = Input(Bool())

    // Outputs
    val valid_out: Bool = Output(Bool())
    val quotient: UInt = Output(UInt((2 * width).W))
    val remainder: UInt = Output(UInt((width + 1).W))

    // Debugging
    val step: UInt = Output(UInt(12.W))
    val state: UInt = Output(UInt(2.W))
    val divisor_out: UInt = Output(UInt((width + 1).W))
  })

  val divisor_reg: UInt = RegInit(0.U((2 * width).W))
  // val divisor_reg: UInt = RegInit(0.U((width + 1).W))
  val dividend_reg: UInt = RegInit(0.U((2 * width).W))
  val quotient_reg: UInt = RegInit(0.U((2 * width).W))

  // Control signals
  val step_reg: UInt = RegInit(0.U(12.W)) // width = ceil(log2(2048 + 1))

  // Control. States:
  // 0: idle
  // 1: loading
  // 2: computing
  val state_reg: UInt = RegInit(0.U(2.W))
  val state_reg_Q: UInt = RegInit(0.U(1.W)) // 0 shift, 1 add

  // Store edge
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
  edge_high_reg := io.valid_in


  switch(state_reg) {
    is(idle) {
      state_reg_Q := shift
      step_reg := 0.U
      when(io.valid_in & !edge_high_reg) {
        printf("\n")
        printf("\nResetting divider!\n")
        printf("%d\n", io.dividend)
        printf("%d\n", io.divisor)
        divisor_reg := io.divisor
        dividend_reg := io.dividend
        quotient_reg := 0.U
        when(io.divisor <= io.dividend){
          state_reg := loading
        }.otherwise{
          state_reg := computing
        }

      }.otherwise {
        divisor_reg := divisor_reg
        dividend_reg := dividend_reg
        quotient_reg := quotient_reg
        state_reg := idle
      }
    }
    is(loading) {
      printf("\nLoading!\n")
      printf("%d\n", dividend_reg)
      printf("%d\n", divisor_reg)
      printf("%d\n", quotient_reg)
      dividend_reg := dividend_reg
      quotient_reg := quotient_reg
      state_reg_Q := shift

      // If state 'loading', left-shift divisor until larger than dividend.
      // When divisor larger than dividend, right-shift once and proceed to state 'computing'
      when(divisor_reg <= dividend_reg) {
        // Left-shifting divisor
        divisor_reg := divisor_reg << 1
        step_reg := step_reg + 1.U
        state_reg := loading
      }.otherwise {
        // Done adjusting divisor. Proceed to state 'computing'
        divisor_reg := divisor_reg >> 1
        step_reg := step_reg
        state_reg := computing
      }
    }
    //-----------
    is(computing) {
      printf("\nComputing\n")
      printf("%d\n", io.dividend)
      printf("%d\n", io.divisor)
      printf("%d\n", quotient_reg)
      // Check if we're due to add after a prior shift:
      when(state_reg_Q === add) {
        state_reg := computing
        divisor_reg := divisor_reg
        dividend_reg := dividend_reg
        quotient_reg := quotient_reg + 1.U
        state_reg_Q := shift
        step_reg := step_reg
      }.otherwise {
        // Otherwise,
        divisor_reg := divisor_reg >> 1
        step_reg := step_reg - 1.U
        when(step_reg > 0.U) {
          state_reg := computing
          quotient_reg := quotient_reg << 1 //<< 1.U + 1.U
          when(dividend_reg >= divisor_reg) {
            dividend_reg := dividend_reg - divisor_reg
            state_reg_Q := add
          }.otherwise {
            dividend_reg := dividend_reg
            state_reg_Q := shift
          }
        }.otherwise {
          printf("Done\n")
          printf("\nDividend: %d\n", io.dividend)
          printf("divisor: %d\n", io.divisor)
          printf("remainder: %d\n", io.remainder)
          state_reg := idle // done
          dividend_reg := dividend_reg
          divisor_reg := divisor_reg
          quotient_reg := quotient_reg
          step_reg := step_reg
          state_reg_Q := shift
        }
      }
    }
  }

  // Outgoing control signal to show whether current result is valid or not
  // If unit is not running this is assumed to be the case
  when(state_reg =/= idle){
    io.valid_out := false.B
  }.otherwise{
    io.valid_out := true.B
  }
  // remainder will never be larger than bits(width + 1) in case of R and bits(width) in case of n
  io.remainder := dividend_reg(2048, 0)
  io.quotient := quotient_reg

  //Debugging
  io.step := step_reg
  io.state := state_reg
  io.divisor_out := divisor_reg
}

