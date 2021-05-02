import chisel3._


class SAM_Accelerator extends Module{
  val io = IO(new Bundle{
    val OCP_slave = Input(UInt(8.W)) // Placeholder
    val OCPBurst_Master = Output(UInt(8.W)) // Placeholder
  })

  val controller: SAM_Controller = Module(new SAM_Controller)
  controller.io.OCP_slave := io.OCP_slave
  io.OCPBurst_Master := controller.io.OCPBurst_Master



}
