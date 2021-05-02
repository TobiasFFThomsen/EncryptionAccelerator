import chisel3._
import chisel3.util._

class Round extends Module{
  val io            = IO( new Bundle {

    val round_in_0_0 = Input(UInt(64.W))
    val round_in_1_0 = Input(UInt(64.W))
    val round_in_2_0 = Input(UInt(64.W))
    val round_in_3_0 = Input(UInt(64.W))
    val round_in_4_0 = Input(UInt(64.W))
    val round_in_0_1 = Input(UInt(64.W))
    val round_in_1_1 = Input(UInt(64.W))
    val round_in_2_1 = Input(UInt(64.W))
    val round_in_3_1 = Input(UInt(64.W))
    val round_in_4_1 = Input(UInt(64.W))
    val round_in_0_2 = Input(UInt(64.W))
    val round_in_1_2 = Input(UInt(64.W))
    val round_in_2_2 = Input(UInt(64.W))
    val round_in_3_2 = Input(UInt(64.W))
    val round_in_4_2 = Input(UInt(64.W))
    val round_in_0_3 = Input(UInt(64.W))
    val round_in_1_3 = Input(UInt(64.W))
    val round_in_2_3 = Input(UInt(64.W))
    val round_in_3_3 = Input(UInt(64.W))
    val round_in_4_3 = Input(UInt(64.W))
    val round_in_0_4 = Input(UInt(64.W))
    val round_in_1_4 = Input(UInt(64.W))
    val round_in_2_4 = Input(UInt(64.W))
    val round_in_3_4 = Input(UInt(64.W))
    val round_in_4_4 = Input(UInt(64.W))
    val round_out_0_0 = Output(UInt(64.W))
    val round_out_1_0 = Output(UInt(64.W))
    val round_out_2_0 = Output(UInt(64.W))
    val round_out_3_0 = Output(UInt(64.W))
    val round_out_4_0 = Output(UInt(64.W))
    val round_out_0_1 = Output(UInt(64.W))
    val round_out_1_1 = Output(UInt(64.W))
    val round_out_2_1 = Output(UInt(64.W))
    val round_out_3_1 = Output(UInt(64.W))
    val round_out_4_1 = Output(UInt(64.W))
    val round_out_0_2 = Output(UInt(64.W))
    val round_out_1_2 = Output(UInt(64.W))
    val round_out_2_2 = Output(UInt(64.W))
    val round_out_3_2 = Output(UInt(64.W))
    val round_out_4_2 = Output(UInt(64.W))
    val round_out_0_3 = Output(UInt(64.W))
    val round_out_1_3 = Output(UInt(64.W))
    val round_out_2_3 = Output(UInt(64.W))
    val round_out_3_3 = Output(UInt(64.W))
    val round_out_4_3 = Output(UInt(64.W))
    val round_out_0_4 = Output(UInt(64.W))
    val round_out_1_4 = Output(UInt(64.W))
    val round_out_2_4 = Output(UInt(64.W))
    val round_out_3_4 = Output(UInt(64.W))
    val round_out_4_4 = Output(UInt(64.W))

  })

    val theta     = Module(new Theta())
    val rhoPi     = Module(new RhoPi())
    val chi       = Module(new Chi())
    val iota      = Module(new Iota())

    theta.io.theta_in_0_0 := io.round_in_0_0
    theta.io.theta_in_0_1 := io.round_in_0_1
    theta.io.theta_in_0_2 := io.round_in_0_2
    theta.io.theta_in_0_3 := io.round_in_0_3
    theta.io.theta_in_0_4 := io.round_in_0_4

    theta.io.theta_in_1_0 := io.round_in_1_0
    theta.io.theta_in_1_1 := io.round_in_1_1
    theta.io.theta_in_1_2 := io.round_in_1_2
    theta.io.theta_in_1_3 := io.round_in_1_3
    theta.io.theta_in_1_4 := io.round_in_1_4

    theta.io.theta_in_2_0 := io.round_in_2_0
    theta.io.theta_in_2_1 := io.round_in_2_1
    theta.io.theta_in_2_2 := io.round_in_2_2
    theta.io.theta_in_2_3 := io.round_in_2_3
    theta.io.theta_in_2_4 := io.round_in_2_4

    theta.io.theta_in_3_0 := io.round_in_3_0
    theta.io.theta_in_3_1 := io.round_in_3_1
    theta.io.theta_in_3_2 := io.round_in_3_2
    theta.io.theta_in_3_3 := io.round_in_3_3
    theta.io.theta_in_3_4 := io.round_in_3_4

    theta.io.theta_in_4_0 := io.round_in_4_0
    theta.io.theta_in_4_1 := io.round_in_4_1
    theta.io.theta_in_4_2 := io.round_in_4_2
    theta.io.theta_in_4_3 := io.round_in_4_3
    theta.io.theta_in_4_4 := io.round_in_4_4

    rhoPi.io.rhoPi_in_0_1 := theta.io.theta_out_0_1
    rhoPi.io.rhoPi_in_0_2 := theta.io.theta_out_0_2
    rhoPi.io.rhoPi_in_0_0 := theta.io.theta_out_0_0
    rhoPi.io.rhoPi_in_0_3 := theta.io.theta_out_0_3
    rhoPi.io.rhoPi_in_0_4 := theta.io.theta_out_0_4

    rhoPi.io.rhoPi_in_1_0 := theta.io.theta_out_1_0
    rhoPi.io.rhoPi_in_1_1 := theta.io.theta_out_1_1
    rhoPi.io.rhoPi_in_1_2 := theta.io.theta_out_1_2
    rhoPi.io.rhoPi_in_1_3 := theta.io.theta_out_1_3
    rhoPi.io.rhoPi_in_1_4 := theta.io.theta_out_1_4

