import chisel3._
class StateRegister extends Module {
  val io = IO( new Bundle {

    val enable        = Input(Bool())


    val state_in_2_0  = Input(UInt(64.W))
    val state_in_3_0  = Input(UInt(64.W))
    val state_in_0_0  = Input(UInt(64.W))
    val state_in_1_0  = Input(UInt(64.W))
    val state_in_4_0  = Input(UInt(64.W))

    val state_in_0_1  = Input(UInt(64.W))
    val state_in_1_1  = Input(UInt(64.W))
    val state_in_2_1  = Input(UInt(64.W))
    val state_in_3_1  = Input(UInt(64.W))
    val state_in_4_1  = Input(UInt(64.W))

    val state_in_0_2  = Input(UInt(64.W))
    val state_in_1_2  = Input(UInt(64.W))
    val state_in_2_2  = Input(UInt(64.W))
    val state_in_3_2  = Input(UInt(64.W))
    val state_in_4_2  = Input(UInt(64.W))

    val state_in_0_3  = Input(UInt(64.W))
    val state_in_1_3  = Input(UInt(64.W))
    val state_in_2_3  = Input(UInt(64.W))
    val state_in_3_3  = Input(UInt(64.W))
    val state_in_4_3  = Input(UInt(64.W))

    val state_in_0_4  = Input(UInt(64.W))
    val state_in_1_4  = Input(UInt(64.W))
    val state_in_2_4  = Input(UInt(64.W))
    val state_in_3_4  = Input(UInt(64.W))
    val state_in_4_4  = Input(UInt(64.W))

    val state_out_0_0  = Output(UInt(64.W))
    val state_out_1_0  = Output(UInt(64.W))
    val state_out_2_0  = Output(UInt(64.W))
    val state_out_3_0  = Output(UInt(64.W))
    val state_out_4_0  = Output(UInt(64.W))

    val state_out_0_1  = Output(UInt(64.W))
    val state_out_1_1  = Output(UInt(64.W))
    val state_out_2_1  = Output(UInt(64.W))
    val state_out_3_1  = Output(UInt(64.W))
    val state_out_4_1  = Output(UInt(64.W))

    val state_out_0_2  = Output(UInt(64.W))
    val state_out_1_2  = Output(UInt(64.W))
    val state_out_2_2  = Output(UInt(64.W))
    val state_out_3_2  = Output(UInt(64.W))
    val state_out_4_2  = Output(UInt(64.W))

    val state_out_0_3  = Output(UInt(64.W))
    val state_out_1_3  = Output(UInt(64.W))
    val state_out_2_3  = Output(UInt(64.W))
    val state_out_3_3  = Output(UInt(64.W))
    val state_out_4_3  = Output(UInt(64.W))

    val state_out_0_4  = Output(UInt(64.W))
    val state_out_1_4  = Output(UInt(64.W))
    val state_out_2_4  = Output(UInt(64.W))
    val state_out_3_4  = Output(UInt(64.W))
    val state_out_4_4  = Output(UInt(64.W))
  }
  )

  val state_2_0_reg = RegInit(0.U(64.W))
  val state_3_0_reg = RegInit(0.U(64.W))
  val state_0_0_reg = RegInit(0.U(64.W))
  val state_1_0_reg = RegInit(0.U(64.W))
  val state_4_0_reg = RegInit(0.U(64.W))

  val state_0_1_reg  = RegInit(0.U(64.W))
  val state_1_1_reg  = RegInit(0.U(64.W))
  val state_2_1_reg  = RegInit(0.U(64.W))
  val state_3_1_reg  = RegInit(0.U(64.W))
  val state_4_1_reg  = RegInit(0.U(64.W))

  val state_0_2_reg  = RegInit(0.U(64.W))
  val state_1_2_reg  = RegInit(0.U(64.W))
  val state_2_2_reg  = RegInit(0.U(64.W))
  val state_3_2_reg  = RegInit(0.U(64.W))
  val state_4_2_reg  = RegInit(0.U(64.W))

  val state_0_3_reg  = RegInit(0.U(64.W))
  val state_1_3_reg  = RegInit(0.U(64.W))
  val state_2_3_reg  = RegInit(0.U(64.W))
  val state_3_3_reg  = RegInit(0.U(64.W))
  val state_4_3_reg  = RegInit(0.U(64.W))

