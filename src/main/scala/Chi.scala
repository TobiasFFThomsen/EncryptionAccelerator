import chisel3._

class Chi extends Module {
  val io          = IO( new Bundle {
    /*
    val chi_in  = Input(Vec(5, Vec(5,UInt(64.W))))
    val chi_out = Output(Vec(5, Vec(5,UInt(64.W))))

     */
    val chi_in_0_0 = Input(UInt(64.W))
    val chi_in_1_0 = Input(UInt(64.W))
    val chi_in_2_0 = Input(UInt(64.W))
    val chi_in_3_0 = Input(UInt(64.W))
    val chi_in_4_0 = Input(UInt(64.W))

    val chi_in_0_1 = Input(UInt(64.W))
    val chi_in_1_1 = Input(UInt(64.W))
    val chi_in_2_1 = Input(UInt(64.W))
    val chi_in_3_1 = Input(UInt(64.W))
    val chi_in_4_1 = Input(UInt(64.W))

    val chi_in_0_2 = Input(UInt(64.W))
    val chi_in_1_2 = Input(UInt(64.W))
    val chi_in_2_2 = Input(UInt(64.W))
    val chi_in_3_2 = Input(UInt(64.W))
    val chi_in_4_2 = Input(UInt(64.W))

    val chi_in_0_3 = Input(UInt(64.W))
    val chi_in_1_3 = Input(UInt(64.W))
    val chi_in_2_3 = Input(UInt(64.W))
    val chi_in_3_3 = Input(UInt(64.W))
    val chi_in_4_3 = Input(UInt(64.W))

    val chi_in_0_4 = Input(UInt(64.W))
    val chi_in_1_4 = Input(UInt(64.W))
    val chi_in_2_4 = Input(UInt(64.W))
    val chi_in_3_4 = Input(UInt(64.W))
    val chi_in_4_4 = Input(UInt(64.W))

    val chi_out_0_0 = Output(UInt(64.W))
    val chi_out_1_0 = Output(UInt(64.W))
    val chi_out_2_0 = Output(UInt(64.W))
    val chi_out_3_0 = Output(UInt(64.W))
    val chi_out_4_0 = Output(UInt(64.W))

    val chi_out_0_1 = Output(UInt(64.W))
    val chi_out_1_1 = Output(UInt(64.W))
    val chi_out_2_1 = Output(UInt(64.W))
    val chi_out_3_1 = Output(UInt(64.W))
    val chi_out_4_1 = Output(UInt(64.W))

    val chi_out_0_2 = Output(UInt(64.W))
    val chi_out_1_2 = Output(UInt(64.W))
    val chi_out_2_2 = Output(UInt(64.W))
    val chi_out_3_2 = Output(UInt(64.W))
    val chi_out_4_2 = Output(UInt(64.W))

    val chi_out_0_3 = Output(UInt(64.W))
    val chi_out_1_3 = Output(UInt(64.W))
    val chi_out_2_3 = Output(UInt(64.W))
    val chi_out_3_3 = Output(UInt(64.W))
    val chi_out_4_3 = Output(UInt(64.W))

    val chi_out_0_4 = Output(UInt(64.W))
    val chi_out_1_4 = Output(UInt(64.W))
    val chi_out_2_4 = Output(UInt(64.W))
    val chi_out_3_4 = Output(UInt(64.W))
    val chi_out_4_4 = Output(UInt(64.W))

  })

  /*Chi*/
  /*
  val chi_wire     = Wire(Vec(5,Vec(5,UInt(64.W))))
  val chi_b_wire   = Wire(Vec(5,Vec(5,UInt(64.W))))
  val chi_not_wire = Wire(Vec(5,Vec(5,UInt(64.W))))

   */

  val chi_xor_rhs_0_0 = Wire(UInt(64.W))
  val chi_xor_rhs_1_0 = Wire(UInt(64.W))
  val chi_xor_rhs_2_0 = Wire(UInt(64.W))
  val chi_xor_rhs_3_0 = Wire(UInt(64.W))
  val chi_xor_rhs_4_0 = Wire(UInt(64.W))

