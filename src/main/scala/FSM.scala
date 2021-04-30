import chisel3._
import chisel3.util._

class FSM extends Module{
  val io  = IO( new Bundle {
    val hash_ready    = Output(Bool())
    val buffer_ready  = Output(Bool())
  })
  val idle::absorb::squeeze= Enum(2)
  val stateReg = RegInit(0.U)
  val countReg = RegInit(0.U)

}