    rhoPi.io.rhoPi_in_2_0 := theta.io.theta_out_2_0
    rhoPi.io.rhoPi_in_2_1 := theta.io.theta_out_2_1
    rhoPi.io.rhoPi_in_2_2 := theta.io.theta_out_2_2
    rhoPi.io.rhoPi_in_2_3 := theta.io.theta_out_2_3
    rhoPi.io.rhoPi_in_2_4 := theta.io.theta_out_2_4

    rhoPi.io.rhoPi_in_3_0 := theta.io.theta_out_3_0
    rhoPi.io.rhoPi_in_3_1 := theta.io.theta_out_3_1
    rhoPi.io.rhoPi_in_3_2 := theta.io.theta_out_3_2
    rhoPi.io.rhoPi_in_3_3 := theta.io.theta_out_3_3
    rhoPi.io.rhoPi_in_3_4 := theta.io.theta_out_3_4

    rhoPi.io.rhoPi_in_4_0 := theta.io.theta_out_4_0
    rhoPi.io.rhoPi_in_4_1 := theta.io.theta_out_4_1
    rhoPi.io.rhoPi_in_4_2 := theta.io.theta_out_4_2
    rhoPi.io.rhoPi_in_4_3 := theta.io.theta_out_4_3
    rhoPi.io.rhoPi_in_4_4 := theta.io.theta_out_4_4

    chi.io.chi_in_0_0 := rhoPi.io.rhoPi_out_0_0
    chi.io.chi_in_0_1 := rhoPi.io.rhoPi_out_0_1
    chi.io.chi_in_0_2 := rhoPi.io.rhoPi_out_0_2
    chi.io.chi_in_0_3 := rhoPi.io.rhoPi_out_0_3
    chi.io.chi_in_0_4 := rhoPi.io.rhoPi_out_0_4

    chi.io.chi_in_1_0 := rhoPi.io.rhoPi_out_1_0
    chi.io.chi_in_1_1 := rhoPi.io.rhoPi_out_1_1
    chi.io.chi_in_1_2 := rhoPi.io.rhoPi_out_1_2
    chi.io.chi_in_1_3 := rhoPi.io.rhoPi_out_1_3
    chi.io.chi_in_1_4 := rhoPi.io.rhoPi_out_1_4

    chi.io.chi_in_2_0 := rhoPi.io.rhoPi_out_2_0
    chi.io.chi_in_2_1 := rhoPi.io.rhoPi_out_2_1
    chi.io.chi_in_2_2 := rhoPi.io.rhoPi_out_2_2
    chi.io.chi_in_2_3 := rhoPi.io.rhoPi_out_2_3
    chi.io.chi_in_2_4 := rhoPi.io.rhoPi_out_2_4

    chi.io.chi_in_3_0 := rhoPi.io.rhoPi_out_3_0
    chi.io.chi_in_3_1 := rhoPi.io.rhoPi_out_3_1
    chi.io.chi_in_3_2 := rhoPi.io.rhoPi_out_3_2
    chi.io.chi_in_3_3 := rhoPi.io.rhoPi_out_3_3
    chi.io.chi_in_3_4 := rhoPi.io.rhoPi_out_3_4

    chi.io.chi_in_4_0 := rhoPi.io.rhoPi_out_4_0
    chi.io.chi_in_4_1 := rhoPi.io.rhoPi_out_4_1
    chi.io.chi_in_4_2 := rhoPi.io.rhoPi_out_4_2
    chi.io.chi_in_4_3 := rhoPi.io.rhoPi_out_4_3
    chi.io.chi_in_4_4 := rhoPi.io.rhoPi_out_4_4

    iota.io.iota_in    := chi.io.chi_in_0_0

    io.round_out_0_0 := iota.io.iota_out
    io.round_out_0_1 := chi.io.chi_out_0_1
    io.round_out_0_2 := chi.io.chi_out_0_2
    io.round_out_0_3 := chi.io.chi_out_0_3
    io.round_out_0_4 := chi.io.chi_out_0_4

    io.round_out_1_0 := chi.io.chi_out_1_0
    io.round_out_1_1 := chi.io.chi_out_1_1
    io.round_out_1_2 := chi.io.chi_out_1_2
    io.round_out_1_3 := chi.io.chi_out_1_3
    io.round_out_1_4 := chi.io.chi_out_1_4

    io.round_out_2_0 := chi.io.chi_out_2_0
    io.round_out_2_1 := chi.io.chi_out_2_1
    io.round_out_2_2 := chi.io.chi_out_2_2
    io.round_out_2_3 := chi.io.chi_out_2_3
    io.round_out_2_4 := chi.io.chi_out_2_4

    io.round_out_3_0 := chi.io.chi_out_3_0
    io.round_out_3_1 := chi.io.chi_out_3_1
    io.round_out_3_2 := chi.io.chi_out_3_2
    io.round_out_3_3 := chi.io.chi_out_3_3
    io.round_out_3_4 := chi.io.chi_out_3_4

    io.round_out_4_0 := chi.io.chi_out_4_0
    io.round_out_4_1 := chi.io.chi_out_4_1
    io.round_out_4_2 := chi.io.chi_out_4_2
    io.round_out_4_3 := chi.io.chi_out_4_3
    io.round_out_4_4 := chi.io.chi_out_4_4


    val idle :: read_buffer :: write_buffer :: Nil = Enum(3)

}
/**
 * An object extending App to generate the Verilog code.
 */

/*
object HelloMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Round())
}
*/