  val chi_xor_rhs_0_1 = Wire(UInt(64.W))
  val chi_xor_rhs_1_1 = Wire(UInt(64.W))
  val chi_xor_rhs_2_1 = Wire(UInt(64.W))
  val chi_xor_rhs_3_1 = Wire(UInt(64.W))
  val chi_xor_rhs_4_1 = Wire(UInt(64.W))

  val chi_xor_rhs_0_2 = Wire(UInt(64.W))
  val chi_xor_rhs_1_2 = Wire(UInt(64.W))
  val chi_xor_rhs_2_2 = Wire(UInt(64.W))
  val chi_xor_rhs_3_2 = Wire(UInt(64.W))
  val chi_xor_rhs_4_2 = Wire(UInt(64.W))

  val chi_xor_rhs_0_3 = Wire(UInt(64.W))
  val chi_xor_rhs_1_3 = Wire(UInt(64.W))
  val chi_xor_rhs_2_3 = Wire(UInt(64.W))
  val chi_xor_rhs_3_3 = Wire(UInt(64.W))
  val chi_xor_rhs_4_3 = Wire(UInt(64.W))

  val chi_xor_rhs_0_4 = Wire(UInt(64.W))
  val chi_xor_rhs_1_4 = Wire(UInt(64.W))
  val chi_xor_rhs_2_4 = Wire(UInt(64.W))
  val chi_xor_rhs_3_4 = Wire(UInt(64.W))
  val chi_xor_rhs_4_4 = Wire(UInt(64.W))


  val chi_negation_0_0 = Wire(UInt(64.W))
  val chi_negation_1_0 = Wire(UInt(64.W))
  val chi_negation_2_0 = Wire(UInt(64.W))
  val chi_negation_3_0 = Wire(UInt(64.W))
  val chi_negation_4_0 = Wire(UInt(64.W))

  val chi_negation_0_1 = Wire(UInt(64.W))
  val chi_negation_1_1 = Wire(UInt(64.W))
  val chi_negation_2_1 = Wire(UInt(64.W))
  val chi_negation_3_1 = Wire(UInt(64.W))
  val chi_negation_4_1 = Wire(UInt(64.W))

  val chi_negation_0_2 = Wire(UInt(64.W))
  val chi_negation_1_2 = Wire(UInt(64.W))
  val chi_negation_2_2 = Wire(UInt(64.W))
  val chi_negation_3_2 = Wire(UInt(64.W))
  val chi_negation_4_2 = Wire(UInt(64.W))

  val chi_negation_0_3 = Wire(UInt(64.W))
  val chi_negation_1_3 = Wire(UInt(64.W))
  val chi_negation_2_3 = Wire(UInt(64.W))
  val chi_negation_3_3 = Wire(UInt(64.W))
  val chi_negation_4_3 = Wire(UInt(64.W))

