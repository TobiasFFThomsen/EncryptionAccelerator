import chisel3._
import org.scalacheck.Prop.False

/*
class RSA extends Module{
  val io = IO(new Bundle{
    // We current only accept input messages pr. byte, corresponding to an ASCII character
    val text = Input(UInt(8.W)) // message text m or cipher text c
    val key = Input(UInt(17.W)) // public exponent e or private exponent d. e should always be 65537 for higher general security
    val n = Input(UInt(4096.W)) // The modulo value
    val
    val result = Output(UInt(8.W))
  })
}
*/

class SAM extends Module {
  /*
  Computes w = b^t mod n
  Usage:
  b, t, and n must be valid when requesting result
  valid_in must be raised and held high while operation is running (until valid_out is raised).
  */
  val io = IO(new Bundle{
    // b, t, n, w
    val b: UInt = Input(UInt(8.W))
    val t: UInt = Input(UInt(8.W))
    val n: UInt = Input(UInt(8.W))
    val result: UInt = Output(UInt(8.W))
    //Control signals
    val valid_in: Bool = Input(Bool())
    val valid_out: Bool = Output(Bool())
  })
  //Initial values
  val run_reg: Bool = RegInit(false.B);
  val progress_reg: UInt = RegInit(0.U(8.W));
  val edge_high_reg:Bool = RegInit(false.B);
  val w: UInt = RegInit(1.U(8.W));
  val result: UInt = RegInit(0.U(8.W));
  when (run_reg){
    io.valid_out := false.B;
  }.otherwise{
    io.valid_in := true.B;
  }
  // Edge triggered run of operations
  // Start computing if:
  // 1) Not already computing
  // 2) valid input signal is raised
  // 3) valid input signal was not raised raised on prior cycle
  /*
  edge_high_reg := io.valid_in;
  when (!run_reg & io.valid_in & !edge_high_reg){
    //Initialize computation
    w := 1.U;
    progress_reg := 0.U;
    run_reg := true.B;
    io.valid_out := false.B;
  }

  //Compute result
  when (run_reg){
    progress_reg := progress_reg + 1.U;
    when(progress_reg === (io.t.getWidth.asUInt() + 1.U)){
      // Done. Set result to output.
      io.valid_out := true.B;
      run_reg := false.B;
    }.elsewhen(io.t(progress_reg - 1.U)){
      // Square and multiply
      w := ((w * w) * io.b) % io.n;
    }.otherwise{
      // Square
      w := (w * w) % io.n;
    }
  }
  // result output is just always set to w. valid_out signals whether it's usable.
  io.result := w;
  printf(p"w = $w")
   */
}