import chisel3._

class RhoPi  extends Module{
    val io          = IO( new Bundle {
      //val rhoPi_in  = Input(Vec(5, Vec(5,UInt(64.W))))
      //val rhoPi_out = Output(Vec(5, Vec(5,UInt(64.W))))
      val rhoPi_in_0_0 = Input(UInt(64.W))
      val rhoPi_in_1_0 = Input(UInt(64.W))
      val rhoPi_in_2_0 = Input(UInt(64.W))
      val rhoPi_in_3_0 = Input(UInt(64.W))
      val rhoPi_in_4_0 = Input(UInt(64.W))
      val rhoPi_in_0_1 = Input(UInt(64.W))
      val rhoPi_in_1_1 = Input(UInt(64.W))
      val rhoPi_in_2_1 = Input(UInt(64.W))
      val rhoPi_in_3_1 = Input(UInt(64.W))
      val rhoPi_in_4_1 = Input(UInt(64.W))
      val rhoPi_in_0_2 = Input(UInt(64.W))
      val rhoPi_in_1_2 = Input(UInt(64.W))
      val rhoPi_in_2_2 = Input(UInt(64.W))
      val rhoPi_in_3_2 = Input(UInt(64.W))
      val rhoPi_in_4_2 = Input(UInt(64.W))
      val rhoPi_in_0_3 = Input(UInt(64.W))
      val rhoPi_in_1_3 = Input(UInt(64.W))
      val rhoPi_in_2_3 = Input(UInt(64.W))
      val rhoPi_in_3_3 = Input(UInt(64.W))
      val rhoPi_in_4_3 = Input(UInt(64.W))
      val rhoPi_in_0_4 = Input(UInt(64.W))
      val rhoPi_in_1_4 = Input(UInt(64.W))
      val rhoPi_in_2_4 = Input(UInt(64.W))
      val rhoPi_in_3_4 = Input(UInt(64.W))
      val rhoPi_in_4_4 = Input(UInt(64.W))

      val rhoPi_out_0_0 = Output(UInt(64.W))
      val rhoPi_out_1_0 = Output(UInt(64.W))
      val rhoPi_out_2_0 = Output(UInt(64.W))
      val rhoPi_out_3_0 = Output(UInt(64.W))
      val rhoPi_out_4_0 = Output(UInt(64.W))
      val rhoPi_out_0_1 = Output(UInt(64.W))
      val rhoPi_out_1_1 = Output(UInt(64.W))
      val rhoPi_out_2_1 = Output(UInt(64.W))
      val rhoPi_out_3_1 = Output(UInt(64.W))
      val rhoPi_out_4_1 = Output(UInt(64.W))
      val rhoPi_out_0_2 = Output(UInt(64.W))
      val rhoPi_out_1_2 = Output(UInt(64.W))
      val rhoPi_out_2_2 = Output(UInt(64.W))
      val rhoPi_out_3_2 = Output(UInt(64.W))
      val rhoPi_out_4_2 = Output(UInt(64.W))
      val rhoPi_out_0_3 = Output(UInt(64.W))
      val rhoPi_out_1_3 = Output(UInt(64.W))
      val rhoPi_out_2_3 = Output(UInt(64.W))
      val rhoPi_out_3_3 = Output(UInt(64.W))
      val rhoPi_out_4_3 = Output(UInt(64.W))
      val rhoPi_out_0_4 = Output(UInt(64.W))
      val rhoPi_out_1_4 = Output(UInt(64.W))
      val rhoPi_out_2_4 = Output(UInt(64.W))
      val rhoPi_out_3_4 = Output(UInt(64.W))
      val rhoPi_out_4_4 = Output(UInt(64.W))


  })

  val r   = Wire(Vec(5,Vec(5,UInt(19.W))))
  r(0)(0) := 0.U
  r(0)(1) := 36.U
  r(0)(2) := 3.U
  r(0)(3) := 41.U
  r(0)(4) := 18.U

  r(1)(0) := 1.U
  r(1)(1) := 44.U
  r(1)(2) := 10.U
  r(1)(3) := 45.U
  r(1)(4) := 2.U

  r(2)(0) := 62.U
  r(2)(1) := 6.U
  r(2)(2) := 43.U
  r(2)(3) := 15.U
  r(2)(4) := 61.U

  r(3)(0) := 28.U
  r(3)(1) := 55.U
  r(3)(2) := 25.U
  r(3)(3) := 21.U
  r(3)(4) := 56.U

  r(4)(0) := 27.U
  r(4)(1) := 20.U
  r(4)(2) := 39.U
  r(4)(3) := 8.U
  r(4)(4) := 14.U

  /*Rho and Pi*/

