package BigIntUnits

import chisel3._
// BigInt BigIntUnits.Multiplier
// Input 2048 bit operands

class Multiplier extends Module {
  val width = 2048
  val io = IO(new Bundle {
    // Inputs
    val multiplicator: UInt = Input(UInt(width.W))
    val multiplicand: UInt = Input(UInt(width.W))
    val valid_in: Bool = Input(Bool())

    // Outputs
    val valid_out: Bool = Output(Bool())
    val result: UInt = Output(UInt((width*2).W))
  })

  val product_reg: UInt = RegInit(0.U((width*2).W))
  val multiplicator_reg: UInt = RegInit(0.U(width.W)) // right-shift register
  val multiplicand_reg: UInt = RegInit(0.U((width*2).W)) // left-shift register

  // Control signals
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
  val run_reg: Bool = RegInit(false.B) // Register denoting whether module is currently computing result
  val step_reg: UInt = RegInit(0.U(12.W))

  // Store edge
  edge_high_reg := io.valid_in

  when(!run_reg & io.valid_in & !edge_high_reg) {
    // All registers accounted for (X)
    // Reset and load step on rising edge
    run_reg := true.B
    step_reg := 0.U
    multiplicator_reg := io.multiplicator
    multiplicand_reg := io.multiplicand
    product_reg := 0.U
  }.elsewhen(run_reg & (step_reg =/= width.U)){
    // All registers accounted for. (run_reg just continues as true.B)
    // Compute partial sum and add to product
    when(multiplicator_reg(0)){
      product_reg := product_reg + multiplicand_reg
    }.otherwise{
      product_reg := product_reg
    }
    // Update control
    step_reg := step_reg + 1.U
    run_reg := run_reg
    // Update values
    multiplicator_reg := multiplicator_reg >> 1
    multiplicand_reg := multiplicand_reg << 1
  }.otherwise{
    run_reg := false.B
    step_reg := 0.U
    multiplicator_reg := multiplicator_reg
    multiplicand_reg := multiplicand_reg
    product_reg := product_reg
  }

  // Outgoing control signal to show whether current result is valid or not
  // If unit is not running this is assumed to be the case
  when(run_reg){
    io.valid_out := false.B
  }.otherwise{
    io.valid_out := true.B
  }
  // Result is always product_reg
  io.result := product_reg
}
