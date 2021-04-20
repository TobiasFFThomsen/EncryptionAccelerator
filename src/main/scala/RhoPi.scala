import chisel3._

class RhoPi  extends Module{
    val io          = IO( new Bundle {
      val rhoPi_in  = Input(Vec(5, Vec(5,UInt(64.W))))
      val rhoPi_out = Output(Vec(5, Vec(5,UInt(64.W))))
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
  val rotationWire_1 = Wire(Vec(5, Vec(5, UInt(64.W))))
  val rotationWire_2 = Wire(Vec(5, Vec(5, UInt(64.W))))

  for(x <- 0 to 4) {
    for(y <- 0 to 4) {
      rotationWire_1(x)(y) := io.rhoPi_in(x)(y) << r(x)(y)
      rotationWire_2(x)(y) := io.rhoPi_in(x)(y) >> (64.U-r(x)(y))
      io.rhoPi_out(y)(Math.floorMod(2*x+3*y,5)) := rotationWire_1(x)(y) | rotationWire_2(x)(y)
    }
  }
}
