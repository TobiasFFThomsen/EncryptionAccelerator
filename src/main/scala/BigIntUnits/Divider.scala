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
  })

  val divisor_reg: UInt = RegInit(0.U((2 * width).W))
  // val divisor_reg: UInt = RegInit(0.U((width + 1).W))
  val dividend_reg: UInt = RegInit(0.U((2 * width).W))
  val quotient_reg: UInt = RegInit(0.U((2 * width).W))

  // Control signals
  val step_reg: UInt = RegInit(0.U(12.W)) // width = ceil(log2(2048 + 1))

  // Control. States:
  val state_reg: UInt = RegInit(idle)
  val state_reg_Q: UInt = RegInit(shift)
  when(state_reg =/= computing){
    state_reg_Q := shift
  }

  // Store edge
  // Register triggering computing on valid_in rising edge
  val edge_high_reg: Bool = RegInit(false.B)
  edge_high_reg := io.valid_in


  // Idle done
  when(state_reg === idle){
    //state_reg_Q := shift
    step_reg := 0.U

    divisor_reg := io.divisor

    when(io.valid_in & !edge_high_reg) {
      when(io.divisor === 0.U){
        state_reg := idle
      }.elsewhen(io.divisor <= io.dividend){
        state_reg := loading
      }.otherwise{
        state_reg := computing
      }
      dividend_reg := io.dividend
      quotient_reg := 0.U

    }.otherwise {
      state_reg := idle
      dividend_reg := dividend_reg
      quotient_reg := quotient_reg
    }
  }.elsewhen(state_reg === loading){
    //state_reg_Q := shift
    dividend_reg := dividend_reg
    quotient_reg := quotient_reg

    // If state 'loading', left-shift divisor until larger than dividend.
    // When divisor larger than dividend, right-shift once and proceed to state 'computing'
    when(divisor_reg <= dividend_reg) {
      // Left-shifting divisor
      divisor_reg := divisor_reg << 1
      state_reg := loading
      step_reg := step_reg + 1.U
    }.otherwise {
      // Done adjusting divisor. Proceed to state 'computing'
      divisor_reg := divisor_reg >> 1
      state_reg := computing
      step_reg := step_reg
    }
  }.otherwise{
    when((step_reg > 0.U) || (state_reg_Q === add)) { // Must also allow last substate_Q "add"
      state_reg := computing

      when(state_reg_Q === shift) {
        step_reg := step_reg - 1.U

        when(dividend_reg >= divisor_reg){
          state_reg_Q := add
          dividend_reg := dividend_reg - divisor_reg
        }.otherwise{
          state_reg_Q := shift
          dividend_reg := dividend_reg
        }

        quotient_reg := quotient_reg << 1
        divisor_reg := divisor_reg >> 1
      }.otherwise {
        // state_reg_Q === add
        step_reg := step_reg
        state_reg_Q := shift

        quotient_reg := quotient_reg + 1.U
        divisor_reg := divisor_reg
        dividend_reg := dividend_reg
      }
    }.otherwise {
      // Done
      state_reg := idle
      state_reg_Q := shift
      step_reg := step_reg

      dividend_reg := dividend_reg
      divisor_reg := divisor_reg
      quotient_reg := quotient_reg
    }
  }


  // If unit is not running output is assumed to be valid
  when(state_reg =/= idle){
    io.valid_out := false.B
  }.otherwise{
    io.valid_out := true.B
  }
  // remainder will never be larger than bits(width + 1) in case of R and bits(width) in case of n
  io.remainder := dividend_reg(2048, 0)
  io.quotient := quotient_reg
}

object HelloDivider extends App {
  println("Hello World, I will now generate the Verilog file for Divider!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Divider())
}