  val chi_negation_0_4 = Wire(UInt(64.W))
  val chi_negation_1_4 = Wire(UInt(64.W))
  val chi_negation_2_4 = Wire(UInt(64.W))
  val chi_negation_3_4 = Wire(UInt(64.W))
  val chi_negation_4_4 = Wire(UInt(64.W))

/*
  val chi_temp_0_0 = Wire(UInt(64.W))
  val chi_temp_1_0 = Wire(UInt(64.W))
  val chi_temp_2_0 = Wire(UInt(64.W))
  val chi_temp_3_0 = Wire(UInt(64.W))
  val chi_temp_4_0 = Wire(UInt(64.W))

  val chi_temp_0_1 = Wire(UInt(64.W))
  val chi_temp_1_1 = Wire(UInt(64.W))
  val chi_temp_2_1 = Wire(UInt(64.W))
  val chi_temp_3_1 = Wire(UInt(64.W))
  val chi_temp_4_1 = Wire(UInt(64.W))

  val chi_temp_0_2 = Wire(UInt(64.W))
  val chi_temp_1_2 = Wire(UInt(64.W))
  val chi_temp_2_2 = Wire(UInt(64.W))
  val chi_temp_3_2 = Wire(UInt(64.W))
  val chi_temp_4_2 = Wire(UInt(64.W))

  val chi_temp_0_3 = Wire(UInt(64.W))
  val chi_temp_1_3 = Wire(UInt(64.W))
  val chi_temp_2_3 = Wire(UInt(64.W))
  val chi_temp_3_3 = Wire(UInt(64.W))
  val chi_temp_4_3 = Wire(UInt(64.W))

  val chi_temp_0_4 = Wire(UInt(64.W))
  val chi_temp_1_4 = Wire(UInt(64.W))
  val chi_temp_2_4 = Wire(UInt(64.W))
  val chi_temp_3_4 = Wire(UInt(64.W))
  val chi_temp_4_4 = Wire(UInt(64.W))
*/


  /*
  for(x <- 0 to 4) {
    for(y <- 0 to 4) {
      chi_not_wire(x)(y) := ~io.chi_in(Math.floorMod(x+1,5))(y)
      chi_wire(x)(y) :=  chi_not_wire(x)(y) & io.chi_in(Math.floorMod(x+2,5))(y)
      chi_b_wire(x)(y) := io.chi_in(x)(y)
      io.chi_out(x)(y) := chi_b_wire(x)(y) ^ chi_wire(x)(y)
    }
  }

   */
    chi_negation_0_0 := ~io.chi_in_1_0
    chi_negation_0_1 := ~io.chi_in_1_1
    chi_negation_0_2 := ~io.chi_in_1_2
    chi_negation_0_3 := ~io.chi_in_1_3
    chi_negation_0_4 := ~io.chi_in_1_4

    chi_negation_1_0 := ~io.chi_in_2_0
    chi_negation_1_1 := ~io.chi_in_2_1
    chi_negation_1_2 := ~io.chi_in_2_2
    chi_negation_1_3 := ~io.chi_in_2_3
    chi_negation_1_4 := ~io.chi_in_2_4

    chi_negation_2_0 := ~io.chi_in_3_0
    chi_negation_2_1 := ~io.chi_in_3_1
    chi_negation_2_2 := ~io.chi_in_3_2
    chi_negation_2_3 := ~io.chi_in_3_3
    chi_negation_2_4 := ~io.chi_in_3_4

    chi_negation_3_0 := ~io.chi_in_4_0
    chi_negation_3_1 := ~io.chi_in_4_1
    chi_negation_3_2 := ~io.chi_in_4_2
    chi_negation_3_3 := ~io.chi_in_4_3
    chi_negation_3_4 := ~io.chi_in_4_4

    chi_negation_4_0 := ~io.chi_in_0_0
    chi_negation_4_1 := ~io.chi_in_0_1
    chi_negation_4_2 := ~io.chi_in_0_2
    chi_negation_4_3 := ~io.chi_in_0_3
    chi_negation_4_4 := ~io.chi_in_0_4

    chi_xor_rhs_0_0 := chi_negation_0_0 & io.chi_in_2_0
    chi_xor_rhs_0_1 := chi_negation_0_1 & io.chi_in_2_1
    chi_xor_rhs_0_2 := chi_negation_0_2 & io.chi_in_2_2
    chi_xor_rhs_0_3 := chi_negation_0_3 & io.chi_in_2_3
    chi_xor_rhs_0_4 := chi_negation_0_4 & io.chi_in_2_4

    chi_xor_rhs_1_0 := chi_negation_1_0 & io.chi_in_3_0
    chi_xor_rhs_1_1 := chi_negation_1_1 & io.chi_in_3_1
    chi_xor_rhs_1_2 := chi_negation_1_2 & io.chi_in_3_2
    chi_xor_rhs_1_3 := chi_negation_1_3 & io.chi_in_3_3
    chi_xor_rhs_1_4 := chi_negation_1_4 & io.chi_in_3_4

