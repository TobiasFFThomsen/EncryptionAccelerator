import chisel3._

class SAM_Controller extends Module{
  val io = IO(new Bundle{
    val OCP_slave = Input(UInt(8.W)) // Placeholder
    val OCPBurst_Master = Output(UInt(8.W)) // Placeholder
  })
  // io.OCPBurst_Master := 42.U
}
