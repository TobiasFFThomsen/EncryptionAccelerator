import chisel3._

class Theta extends Module{
    val io          = IO( new Bundle {
        val theta_in_0_0  = Input(UInt(64.W))
        val theta_in_1_0  = Input(UInt(64.W))
        val theta_in_2_0  = Input(UInt(64.W))
        val theta_in_3_0  = Input(UInt(64.W))
        val theta_in_4_0  = Input(UInt(64.W))

        val theta_in_0_1  = Input(UInt(64.W))
        val theta_in_1_1  = Input(UInt(64.W))
        val theta_in_2_1  = Input(UInt(64.W))
        val theta_in_3_1  = Input(UInt(64.W))
        val theta_in_4_1  = Input(UInt(64.W))

        val theta_in_0_2  = Input(UInt(64.W))
        val theta_in_1_2  = Input(UInt(64.W))
        val theta_in_2_2  = Input(UInt(64.W))
        val theta_in_3_2  = Input(UInt(64.W))
        val theta_in_4_2  = Input(UInt(64.W))

        val theta_in_0_3  = Input(UInt(64.W))
        val theta_in_1_3  = Input(UInt(64.W))
        val theta_in_2_3  = Input(UInt(64.W))
        val theta_in_3_3  = Input(UInt(64.W))
        val theta_in_4_3  = Input(UInt(64.W))

        val theta_in_0_4  = Input(UInt(64.W))
        val theta_in_1_4  = Input(UInt(64.W))
        val theta_in_2_4  = Input(UInt(64.W))
        val theta_in_3_4  = Input(UInt(64.W))
        val theta_in_4_4  = Input(UInt(64.W))

        val theta_out_0_0  = Output(UInt(64.W))
        val theta_out_1_0  = Output(UInt(64.W))
        val theta_out_2_0  = Output(UInt(64.W))
        val theta_out_3_0  = Output(UInt(64.W))
        val theta_out_4_0  = Output(UInt(64.W))

        val theta_out_0_1  = Output(UInt(64.W))
        val theta_out_1_1  = Output(UInt(64.W))
        val theta_out_2_1  = Output(UInt(64.W))
        val theta_out_3_1  = Output(UInt(64.W))
        val theta_out_4_1  = Output(UInt(64.W))

        val theta_out_0_2  = Output(UInt(64.W))
        val theta_out_1_2  = Output(UInt(64.W))
        val theta_out_2_2  = Output(UInt(64.W))
        val theta_out_3_2  = Output(UInt(64.W))
        val theta_out_4_2  = Output(UInt(64.W))

        val theta_out_0_3  = Output(UInt(64.W))
        val theta_out_1_3  = Output(UInt(64.W))
        val theta_out_2_3  = Output(UInt(64.W))
        val theta_out_3_3  = Output(UInt(64.W))
        val theta_out_4_3  = Output(UInt(64.W))

        val theta_out_0_4  = Output(UInt(64.W))
        val theta_out_1_4  = Output(UInt(64.W))
        val theta_out_2_4  = Output(UInt(64.W))
        val theta_out_3_4  = Output(UInt(64.W))
        val theta_out_4_4  = Output(UInt(64.W))
    })

  val c_0 = Wire(UInt(64.W))
  val c_1 = Wire(UInt(64.W))
  val c_2 = Wire(UInt(64.W))
  val c_3 = Wire(UInt(64.W))
  val c_4 = Wire(UInt(64.W))

  val d_0 = Wire(UInt(64.W))
  val d_1 = Wire(UInt(64.W))
  val d_2 = Wire(UInt(64.W))
  val d_3 = Wire(UInt(64.W))
  val d_4 = Wire(UInt(64.W))

  c_0 := io.theta_in_0_0^io.theta_in_0_1^io.theta_in_0_2^io.theta_in_0_3^io.theta_in_0_4
  c_1 := io.theta_in_1_0^io.theta_in_1_1^io.theta_in_1_2^io.theta_in_1_3^io.theta_in_1_4
  c_2 := io.theta_in_2_0^io.theta_in_2_1^io.theta_in_2_2^io.theta_in_2_3^io.theta_in_2_4
  c_3 := io.theta_in_3_0^io.theta_in_3_1^io.theta_in_3_2^io.theta_in_3_3^io.theta_in_3_4
  c_4 := io.theta_in_4_0^io.theta_in_4_1^io.theta_in_4_2^io.theta_in_4_3^io.theta_in_4_4