    chi_xor_rhs_2_0 := chi_negation_2_0 & io.chi_in_4_0
    chi_xor_rhs_2_1 := chi_negation_2_1 & io.chi_in_4_1
    chi_xor_rhs_2_2 := chi_negation_2_2 & io.chi_in_4_2
    chi_xor_rhs_2_3 := chi_negation_2_3 & io.chi_in_4_3
    chi_xor_rhs_2_4 := chi_negation_2_4 & io.chi_in_4_4

    chi_xor_rhs_3_0 := chi_negation_3_0 & io.chi_in_0_0
    chi_xor_rhs_3_1 := chi_negation_3_1 & io.chi_in_0_1
    chi_xor_rhs_3_2 := chi_negation_3_2 & io.chi_in_0_2
    chi_xor_rhs_3_3 := chi_negation_3_3 & io.chi_in_0_3
    chi_xor_rhs_3_4 := chi_negation_3_4 & io.chi_in_0_4

    chi_xor_rhs_4_0 := chi_negation_4_0 & io.chi_in_1_0
    chi_xor_rhs_4_1 := chi_negation_4_1 & io.chi_in_1_1
    chi_xor_rhs_4_2 := chi_negation_4_2 & io.chi_in_1_2
    chi_xor_rhs_4_3 := chi_negation_4_3 & io.chi_in_1_3
    chi_xor_rhs_4_4 := chi_negation_4_4 & io.chi_in_1_4

  /*
    chi_temp_0_0 := io.chi_in_0_0
    chi_temp_0_1 := io.chi_in_0_1
    chi_temp_0_2 := io.chi_in_0_2
    chi_temp_0_3 := io.chi_in_0_3
    chi_temp_0_4 := io.chi_in_0_4

    chi_temp_0_1 := io.chi_in_1_0
    chi_temp_1_1 := io.chi_in_1_1
    chi_temp_2_1 := io.chi_in_1_2
    chi_temp_3_1 := io.chi_in_1_3
    chi_temp_4_1 := io.chi_in_1_4

    chi_temp_0_2 := io.chi_in_2_0
    chi_temp_1_2 := io.chi_in_2_1
    chi_temp_2_2 := io.chi_in_2_2
    chi_temp_3_2 := io.chi_in_2_3
    chi_temp_4_2 := io.chi_in_2_4

    chi_temp_0_3 := io.chi_in_3_0
    chi_temp_1_3 := io.chi_in_3_1
    chi_temp_2_3 := io.chi_in_3_2
    chi_temp_3_3 := io.chi_in_3_3
    chi_temp_4_3 := io.chi_in_3_4

    chi_temp_0_4 := io.chi_in_4_0
    chi_temp_1_4 := io.chi_in_4_1
    chi_temp_2_4 := io.chi_in_4_2
    chi_temp_3_4 := io.chi_in_4_3
    chi_temp_4_4 := io.chi_in_4_4

    io.chi_out_0_0 := chi_temp_0_0^chi_xor_rhs_0_0
    io.chi_out_0_1 := chi_temp_0_1^chi_xor_rhs_0_1
    io.chi_out_0_2 := chi_temp_0_2^chi_xor_rhs_0_2
    io.chi_out_0_3 := chi_temp_0_3^chi_xor_rhs_0_3
    io.chi_out_0_4 := chi_temp_0_4^chi_xor_rhs_0_4

    io.chi_out_1_0 := chi_temp_1_0^chi_xor_rhs_1_0
    io.chi_out_1_1 := chi_temp_1_1^chi_xor_rhs_1_1
    io.chi_out_1_2 := chi_temp_1_2^chi_xor_rhs_1_2
    io.chi_out_1_3 := chi_temp_1_3^chi_xor_rhs_1_3
    io.chi_out_1_4 := chi_temp_1_4^chi_xor_rhs_1_4

    io.chi_out_2_0 := chi_temp_2_0^chi_xor_rhs_2_0
    io.chi_out_2_1 := chi_temp_2_1^chi_xor_rhs_2_1
    io.chi_out_2_2 := chi_temp_2_2^chi_xor_rhs_2_2
    io.chi_out_2_3 := chi_temp_2_3^chi_xor_rhs_2_3
    io.chi_out_2_4 := chi_temp_2_4^chi_xor_rhs_2_4

    io.chi_out_3_0 := chi_temp_3_0^chi_xor_rhs_3_0
    io.chi_out_3_1 := chi_temp_3_1^chi_xor_rhs_3_1
    io.chi_out_3_2 := chi_temp_3_2^chi_xor_rhs_3_2
    io.chi_out_3_3 := chi_temp_3_3^chi_xor_rhs_3_3
    io.chi_out_3_4 := chi_temp_3_4^chi_xor_rhs_3_4

    io.chi_out_4_0 := chi_temp_4_0^chi_xor_rhs_4_0
    io.chi_out_4_1 := chi_temp_4_1^chi_xor_rhs_4_1
    io.chi_out_4_2 := chi_temp_4_2^chi_xor_rhs_4_2
    io.chi_out_4_3 := chi_temp_4_3^chi_xor_rhs_4_3
    io.chi_out_4_4 := chi_temp_4_4^chi_xor_rhs_4_4
*/

