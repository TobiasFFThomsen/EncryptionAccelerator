import chisel3._


class Theta extends Module{
    val io          = IO( new Bundle {
      val theta_in  = Input(Vec(5, Vec(5,UInt(64.W))))
      val theta_out = Output(Vec(5, Vec(5,UInt(64.W))))
      val c_out     = Output(Vec(5,UInt(64.W)))
      val d_out     = Output(Vec(5,UInt(64.W)))
    })

  val st  = Wire(Vec(5,Vec(5,UInt(64.W))))

  /*Intermediate rotation wire*/
  val rotation1 = Wire(Vec(5,UInt(64.W)))
  val rotation2 = Wire(Vec(5,UInt(64.W)))
  val rotation_result = Wire(Vec(5,UInt(64.W)))

  for(row <- 0 to 4){
    for(col <- 0 to 4){
      io.theta_out(row)(col) := 0.U
    }
  }

  for(x <- 0 to 4){
    rotation1(x) := 0.U
    rotation2(x) := 0.U
  }

  var first_c_index = 0
  var last_c_index = 0

  /*Theta*/
  val c = Wire(Vec(5,UInt(64.W)))
  val d = Wire(Vec(5,UInt(64.W)))

  for(x <- 0 to 4){
    c(x) := io.theta_in(x)(0)^io.theta_in(x)(1)^io.theta_in(x)(2)^io.theta_in(x)(3)^io.theta_in(x)(4)
  }

  for(x <- 0 to 4){
    first_c_index = Math.floorMod(x-1,5)
    last_c_index  = Math.floorMod(x+1,5)
    rotation1(x)        := (c(last_c_index)<<1)
    rotation2(x)        := (c(last_c_index)>>(64-1))
    rotation_result(x)  := rotation1(x) | rotation2(x)
    d(x)  := c(first_c_index)^rotation_result(x)

  }

  for(x <- 0 to 4)
    for(y <- 0 to 4)
        st(x)(y) := io.theta_in(x)(y)^d(x)

  io.theta_out := st
  io.d_out := d
  io.c_out := c
}




