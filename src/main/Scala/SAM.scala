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
    val b = Input(UInt(8.W))
    val t = Input(UInt(8.W))
    val n = Input(UInt(8.W))
    val result = Output(UInt(8.W))
    //Control signals
    val valid_in = Input(Bool())
    val valid_out = Output(Bool())
  })
  //Initial values
  val run_reg: Bool = RegInit(false.B);
  val progress_reg: UInt = RegInit(0.U);
  val edge_high_reg:Bool = RegInit(false.B);
  val w: UInt = RegInit(1.U);
  val result: UInt = RegInit(0.U);

  // Edge triggered run of operations
  // Start computing if:
  // 1) Not already computing
  // 2) valid input signal is raised
  // 3) valid input signal was not raised raised on prior cycle
  edge_high_reg := io.valid_in;
  when (!run_reg & io.valid_in & !edge_high_reg){
    //Initialize computation
    w := 1.U;
    run_reg := true.B;
    io.valid_out := false.B;
  }

  //Compute result
  // w needs time to reset
  when (run_reg){
    // Square
    progress_reg := progress_reg + 1;
    w := w * w

    // Multiply if bit is high
    when (io.t(progress_reg - 1.U)){
      w := w * io.b;
    }

    when(progress_reg === io.t.getWidth + 1.U){
      result := w;
      progress_reg := 0.U;
      io.valid_out := true.B;
      run_reg := false.B;
    }
  }
  io.result := result;
}