package BigIntUnits
import chisel3._
import Chisel.{Bundle, Input, Module, Output, RegInit, UInt, Vec, when}


class ShiftRegister(dataWidth: Int) extends Module {
  // A single shift register
  val io = IO(new Bundle {
    val shift_in = Input(UInt(dataWidth.W))
    val enable = Input(Bool())
    val out = Output(UInt(dataWidth.W))
  })

  val reg = RegInit(0.U(dataWidth.W))

  reg := reg
  when(io.enable) {

    reg := io.shift_in
  }

  io.out := reg
}

class ParallelShiftRegister(fullDataWidth: Int, regDataWidth: Int) extends Module{
  val registerCount: Int = fullDataWidth / regDataWidth
  val io = IO(new Bundle {
    val serial_input = Input(UInt(regDataWidth.W))
    val parallel_input = Input(Vec(registerCount, UInt(regDataWidth.W)))
    val enable = Input(Bool())
    val load_shift = Input(Bool())   // True: Load parallel input, False: Shift register contents with serial input

    val out = Output(Vec(registerCount, UInt(regDataWidth.W)))

  })

  val regs: Seq[ShiftRegister] = Seq.fill(registerCount)(Module(new ShiftRegister(regDataWidth)))  // Is this division done at compile time?

  for (i <- 0 until registerCount) {
    regs(i).io.enable := io.enable
    // D input
    if(i == 0){

      regs.head.io.shift_in := Mux(io.load_shift, io.parallel_input(registerCount - 1), io.serial_input)
    }
    else{

      regs(i).io.shift_in := Mux(io.load_shift, io.parallel_input(registerCount - 1 - i), regs(i-1).io.out)
    }


    // Q output
    io.out(i) := regs(i).io.out
  }
}