  val or_lfh_0_0 = Wire(UInt(64.W))
  val or_lfh_0_1 = Wire(UInt(64.W))
  val or_lfh_0_2 = Wire(UInt(64.W))
  val or_lfh_0_3 = Wire(UInt(64.W))
  val or_lfh_0_4 = Wire(UInt(64.W))
  val or_lfh_1_0 = Wire(UInt(64.W))
  val or_lfh_1_1 = Wire(UInt(64.W))
  val or_lfh_1_2 = Wire(UInt(64.W))
  val or_lfh_1_3 = Wire(UInt(64.W))
  val or_lfh_1_4 = Wire(UInt(64.W))
  val or_lfh_2_0 = Wire(UInt(64.W))
  val or_lfh_2_1 = Wire(UInt(64.W))
  val or_lfh_2_2 = Wire(UInt(64.W))
  val or_lfh_2_3 = Wire(UInt(64.W))
  val or_lfh_2_4 = Wire(UInt(64.W))
  val or_lfh_3_0 = Wire(UInt(64.W))
  val or_lfh_3_1 = Wire(UInt(64.W))
  val or_lfh_3_2 = Wire(UInt(64.W))
  val or_lfh_3_3 = Wire(UInt(64.W))
  val or_lfh_3_4 = Wire(UInt(64.W))
  val or_lfh_4_0 = Wire(UInt(64.W))
  val or_lfh_4_1 = Wire(UInt(64.W))
  val or_lfh_4_2 = Wire(UInt(64.W))
  val or_lfh_4_3 = Wire(UInt(64.W))
  val or_lfh_4_4 = Wire(UInt(64.W))

  val or_rfh_0_0 = Wire(UInt(64.W))
  val or_rfh_0_1 = Wire(UInt(64.W))
  val or_rfh_0_2 = Wire(UInt(64.W))
  val or_rfh_0_3 = Wire(UInt(64.W))
  val or_rfh_0_4 = Wire(UInt(64.W))
  val or_rfh_1_0 = Wire(UInt(64.W))
  val or_rfh_1_1 = Wire(UInt(64.W))
  val or_rfh_1_2 = Wire(UInt(64.W))
  val or_rfh_1_3 = Wire(UInt(64.W))
  val or_rfh_1_4 = Wire(UInt(64.W))
  val or_rfh_2_0 = Wire(UInt(64.W))
  val or_rfh_2_1 = Wire(UInt(64.W))
  val or_rfh_2_2 = Wire(UInt(64.W))
  val or_rfh_2_3 = Wire(UInt(64.W))
  val or_rfh_2_4 = Wire(UInt(64.W))
  val or_rfh_3_0 = Wire(UInt(64.W))
  val or_rfh_3_1 = Wire(UInt(64.W))
  val or_rfh_3_2 = Wire(UInt(64.W))
  val or_rfh_3_3 = Wire(UInt(64.W))
  val or_rfh_3_4 = Wire(UInt(64.W))
  val or_rfh_4_0 = Wire(UInt(64.W))
  val or_rfh_4_1 = Wire(UInt(64.W))
  val or_rfh_4_2 = Wire(UInt(64.W))
  val or_rfh_4_3 = Wire(UInt(64.W))
  val or_rfh_4_4 = Wire(UInt(64.W))

  or_lfh_0_0 := io.rhoPi_in_0_0<<r(0)(0)
  or_lfh_0_1 := io.rhoPi_in_0_1<<r(0)(1)
  or_lfh_0_2 := io.rhoPi_in_0_2<<r(0)(2)
  or_lfh_0_3 := io.rhoPi_in_0_3<<r(0)(3)
  or_lfh_0_4 := io.rhoPi_in_0_4<<r(0)(4)
  or_lfh_1_0 := io.rhoPi_in_1_0<<r(1)(0)
  or_lfh_1_1 := io.rhoPi_in_1_1<<r(1)(1)
  or_lfh_1_2 := io.rhoPi_in_1_2<<r(1)(2)
  or_lfh_1_3 := io.rhoPi_in_1_3<<r(1)(3)
  or_lfh_1_4 := io.rhoPi_in_1_4<<r(1)(4)
  or_lfh_2_0 := io.rhoPi_in_2_0<<r(2)(0)
  or_lfh_2_1 := io.rhoPi_in_2_1<<r(2)(1)
  or_lfh_2_2 := io.rhoPi_in_2_2<<r(2)(2)
  or_lfh_2_3 := io.rhoPi_in_2_3<<r(2)(3)
  or_lfh_2_4 := io.rhoPi_in_2_4<<r(2)(4)
  or_lfh_3_0 := io.rhoPi_in_3_0<<r(3)(0)
  or_lfh_3_1 := io.rhoPi_in_3_1<<r(3)(1)
  or_lfh_3_2 := io.rhoPi_in_3_2<<r(3)(2)
  or_lfh_3_3 := io.rhoPi_in_3_3<<r(3)(3)
  or_lfh_3_4 := io.rhoPi_in_3_4<<r(3)(4)
  or_lfh_4_0 := io.rhoPi_in_4_0<<r(4)(0)
  or_lfh_4_1 := io.rhoPi_in_4_1<<r(4)(1)
  or_lfh_4_2 := io.rhoPi_in_4_2<<r(4)(2)
  or_lfh_4_3 := io.rhoPi_in_4_3<<r(4)(3)
  or_lfh_4_4 := io.rhoPi_in_4_4<<r(4)(4)

