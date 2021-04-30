import chisel3._


class Adder extends Module {
  val io  = IO( new Bundle {
    val r_from_round  = Input(UInt(576.W))
    val r_from_inp    = Input(UInt(576.W))
    val res           = Output(UInt(576.W))
  })
  io.res := io.r_from_round+io.r_from_inp
}

/*
object HelloMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Adder())
}
*/