import chisel3._

class Iota extends Module{
  val io  = IO( new Bundle {
    val iota_in     = Input(UInt(64.W))
    val iota_round  = Input(UInt(64.W))
    val iota_out    = Output(UInt(64.W))
    val iota_xor_val = Output(UInt(64.W))
  })

  val RC  = Wire(Vec(24, UInt(64.W)))
  RC(0)   := BigInt("0000000000000001", 16).U
  RC(1)   := BigInt("0000000000008082", 16).U
  RC(2)   := BigInt("800000000000808a", 16).U
  RC(3)   := BigInt("8000000080008000", 16).U
  RC(4)   := BigInt("000000000000808b", 16).U
  RC(5)   := BigInt("0000000080000001", 16).U
  RC(6)   := BigInt("8000000080008081", 16).U
  RC(7)   := BigInt("8000000000008009", 16).U
  RC(8)   := BigInt("000000000000008a", 16).U
  RC(9)   := BigInt("0000000000000088", 16).U
  RC(10)  := BigInt("0000000080008009", 16).U
  RC(11)  := BigInt("000000008000000a", 16).U
  RC(12)  := BigInt("000000008000808b", 16).U
  RC(13)  := BigInt("800000000000008b", 16).U
  RC(14)  := BigInt("8000000000008089", 16).U
  RC(15)  := BigInt("8000000000008003", 16).U
  RC(16)  := BigInt("8000000000008002", 16).U
  RC(17)  := BigInt("8000000000000080", 16).U
  RC(18)  := BigInt("000000000000800a", 16).U
  RC(19)  := BigInt("800000008000000a", 16).U
  RC(20)  := BigInt("8000000080008081", 16).U
  RC(21)  := BigInt("8000000000008080", 16).U
  RC(22)  := BigInt("0000000080000001", 16).U
  RC(23)  := BigInt("8000000080008008", 16).U

  io.iota_xor_val := RC(io.iota_round)

  /*Iota*/
  io.iota_out := io.iota_in^RC(io.iota_round)
}
