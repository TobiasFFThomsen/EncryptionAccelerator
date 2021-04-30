module StateRegister(
  input         clock,
  input         reset,
  input  [63:0] io_state_in_2_0,
  input  [63:0] io_state_in_3_0,
  input  [63:0] io_state_in_0_0,
  input  [63:0] io_state_in_1_0,
  input  [63:0] io_state_in_4_0,
  input  [63:0] io_state_in_0_1,
  input  [63:0] io_state_in_1_1,
  input  [63:0] io_state_in_2_1,
  input  [63:0] io_state_in_3_1,
  input  [63:0] io_state_in_4_1,
  input  [63:0] io_state_in_0_2,
  input  [63:0] io_state_in_1_2,
  input  [63:0] io_state_in_2_2,
  input  [63:0] io_state_in_3_2,
  input  [63:0] io_state_in_4_2,
  input  [63:0] io_state_in_0_3,
  input  [63:0] io_state_in_1_3,
  input  [63:0] io_state_in_2_3,
  input  [63:0] io_state_in_3_3,
  input  [63:0] io_state_in_4_3,
  input  [63:0] io_state_in_0_4,
  input  [63:0] io_state_in_1_4,
  input  [63:0] io_state_in_2_4,
  input  [63:0] io_state_in_3_4,
  input  [63:0] io_state_in_4_4,
  output [63:0] io_state_out_0_0,
  output [63:0] io_state_out_1_0,
  output [63:0] io_state_out_2_0,
  output [63:0] io_state_out_3_0,
  output [63:0] io_state_out_4_0,
  output [63:0] io_state_out_0_1,
  output [63:0] io_state_out_1_1,
  output [63:0] io_state_out_2_1,
  output [63:0] io_state_out_3_1,
  output [63:0] io_state_out_4_1,
  output [63:0] io_state_out_0_2,
  output [63:0] io_state_out_1_2,
  output [63:0] io_state_out_2_2,
  output [63:0] io_state_out_3_2,
  output [63:0] io_state_out_4_2,
  output [63:0] io_state_out_0_3,
  output [63:0] io_state_out_1_3,
  output [63:0] io_state_out_2_3,
  output [63:0] io_state_out_3_3,
  output [63:0] io_state_out_4_3,
  output [63:0] io_state_out_0_4,
  output [63:0] io_state_out_1_4,
  output [63:0] io_state_out_2_4,
  output [63:0] io_state_out_3_4,
  output [63:0] io_state_out_4_4
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
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] state_2_0_reg; // @[StateRegister.scala 66:30]
  reg [63:0] state_3_0_reg; // @[StateRegister.scala 67:30]
  reg [63:0] state_0_0_reg; // @[StateRegister.scala 68:30]
  reg [63:0] state_1_0_reg; // @[StateRegister.scala 69:30]
  reg [63:0] state_4_0_reg; // @[StateRegister.scala 70:30]
  reg [63:0] state_0_1_reg; // @[StateRegister.scala 72:31]
  reg [63:0] state_1_1_reg; // @[StateRegister.scala 73:31]
  reg [63:0] state_2_1_reg; // @[StateRegister.scala 74:31]
  reg [63:0] state_3_1_reg; // @[StateRegister.scala 75:31]
  reg [63:0] state_4_1_reg; // @[StateRegister.scala 76:31]
  reg [63:0] state_0_2_reg; // @[StateRegister.scala 78:31]
  reg [63:0] state_1_2_reg; // @[StateRegister.scala 79:31]
  reg [63:0] state_2_2_reg; // @[StateRegister.scala 80:31]
  reg [63:0] state_3_2_reg; // @[StateRegister.scala 81:31]
  reg [63:0] state_4_2_reg; // @[StateRegister.scala 82:31]
  reg [63:0] state_0_3_reg; // @[StateRegister.scala 84:31]
  reg [63:0] state_1_3_reg; // @[StateRegister.scala 85:31]
  reg [63:0] state_2_3_reg; // @[StateRegister.scala 86:31]
  reg [63:0] state_3_3_reg; // @[StateRegister.scala 87:31]
  reg [63:0] state_4_3_reg; // @[StateRegister.scala 88:31]
  reg [63:0] state_0_4_reg; // @[StateRegister.scala 90:31]
  reg [63:0] state_1_4_reg; // @[StateRegister.scala 91:31]
  reg [63:0] state_2_4_reg; // @[StateRegister.scala 92:31]
  reg [63:0] state_3_4_reg; // @[StateRegister.scala 93:31]
  reg [63:0] state_4_4_reg; // @[StateRegister.scala 94:31]
  assign io_state_out_0_0 = state_2_0_reg; // @[StateRegister.scala 126:20]
  assign io_state_out_1_0 = state_3_0_reg; // @[StateRegister.scala 127:20]
  assign io_state_out_2_0 = state_0_0_reg; // @[StateRegister.scala 128:20]
  assign io_state_out_3_0 = state_1_0_reg; // @[StateRegister.scala 129:20]
  assign io_state_out_4_0 = state_4_0_reg; // @[StateRegister.scala 130:20]
  assign io_state_out_0_1 = state_0_1_reg; // @[StateRegister.scala 132:20]
  assign io_state_out_1_1 = state_1_1_reg; // @[StateRegister.scala 133:20]
  assign io_state_out_2_1 = state_2_1_reg; // @[StateRegister.scala 134:20]
  assign io_state_out_3_1 = state_3_1_reg; // @[StateRegister.scala 135:20]
  assign io_state_out_4_1 = state_4_1_reg; // @[StateRegister.scala 136:20]
  assign io_state_out_0_2 = state_0_2_reg; // @[StateRegister.scala 138:20]
  assign io_state_out_1_2 = state_1_2_reg; // @[StateRegister.scala 139:20]
  assign io_state_out_2_2 = state_2_2_reg; // @[StateRegister.scala 140:20]
  assign io_state_out_3_2 = state_3_2_reg; // @[StateRegister.scala 141:20]
  assign io_state_out_4_2 = state_4_2_reg; // @[StateRegister.scala 142:20]
  assign io_state_out_0_3 = state_0_3_reg; // @[StateRegister.scala 144:20]
  assign io_state_out_1_3 = state_1_3_reg; // @[StateRegister.scala 145:20]
  assign io_state_out_2_3 = state_2_3_reg; // @[StateRegister.scala 146:20]
  assign io_state_out_3_3 = state_3_3_reg; // @[StateRegister.scala 147:20]
  assign io_state_out_4_3 = state_4_3_reg; // @[StateRegister.scala 148:20]
  assign io_state_out_0_4 = state_0_4_reg; // @[StateRegister.scala 150:20]
  assign io_state_out_1_4 = state_1_4_reg; // @[StateRegister.scala 151:20]
  assign io_state_out_2_4 = state_2_4_reg; // @[StateRegister.scala 152:20]
  assign io_state_out_3_4 = state_3_4_reg; // @[StateRegister.scala 153:20]
  assign io_state_out_4_4 = state_4_4_reg; // @[StateRegister.scala 154:20]
  always @(posedge clock) begin
    if (reset) begin // @[StateRegister.scala 66:30]
      state_2_0_reg <= 64'h0; // @[StateRegister.scala 66:30]
    end else begin
      state_2_0_reg <= io_state_in_2_0; // @[StateRegister.scala 96:17]
    end
    if (reset) begin // @[StateRegister.scala 67:30]
      state_3_0_reg <= 64'h0; // @[StateRegister.scala 67:30]
    end else begin
      state_3_0_reg <= io_state_in_3_0; // @[StateRegister.scala 97:17]
    end
    if (reset) begin // @[StateRegister.scala 68:30]
      state_0_0_reg <= 64'h0; // @[StateRegister.scala 68:30]
    end else begin
      state_0_0_reg <= io_state_in_0_0; // @[StateRegister.scala 98:17]
    end
    if (reset) begin // @[StateRegister.scala 69:30]
      state_1_0_reg <= 64'h0; // @[StateRegister.scala 69:30]
    end else begin
      state_1_0_reg <= io_state_in_1_0; // @[StateRegister.scala 99:17]
    end
    if (reset) begin // @[StateRegister.scala 70:30]
      state_4_0_reg <= 64'h0; // @[StateRegister.scala 70:30]
    end else begin
      state_4_0_reg <= io_state_in_4_0; // @[StateRegister.scala 100:17]
    end
    if (reset) begin // @[StateRegister.scala 72:31]
      state_0_1_reg <= 64'h0; // @[StateRegister.scala 72:31]
    end else begin
      state_0_1_reg <= io_state_in_0_1; // @[StateRegister.scala 102:17]
    end
    if (reset) begin // @[StateRegister.scala 73:31]
      state_1_1_reg <= 64'h0; // @[StateRegister.scala 73:31]
    end else begin
      state_1_1_reg <= io_state_in_1_1; // @[StateRegister.scala 103:17]
    end
    if (reset) begin // @[StateRegister.scala 74:31]
      state_2_1_reg <= 64'h0; // @[StateRegister.scala 74:31]
    end else begin
      state_2_1_reg <= io_state_in_2_1; // @[StateRegister.scala 104:17]
    end
    if (reset) begin // @[StateRegister.scala 75:31]
      state_3_1_reg <= 64'h0; // @[StateRegister.scala 75:31]
    end else begin
      state_3_1_reg <= io_state_in_3_1; // @[StateRegister.scala 105:17]
    end
    if (reset) begin // @[StateRegister.scala 76:31]
      state_4_1_reg <= 64'h0; // @[StateRegister.scala 76:31]
    end else begin
      state_4_1_reg <= io_state_in_4_1; // @[StateRegister.scala 106:17]
    end
    if (reset) begin // @[StateRegister.scala 78:31]
      state_0_2_reg <= 64'h0; // @[StateRegister.scala 78:31]
    end else begin
      state_0_2_reg <= io_state_in_0_2; // @[StateRegister.scala 108:17]
    end
    if (reset) begin // @[StateRegister.scala 79:31]
      state_1_2_reg <= 64'h0; // @[StateRegister.scala 79:31]
    end else begin
      state_1_2_reg <= io_state_in_1_2; // @[StateRegister.scala 109:17]
    end
    if (reset) begin // @[StateRegister.scala 80:31]
      state_2_2_reg <= 64'h0; // @[StateRegister.scala 80:31]
    end else begin
      state_2_2_reg <= io_state_in_2_2; // @[StateRegister.scala 110:17]
    end
    if (reset) begin // @[StateRegister.scala 81:31]
      state_3_2_reg <= 64'h0; // @[StateRegister.scala 81:31]
    end else begin
      state_3_2_reg <= io_state_in_3_2; // @[StateRegister.scala 111:17]
    end
    if (reset) begin // @[StateRegister.scala 82:31]
      state_4_2_reg <= 64'h0; // @[StateRegister.scala 82:31]
    end else begin
      state_4_2_reg <= io_state_in_4_2; // @[StateRegister.scala 112:17]
    end
    if (reset) begin // @[StateRegister.scala 84:31]
      state_0_3_reg <= 64'h0; // @[StateRegister.scala 84:31]
    end else begin
      state_0_3_reg <= io_state_in_0_3; // @[StateRegister.scala 114:17]
    end
    if (reset) begin // @[StateRegister.scala 85:31]
      state_1_3_reg <= 64'h0; // @[StateRegister.scala 85:31]
    end else begin
      state_1_3_reg <= io_state_in_1_3; // @[StateRegister.scala 115:17]
    end
    if (reset) begin // @[StateRegister.scala 86:31]
      state_2_3_reg <= 64'h0; // @[StateRegister.scala 86:31]
    end else begin
      state_2_3_reg <= io_state_in_2_3; // @[StateRegister.scala 116:17]
    end
    if (reset) begin // @[StateRegister.scala 87:31]
      state_3_3_reg <= 64'h0; // @[StateRegister.scala 87:31]
    end else begin
      state_3_3_reg <= io_state_in_3_3; // @[StateRegister.scala 117:17]
    end
    if (reset) begin // @[StateRegister.scala 88:31]
      state_4_3_reg <= 64'h0; // @[StateRegister.scala 88:31]
    end else begin
      state_4_3_reg <= io_state_in_4_3; // @[StateRegister.scala 118:17]
    end
    if (reset) begin // @[StateRegister.scala 90:31]
      state_0_4_reg <= 64'h0; // @[StateRegister.scala 90:31]
    end else begin
      state_0_4_reg <= io_state_in_0_4; // @[StateRegister.scala 120:17]
    end
    if (reset) begin // @[StateRegister.scala 91:31]
      state_1_4_reg <= 64'h0; // @[StateRegister.scala 91:31]
    end else begin
      state_1_4_reg <= io_state_in_1_4; // @[StateRegister.scala 121:17]
    end
    if (reset) begin // @[StateRegister.scala 92:31]
      state_2_4_reg <= 64'h0; // @[StateRegister.scala 92:31]
    end else begin
      state_2_4_reg <= io_state_in_2_4; // @[StateRegister.scala 122:17]
    end
    if (reset) begin // @[StateRegister.scala 93:31]
      state_3_4_reg <= 64'h0; // @[StateRegister.scala 93:31]
    end else begin
      state_3_4_reg <= io_state_in_3_4; // @[StateRegister.scala 123:17]
    end
    if (reset) begin // @[StateRegister.scala 94:31]
      state_4_4_reg <= 64'h0; // @[StateRegister.scala 94:31]
    end else begin
      state_4_4_reg <= io_state_in_4_4; // @[StateRegister.scala 124:17]
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
  state_2_0_reg = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  state_3_0_reg = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  state_0_0_reg = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  state_1_0_reg = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  state_4_0_reg = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  state_0_1_reg = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  state_1_1_reg = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  state_2_1_reg = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  state_3_1_reg = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  state_4_1_reg = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  state_0_2_reg = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  state_1_2_reg = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  state_2_2_reg = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  state_3_2_reg = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  state_4_2_reg = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  state_0_3_reg = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  state_1_3_reg = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  state_2_3_reg = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  state_3_3_reg = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  state_4_3_reg = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  state_0_4_reg = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  state_1_4_reg = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  state_2_4_reg = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  state_3_4_reg = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  state_4_4_reg = _RAND_24[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
