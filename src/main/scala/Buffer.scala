import chisel3._
import chisel3.util._

class Buffer extends Module {
  val io  = IO( new Bundle {

    val r_0  = Output(UInt(64.W))
    val r_1  = Output(UInt(64.W))
    val r_2  = Output(UInt(64.W))
    val r_3  = Output(UInt(64.W))
    val r_4  = Output(UInt(64.W))
    val r_5  = Output(UInt(64.W))
    val r_6  = Output(UInt(64.W))
    val r_7  = Output(UInt(64.W))
    val r_8  = Output(UInt(64.W))

    /*
    val bufferTest_0  = Output(UInt(64.W))
    val bufferTest_1  = Output(UInt(64.W))
    val bufferTest_2  = Output(UInt(64.W))
    val bufferTest_3  = Output(UInt(64.W))
    val bufferTest_4  = Output(UInt(64.W))
    val bufferTest_5  = Output(UInt(64.W))
    val bufferTest_6  = Output(UInt(64.W))
    val bufferTest_7  = Output(UInt(64.W))
    val bufferTest_8  = Output(UInt(64.W))
     */

    val d_0  = Input(UInt(64.W))
    val d_1  = Input(UInt(64.W))
    val d_2  = Input(UInt(64.W))
    val d_3  = Input(UInt(64.W))
    val d_4  = Input(UInt(64.W))
    val d_5  = Input(UInt(64.W))
    val d_6  = Input(UInt(64.W))
    val d_7  = Input(UInt(64.W))
    val d_8  = Input(UInt(64.W))

    val w_in  = Input(UInt(64.W))
    val w_out = Output(UInt(64.W))

    val bufferReady = Output(Bool())

    val testing_buffer_counter = Output(UInt(64.W))
    //val resultReady = Output(Bool())
    val hashReady   = Input(Bool())
    val dataRead    = Input(Bool())
    val roundReady  = Input(Bool())
    val dataValid   = Input(Bool())
  })

  var bufferReg_1 = RegInit(0.U(64.W))
  var bufferReg_2 = RegInit(0.U(64.W))
  var bufferReg_3 = RegInit(0.U(64.W))
  var bufferReg_4 = RegInit(0.U(64.W))
  var bufferReg_5 = RegInit(0.U(64.W))
  var bufferReg_6 = RegInit(0.U(64.W))
  var bufferReg_7 = RegInit(0.U(64.W))
  var bufferReg_8 = RegInit(0.U(64.W))
  var bufferReg_9 = RegInit(0.U(64.W))
  var counterReg  = RegInit(0.U(5.W))


  val load :: ready_with_result :: Nil = Enum(2)
  val stateReg        = RegInit(load)
  io.w_out := 0.U
  io.testing_buffer_counter := counterReg
    when (stateReg === load)
    {
      when(io.dataValid) {
        when((!io.hashReady)) {
          when(counterReg < 9.U) {
            io.bufferReady := false.B
            bufferReg_1 := io.w_in
            bufferReg_2 := bufferReg_1
            bufferReg_3 := bufferReg_2
            bufferReg_4 := bufferReg_3
            bufferReg_5 := bufferReg_4
            bufferReg_6 := bufferReg_5
            bufferReg_7 := bufferReg_6
            bufferReg_8 := bufferReg_7
            bufferReg_9 := bufferReg_8
            counterReg := counterReg + 1.U
            stateReg := load
          }.otherwise {
            io.bufferReady := true.B
            bufferReg_1 := bufferReg_1
            bufferReg_2 := bufferReg_2
            bufferReg_3 := bufferReg_3
            bufferReg_4 := bufferReg_4
            bufferReg_5 := bufferReg_5
            bufferReg_6 := bufferReg_6
            bufferReg_7 := bufferReg_7
            bufferReg_8 := bufferReg_8
            bufferReg_9 := bufferReg_9
            when(io.roundReady) {
              stateReg := load
              counterReg := 0.U
            }.otherwise {
              stateReg := load
              counterReg := counterReg
            }
          }
        }.otherwise {
          io.bufferReady := false.B
          bufferReg_1 := bufferReg_1
          bufferReg_2 := bufferReg_2
          bufferReg_3 := bufferReg_3
          bufferReg_4 := bufferReg_4
          bufferReg_5 := bufferReg_5
          bufferReg_6 := bufferReg_6
          bufferReg_7 := bufferReg_7
          bufferReg_8 := bufferReg_8
          bufferReg_9 := bufferReg_9
          counterReg := 0.U
          stateReg := ready_with_result
        }
      }.otherwise{
        io.bufferReady := false.B
        bufferReg_1 := bufferReg_1
        bufferReg_2 := bufferReg_2
        bufferReg_3 := bufferReg_3
        bufferReg_4 := bufferReg_4
        bufferReg_5 := bufferReg_5
        bufferReg_6 := bufferReg_6
        bufferReg_7 := bufferReg_7
        bufferReg_8 := bufferReg_8
        bufferReg_9 := bufferReg_9
        counterReg := counterReg
        stateReg := load
      }
    }.elsewhen(stateReg === ready_with_result)
    {
      bufferReg_1 := io.d_0
      bufferReg_2 := io.d_1
      bufferReg_3 := io.d_2
      bufferReg_4 := io.d_3
      bufferReg_5 := io.d_4
      bufferReg_6 := io.d_5
      bufferReg_7 := io.d_6
      bufferReg_8 := io.d_7
      bufferReg_9 := io.d_8
      counterReg := 0.U
      io.bufferReady := false.B
      when(io.hashReady && io.dataRead){
        io.bufferReady := false.B
        stateReg       := load
      }.elsewhen(io.hashReady && !io.dataRead){
        io.bufferReady := false.B
        stateReg       := ready_with_result
      }.otherwise{
        io.bufferReady := false.B
        stateReg       := load
      }
    }.otherwise{
      io.bufferReady := false.B
    }

  io.r_0 := bufferReg_1
  io.r_1 := bufferReg_2
  io.r_2 := bufferReg_3
  io.r_3 := bufferReg_4
  io.r_4 := bufferReg_5
  io.r_5 := bufferReg_6
  io.r_6 := bufferReg_7
  io.r_7 := bufferReg_8
  io.r_8 := bufferReg_9
}