  val rotation_0_lhs = Wire(UInt(64.W))
  val rotation_0_rhs = Wire(UInt(64.W))
  val rotation_1_lhs = Wire(UInt(64.W))
  val rotation_1_rhs = Wire(UInt(64.W))
  val rotation_2_lhs = Wire(UInt(64.W))
  val rotation_2_rhs = Wire(UInt(64.W))
  val rotation_3_lhs = Wire(UInt(64.W))
  val rotation_3_rhs = Wire(UInt(64.W))
  val rotation_4_lhs = Wire(UInt(64.W))
  val rotation_4_rhs = Wire(UInt(64.W))
  val rotation_result_1 = Wire(UInt(64.W))
  val rotation_result_2 = Wire(UInt(64.W))
  val rotation_result_3 = Wire(UInt(64.W))
  val rotation_result_4 = Wire(UInt(64.W))
  val rotation_result_0 = Wire(UInt(64.W))


  rotation_0_lhs := (c_1<<1)
  rotation_0_rhs := (c_1>>63)

  rotation_1_lhs := (c_2<<1)
  rotation_1_rhs := (c_2>>63)

  rotation_2_lhs := (c_3<<1)
  rotation_2_rhs := (c_3>>63)

  rotation_3_lhs := (c_4<<1)
  rotation_3_rhs := (c_4>>63)

  rotation_4_lhs := (c_0<<1)
  rotation_4_rhs := (c_0>>63)

  rotation_result_0 := rotation_0_lhs | rotation_0_rhs
  rotation_result_1 := rotation_1_lhs | rotation_1_rhs
  rotation_result_2 := rotation_2_lhs | rotation_2_rhs
  rotation_result_3 := rotation_3_lhs | rotation_3_rhs
  rotation_result_4 := rotation_4_lhs | rotation_4_rhs

  d_0 := c_4 ^ rotation_result_0
  d_1 := c_0 ^ rotation_result_1
  d_2 := c_1 ^ rotation_result_2
  d_3 := c_2 ^ rotation_result_3
  d_4 := c_3 ^ rotation_result_4


  io.theta_out_0_0 := io.theta_in_0_0^d_0
  io.theta_out_0_1 := io.theta_in_0_1^d_0
  io.theta_out_0_2 := io.theta_in_0_2^d_0
  io.theta_out_0_3 := io.theta_in_0_3^d_0
  io.theta_out_0_4 := io.theta_in_0_4^d_0

  io.theta_out_1_0 := io.theta_in_1_0^d_1
  io.theta_out_1_1 := io.theta_in_1_1^d_1
  io.theta_out_1_2 := io.theta_in_1_2^d_1
  io.theta_out_1_3 := io.theta_in_1_3^d_1
  io.theta_out_1_4 := io.theta_in_1_4^d_1

  io.theta_out_2_0 := io.theta_in_2_0^d_2
  io.theta_out_2_1 := io.theta_in_2_1^d_2
  io.theta_out_2_2 := io.theta_in_2_2^d_2
  io.theta_out_2_3 := io.theta_in_2_3^d_2
  io.theta_out_2_4 := io.theta_in_2_4^d_2

  io.theta_out_3_0 := io.theta_in_3_0^d_3
  io.theta_out_3_1 := io.theta_in_3_1^d_3
  io.theta_out_3_2 := io.theta_in_3_2^d_3
  io.theta_out_3_3 := io.theta_in_3_3^d_3
  io.theta_out_3_4 := io.theta_in_3_4^d_3

  io.theta_out_4_0 := io.theta_in_4_0^d_4
  io.theta_out_4_1 := io.theta_in_4_1^d_4
  io.theta_out_4_2 := io.theta_in_4_2^d_4
  io.theta_out_4_3 := io.theta_in_4_3^d_4
  io.theta_out_4_4 := io.theta_in_4_4^d_4

}




