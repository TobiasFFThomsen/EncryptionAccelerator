import chisel3._

class shiftRegister extends Module {
  val io = IO( new Bundle {
      val shift_in = Input(UInt(32.W))
  })

  val reg_0 = RegInit(0.U(32.W))
  val reg_1 = RegInit(0.U(32.W))
  val reg_2 = RegInit(0.U(32.W))
  val reg_3 = RegInit(0.U(32.W))

  reg_0 := io.shift_in
  reg_1 := reg_0
  reg_2 := reg_1
  reg_3 := reg_2
}
