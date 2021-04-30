module Buffer(
  input         clock,
  input         reset,
  input  [63:0] io_buffer_in,
  input         io_enable,
  output [63:0] io_buffer_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] bufferReg_1; // @[Buffer.scala 10:24]
  reg [63:0] bufferReg_2; // @[Buffer.scala 11:24]
  reg [63:0] bufferReg_3; // @[Buffer.scala 12:24]
  reg [63:0] bufferReg_4; // @[Buffer.scala 13:24]
  reg [63:0] bufferReg_5; // @[Buffer.scala 14:24]
  reg [63:0] bufferReg_6; // @[Buffer.scala 15:24]
  reg [63:0] bufferReg_7; // @[Buffer.scala 16:24]
  reg [63:0] bufferReg_8; // @[Buffer.scala 17:24]
  reg [63:0] bufferReg_9; // @[Buffer.scala 18:24]
  assign io_buffer_out = bufferReg_9; // @[Buffer.scala 31:17]
  always @(posedge clock) begin
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_1 <= io_buffer_in; // @[Buffer.scala 21:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_2 <= bufferReg_1; // @[Buffer.scala 22:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_3 <= bufferReg_2; // @[Buffer.scala 23:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_4 <= bufferReg_3; // @[Buffer.scala 24:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_5 <= bufferReg_4; // @[Buffer.scala 25:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_6 <= bufferReg_5; // @[Buffer.scala 26:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_7 <= bufferReg_6; // @[Buffer.scala 27:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_8 <= bufferReg_7; // @[Buffer.scala 28:21]
    end
    if (io_enable) begin // @[Buffer.scala 20:18]
      bufferReg_9 <= bufferReg_8; // @[Buffer.scala 29:21]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  bufferReg_1 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  bufferReg_2 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  bufferReg_3 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  bufferReg_4 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  bufferReg_5 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  bufferReg_6 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  bufferReg_7 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  bufferReg_8 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  bufferReg_9 = _RAND_8[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
