package BigIntUnits
import Chisel.{Cat, Enum, Output, UInt, Vec}
import chisel3._

class CycledAdder(fullDataWidth: Int, regDataWidth: Int) extends Module{
  val idle :: computing :: nil = Enum(2)
  // We need an extra register in the case of subtraction,
  // as the 2's complement takes 1 more bit for representation
  // This will introduce some overhead for smaller numbers, but
  val registerCount: Int = (fullDataWidth / regDataWidth) + 1
  val io = IO(new Bundle {
    // Inputs
    val adder: UInt = Input(UInt((fullDataWidth).W))
    val addend: UInt = Input(UInt((fullDataWidth + 1).W))
    val valid_in: Bool = Input(Bool())

    // Outputs
    val valid_out: Bool = Output(Bool())
    // val out = Output(Vec(registerCount, UInt(regDataWidth.W)))
    val result: UInt = Output(UInt((fullDataWidth + 1).W))
    val overflow: UInt = Output(UInt(1.W))

    //Debug
    //val adder_out = Output(Vec(registerCount, UInt(regDataWidth.W)))
    //val addend_out = Output(Vec(registerCount, UInt(regDataWidth.W)))
    //val partial_out = Output(UInt((regDataWidth + 1).W))

  })
  // DATA REGISTERS AND WIRES
  // ---------------
  val adder_reg: ParallelShiftRegister = Module(new ParallelShiftRegister(fullDataWidth+regDataWidth, regDataWidth))
  // We need to add a single additional shiftregister for the addend to hold the 2's complement in case of subtraction
  val addend_reg: ParallelShiftRegister = Module(new ParallelShiftRegister(fullDataWidth+regDataWidth, regDataWidth))
  val sum_reg: ParallelShiftRegister = Module(new ParallelShiftRegister(fullDataWidth+regDataWidth, regDataWidth))
  val partial_sum: UInt = Wire(UInt((regDataWidth+1).W))
  val carry_reg: UInt = RegInit(0.U(1.W))
  partial_sum := Cat(Seq(0.U, adder_reg.io.out(registerCount - 1))) + Cat(Seq(0.U, addend_reg.io.out(registerCount - 1))) + carry_reg
  carry_reg := 0.U  // Default 0 if
  io.overflow := carry_reg

  io.result := Cat(sum_reg.io.out)
  //io.out := sum_reg.io.out

  val adder_vec: Vec[UInt] = Wire(Vec(registerCount, UInt(regDataWidth.W)))
  val addend_vec: Vec[UInt] = Wire(Vec(registerCount, UInt(regDataWidth.W)))
  for(i <- 0 until registerCount){
    if(i < (registerCount - 1)){
      adder_vec(i) := io.adder(regDataWidth-1 + regDataWidth*i, regDataWidth*i)
      addend_vec(i) :=  io.addend(regDataWidth-1 + regDataWidth*i, regDataWidth*i)
    }else{
      // 2's complement hack
      adder_vec(i) := 0.U   // Sign bit for adder
      addend_vec(i) := Cat(Seq.fill(regDataWidth)(io.addend(fullDataWidth))) // Sign bit for addend
    }
  }
  adder_reg.io.parallel_input := adder_vec
  addend_reg.io.parallel_input := addend_vec
  sum_reg.io.parallel_input := adder_vec  // Dummy statement
  adder_reg.io.serial_input := 0.U
  addend_reg.io.serial_input := 0.U
  sum_reg.io.serial_input := partial_sum(regDataWidth-1, 0)

  // ---------------
  // CONTROL REGISTERS
  // ---------------
  adder_reg.io.enable := false.B
  addend_reg.io.enable := false.B
  sum_reg.io.enable := false.B
  adder_reg.io.load_shift := false.B
  addend_reg.io.load_shift := false.B
  sum_reg.io.load_shift := false.B


  val progress_reg: UInt = RegInit(0.U(((fullDataWidth) / regDataWidth).W))
  val state_reg: UInt = RegInit(idle)
  val edge_high_reg: Bool = RegInit(false.B) // Register triggering computing on valid_in rising edge
  edge_high_reg := io.valid_in
  // ---------------

  when(state_reg === idle){
    adder_reg.io.enable := true.B
    adder_reg.io.load_shift := true.B
    addend_reg.io.enable := true.B
    addend_reg.io.load_shift := true.B

    when(io.valid_in & !edge_high_reg){
      // START
      state_reg := computing
      progress_reg := 0.U
      sum_reg.io.enable := true.B
      io.overflow := false.B
      // Reset paralle shift registers
    }
  }.otherwise{
    val progress_incremented = progress_reg + 1.U
    progress_reg := progress_incremented
    carry_reg := partial_sum(regDataWidth)
    adder_reg.io.enable := true.B
    adder_reg.io.load_shift := false.B
    addend_reg.io.enable := true.B
    addend_reg.io.load_shift := false.B
    sum_reg.io.enable := true.B
    when(progress_incremented >= (registerCount.U)) {
      state_reg := idle
    }
  }

  when(state_reg === idle){
    io.valid_out := true.B
  }.otherwise{
    io.valid_out := false.B
  }

  //DEBUG
  //io.adder_out := adder_reg.io.out
  //io.addend_out := addend_reg.io.out
  //io.partial_out := partial_sum
}
