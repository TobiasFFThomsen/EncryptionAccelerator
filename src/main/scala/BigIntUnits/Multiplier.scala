package BigIntUnits

import chisel3._
import Chisel.Enum
// BigInt BigIntUnits.Multiplier
// Input 2048 bit operands

class Multiplier extends Module {

  val width = 2048
  val idle :: computing :: nil = Enum(2)

  val io = IO(new Bundle {
    // Inputs
    val multiplicator: UInt = Input(UInt(width.W))
    val multiplicand: UInt = Input(UInt(width.W))
    val valid_in: Bool = Input(Bool())

    // Outputs
    val valid_out: Bool = Output(Bool())
    val result: UInt = Output(UInt((width*2).W))
  })

  // ----------Varying registers------------------
  // Control registers
  val step_reg: UInt = RegInit(0.U(12.W))
  val state_reg: UInt = RegInit(idle)

  // Value registers
  val product_reg: UInt = RegInit(0.U((width*2).W))
  val multiplicator_reg: UInt = RegInit(0.U(width.W)) // right-shift register
  val multiplicand_reg: UInt = RegInit(0.U((width*2).W)) // left-shift register
  // ---------------------------------------------

  // Store edge
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
  edge_high_reg := io.valid_in

  // States
  when(state_reg === idle){
    multiplicator_reg := io.multiplicator
    multiplicand_reg := io.multiplicand
    step_reg := 0.U
    when(io.valid_in & !edge_high_reg){
      state_reg := computing
      product_reg := 0.U
    }
  }.otherwise{
    // Assume state_reg === computing
    when(step_reg =/= width.U) {
      // Compute partial sum and add to product
      // Update control
      state_reg := computing
      step_reg := step_reg + 1.U

      // Update values
      multiplicator_reg := multiplicator_reg >> 1
      multiplicand_reg := multiplicand_reg << 1
      when(multiplicator_reg(0)){
        product_reg := product_reg + multiplicand_reg     // TODO: THIS IS EXTREMELY HEAVY
      }
    }.otherwise {
      // Done
      state_reg := idle
    }
  }

  // If unit is not computing this is assumed to be the case
  when(state_reg =/= idle){
    io.valid_out := false.B
  }.otherwise{
    io.valid_out := true.B
  }
  // Result is always product_reg
  io.result := product_reg
}

object GenerateMultiplierVerilog extends App {
  println("Generating the Verilog file for Multiplier!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Multiplier())
}