  or_rfh_0_0 := io.rhoPi_in_0_0>>(64.U-r(0)(0))
  or_rfh_0_1 := io.rhoPi_in_0_1>>(64.U-r(0)(1))
  or_rfh_0_2 := io.rhoPi_in_0_2>>(64.U-r(0)(2))
  or_rfh_0_3 := io.rhoPi_in_0_3>>(64.U-r(0)(3))
  or_rfh_0_4 := io.rhoPi_in_0_4>>(64.U-r(0)(4))
  or_rfh_1_0 := io.rhoPi_in_1_0>>(64.U-r(1)(0))
  or_rfh_1_1 := io.rhoPi_in_1_1>>(64.U-r(1)(1))
  or_rfh_1_2 := io.rhoPi_in_1_2>>(64.U-r(1)(2))
  or_rfh_1_3 := io.rhoPi_in_1_3>>(64.U-r(1)(3))
  or_rfh_1_4 := io.rhoPi_in_1_4>>(64.U-r(1)(4))
  or_rfh_2_0 := io.rhoPi_in_2_0>>(64.U-r(2)(0))
  or_rfh_2_1 := io.rhoPi_in_2_1>>(64.U-r(2)(1))
  or_rfh_2_2 := io.rhoPi_in_2_2>>(64.U-r(2)(2))
  or_rfh_2_3 := io.rhoPi_in_2_3>>(64.U-r(2)(3))
  or_rfh_2_4 := io.rhoPi_in_2_4>>(64.U-r(2)(4))
  or_rfh_3_0 := io.rhoPi_in_3_0>>(64.U-r(3)(0))
  or_rfh_3_1 := io.rhoPi_in_3_1>>(64.U-r(3)(1))
  or_rfh_3_2 := io.rhoPi_in_3_2>>(64.U-r(3)(2))
  or_rfh_3_3 := io.rhoPi_in_3_3>>(64.U-r(3)(3))
  or_rfh_3_4 := io.rhoPi_in_3_4>>(64.U-r(3)(4))
  or_rfh_4_0 := io.rhoPi_in_4_0>>(64.U-r(4)(0))
  or_rfh_4_1 := io.rhoPi_in_4_1>>(64.U-r(4)(1))
  or_rfh_4_2 := io.rhoPi_in_4_2>>(64.U-r(4)(2))
  or_rfh_4_3 := io.rhoPi_in_4_3>>(64.U-r(4)(3))
  or_rfh_4_4 := io.rhoPi_in_4_4>>(64.U-r(4)(4))

  io.rhoPi_out_0_0 := or_lfh_0_0 | or_rfh_0_0
  io.rhoPi_out_1_3 := or_lfh_0_1 | or_rfh_0_1
  io.rhoPi_out_2_1 := or_lfh_0_2 | or_rfh_0_2
  io.rhoPi_out_3_4 := or_lfh_0_3 | or_rfh_0_3
  io.rhoPi_out_4_2 := or_lfh_0_4 | or_rfh_0_4

  io.rhoPi_out_0_2 := or_lfh_1_0 | or_rfh_1_0
  io.rhoPi_out_1_0 := or_lfh_1_1 | or_rfh_1_1
  io.rhoPi_out_2_3 := or_lfh_1_2 | or_rfh_1_2
  io.rhoPi_out_3_1 := or_lfh_1_3 | or_rfh_1_3
  io.rhoPi_out_4_4 := or_lfh_1_4 | or_rfh_1_4

  io.rhoPi_out_0_4 := or_lfh_2_0 | or_rfh_2_0
  io.rhoPi_out_1_2 := or_lfh_2_1 | or_rfh_2_1
  io.rhoPi_out_2_0 := or_lfh_2_2 | or_rfh_2_2
  io.rhoPi_out_3_3 := or_lfh_2_3 | or_rfh_2_3
  io.rhoPi_out_4_1 := or_lfh_2_4 | or_rfh_2_4

  io.rhoPi_out_0_1 := or_lfh_3_0 | or_rfh_3_0
  io.rhoPi_out_1_4 := or_lfh_3_1 | or_rfh_3_1
  io.rhoPi_out_2_2 := or_lfh_3_2 | or_rfh_3_2
  io.rhoPi_out_3_0 := or_lfh_3_3 | or_rfh_3_3
  io.rhoPi_out_4_3 := or_lfh_3_4 | or_rfh_3_4

  io.rhoPi_out_0_3 := or_lfh_4_0 | or_rfh_4_0
  io.rhoPi_out_1_1 := or_lfh_4_1 | or_rfh_4_1
  io.rhoPi_out_2_4 := or_lfh_4_2 | or_rfh_4_2
  io.rhoPi_out_3_2 := or_lfh_4_3 | or_rfh_4_3
  io.rhoPi_out_4_0 := or_lfh_4_4 | or_rfh_4_4
}