    io.chi_out_0_0 := io.chi_in_0_0^chi_xor_rhs_0_0
    io.chi_out_0_1 := io.chi_in_0_1^chi_xor_rhs_0_1
    io.chi_out_0_2 := io.chi_in_0_2^chi_xor_rhs_0_2
    io.chi_out_0_3 := io.chi_in_0_3^chi_xor_rhs_0_3
    io.chi_out_0_4 := io.chi_in_0_4^chi_xor_rhs_0_4

    io.chi_out_1_0 := io.chi_in_1_0^chi_xor_rhs_1_0
    io.chi_out_1_1 := io.chi_in_1_1^chi_xor_rhs_1_1
    io.chi_out_1_2 := io.chi_in_1_2^chi_xor_rhs_1_2
    io.chi_out_1_3 := io.chi_in_1_3^chi_xor_rhs_1_3
    io.chi_out_1_4 := io.chi_in_1_4^chi_xor_rhs_1_4

    io.chi_out_2_0 := io.chi_in_2_0^chi_xor_rhs_2_0
    io.chi_out_2_1 := io.chi_in_2_1^chi_xor_rhs_2_1
    io.chi_out_2_2 := io.chi_in_2_2^chi_xor_rhs_2_2
    io.chi_out_2_3 := io.chi_in_2_3^chi_xor_rhs_2_3
    io.chi_out_2_4 := io.chi_in_2_4^chi_xor_rhs_2_4

    io.chi_out_3_0 := io.chi_in_3_0^chi_xor_rhs_3_0
    io.chi_out_3_1 := io.chi_in_3_1^chi_xor_rhs_3_1
    io.chi_out_3_2 := io.chi_in_3_2^chi_xor_rhs_3_2
    io.chi_out_3_3 := io.chi_in_3_3^chi_xor_rhs_3_3
    io.chi_out_3_4 := io.chi_in_3_4^chi_xor_rhs_3_4

    io.chi_out_4_0 := io.chi_in_4_0^chi_xor_rhs_4_0
    io.chi_out_4_1 := io.chi_in_4_1^chi_xor_rhs_4_1
    io.chi_out_4_2 := io.chi_in_4_2^chi_xor_rhs_4_2
    io.chi_out_4_3 := io.chi_in_4_3^chi_xor_rhs_4_3
    io.chi_out_4_4 := io.chi_in_4_4^chi_xor_rhs_4_4
}
