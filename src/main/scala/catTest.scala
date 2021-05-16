import chisel3._
import chisel3.util._


class catTest extends Module{
  val io  = IO( new Bundle {
    val cat_in  = Input(Vec(2,UInt(8.W)))
    val cat_out = Output(UInt(16.W))
  })

    io.cat_out := io.cat_in

}
