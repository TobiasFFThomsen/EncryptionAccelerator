module Adder(
  input          clock,
  input          reset,
  input  [575:0] io_r_from_round,
  input  [575:0] io_r_from_inp,
  output [575:0] io_res
);
  assign io_res = io_r_from_round + io_r_from_inp; // @[Adder.scala 10:28]
endmodule