  val state_0_4_reg  = RegInit(0.U(64.W))
  val state_1_4_reg  = RegInit(0.U(64.W))
  val state_2_4_reg  = RegInit(0.U(64.W))
  val state_3_4_reg  = RegInit(0.U(64.W))
  val state_4_4_reg  = RegInit(0.U(64.W))

  when(io.enable){
    state_0_0_reg := io.state_in_0_0
    state_1_0_reg := io.state_in_1_0
    state_2_0_reg := io.state_in_2_0
    state_3_0_reg := io.state_in_3_0
    state_4_0_reg := io.state_in_4_0

    state_0_1_reg := io.state_in_0_1
    state_1_1_reg := io.state_in_1_1
    state_2_1_reg := io.state_in_2_1
    state_3_1_reg := io.state_in_3_1
    state_4_1_reg := io.state_in_4_1

    state_0_2_reg := io.state_in_0_2
    state_1_2_reg := io.state_in_1_2
    state_2_2_reg := io.state_in_2_2
    state_3_2_reg := io.state_in_3_2
    state_4_2_reg := io.state_in_4_2

    state_0_3_reg := io.state_in_0_3
    state_1_3_reg := io.state_in_1_3
    state_2_3_reg := io.state_in_2_3
    state_3_3_reg := io.state_in_3_3
    state_4_3_reg := io.state_in_4_3

    state_0_4_reg := io.state_in_0_4
    state_1_4_reg := io.state_in_1_4
    state_2_4_reg := io.state_in_2_4
    state_3_4_reg := io.state_in_3_4
    state_4_4_reg := io.state_in_4_4


  }.otherwise{
    state_0_0_reg := state_0_0_reg
    state_1_0_reg := state_1_0_reg
    state_2_0_reg := state_2_0_reg
    state_3_0_reg := state_3_0_reg
    state_4_0_reg := state_4_0_reg

    state_0_1_reg := state_0_1_reg
    state_1_1_reg := state_1_1_reg
    state_2_1_reg := state_2_1_reg
    state_3_1_reg := state_3_1_reg
    state_4_1_reg := state_4_1_reg

    state_0_2_reg := state_0_2_reg
    state_1_2_reg := state_1_2_reg
    state_2_2_reg := state_2_2_reg
    state_3_2_reg := state_3_2_reg
    state_4_2_reg := state_4_2_reg

    state_0_3_reg := state_0_3_reg
    state_1_3_reg := state_1_3_reg
    state_2_3_reg := state_2_3_reg
    state_3_3_reg := state_3_3_reg
    state_4_3_reg := state_4_3_reg

    state_0_4_reg := state_0_4_reg
    state_1_4_reg := state_1_4_reg
    state_2_4_reg := state_2_4_reg
    state_3_4_reg := state_3_4_reg
    state_4_4_reg := state_4_4_reg
  }

  io.state_out_0_0 := state_0_0_reg
  io.state_out_1_0 := state_1_0_reg
  io.state_out_2_0 := state_2_0_reg
  io.state_out_3_0 := state_3_0_reg
  io.state_out_4_0 := state_4_0_reg

  io.state_out_0_1 := state_0_1_reg
  io.state_out_1_1 := state_1_1_reg
  io.state_out_2_1 := state_2_1_reg
  io.state_out_3_1 := state_3_1_reg
  io.state_out_4_1 := state_4_1_reg

  io.state_out_0_2 := state_0_2_reg
  io.state_out_1_2 := state_1_2_reg
  io.state_out_2_2 := state_2_2_reg
  io.state_out_3_2 := state_3_2_reg
  io.state_out_4_2 := state_4_2_reg

  io.state_out_0_3 := state_0_3_reg
  io.state_out_1_3 := state_1_3_reg
  io.state_out_2_3 := state_2_3_reg
  io.state_out_3_3 := state_3_3_reg
  io.state_out_4_3 := state_4_3_reg

  io.state_out_0_4 := state_0_4_reg
  io.state_out_1_4 := state_1_4_reg
  io.state_out_2_4 := state_2_4_reg
  io.state_out_3_4 := state_3_4_reg
  io.state_out_4_4 := state_4_4_reg


}
/*
object HelloMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new StateRegister())
}

8000000000000000
8000000000000000
 */