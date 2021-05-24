package BigIntUnits

import Chisel.{Enum, switch}
import chisel3._
import chisel3.util.is

class CycledDivider extends Module{
  val width = 2048
  val idle :: loading :: computing :: Nil = Enum(3)
  val shift :: converting :: subtracting :: Nil = Enum(3)

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

  val divisor_reg: UInt = RegInit(0.U(((2 * width) + 1).W)) // +1 because we can momentarily overshift by 1 (x2)
  val dividend_reg: UInt = RegInit(0.U((2 * width).W))
  val quotient_reg: UInt = RegInit(0.U((2 * width).W))

  val cycledAdder: CycledAdder = Module(new CycledAdder(2*width, 32))
  cycledAdder.io.adder := dividend_reg  // Placeholder
  cycledAdder.io.addend := 0.U          // Placeholder
  cycledAdder.io.valid_in := false.B


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
    }

  }.elsewhen(state_reg === loading){

    // If state 'loading', left-shift divisor until larger than dividend.
    // When divisor larger than dividend, right-shift once and proceed to state 'computing'
    when(divisor_reg <= dividend_reg) {
      // Left-shifting divisor
      divisor_reg := divisor_reg << 1
      step_reg := step_reg + 1.U
    }.otherwise {
      // Done adjusting divisor. Proceed to state 'computing'
      divisor_reg := divisor_reg >> 1
      state_reg := computing
    }
  }.otherwise{
    // Assume state computing
    when(step_reg > 0.U) { // Must also allow last substate_Q "add"

      when(state_reg_Q === shift) {
        //printf("\n")
        quotient_reg := quotient_reg << 1 // STEP (1)
        when(dividend_reg >= divisor_reg){
          // We first need to initialize the subtraction before we can shift the divisor
          // We convert the divisor to its negative 2's complement representation
          // We need to start the subtraction before we can perform the shift operation of the quotient and divisor
          state_reg_Q := converting
          cycledAdder.io.adder := ~divisor_reg
          cycledAdder.io.addend := 1.U
          cycledAdder.io.valid_in := true.B
          // dividend_reg := dividend_reg - divisor_reg
        }.otherwise{
          step_reg := step_reg - 1.U
          divisor_reg := divisor_reg >> 1
        }

      }.elsewhen(state_reg_Q === converting){
        when(cycledAdder.io.valid_out){
          // STEP (2)
          cycledAdder.io.adder := dividend_reg
          cycledAdder.io.addend := cycledAdder.io.result
          cycledAdder.io.valid_in := true.B
          state_reg_Q := subtracting
          // ---------
          divisor_reg := divisor_reg >> 1 // STEP (3)
        }
      }.otherwise {
        // state_reg_Q === subtracting
        when(cycledAdder.io.valid_out){
          //printf("Remainder: %d\n", dividend_reg)
          //printf("Q: %d\n", quotient_reg)
          //printf("\n")
          dividend_reg := cycledAdder.io.result
          quotient_reg := quotient_reg | 1.U
          step_reg := step_reg - 1.U
          state_reg_Q := shift
        }
      }
    }.otherwise {
      // Done
      state_reg := idle
      state_reg_Q := shift
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

object GenerateCycledDividerVerilog extends App {
  println("Generating the Verilog file for Divider!")
  (new chisel3.stage.ChiselStage).emitVerilog(new CycledDivider())
}
