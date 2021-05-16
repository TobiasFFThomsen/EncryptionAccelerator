module Theta(
  input  [63:0] io_theta_in_0_0,
  input  [63:0] io_theta_in_1_0,
  input  [63:0] io_theta_in_2_0,
  input  [63:0] io_theta_in_3_0,
  input  [63:0] io_theta_in_4_0,
  input  [63:0] io_theta_in_0_1,
  input  [63:0] io_theta_in_1_1,
  input  [63:0] io_theta_in_2_1,
  input  [63:0] io_theta_in_3_1,
  input  [63:0] io_theta_in_4_1,
  input  [63:0] io_theta_in_0_2,
  input  [63:0] io_theta_in_1_2,
  input  [63:0] io_theta_in_2_2,
  input  [63:0] io_theta_in_3_2,
  input  [63:0] io_theta_in_4_2,
  input  [63:0] io_theta_in_0_3,
  input  [63:0] io_theta_in_1_3,
  input  [63:0] io_theta_in_2_3,
  input  [63:0] io_theta_in_3_3,
  input  [63:0] io_theta_in_4_3,
  input  [63:0] io_theta_in_0_4,
  input  [63:0] io_theta_in_1_4,
  input  [63:0] io_theta_in_2_4,
  input  [63:0] io_theta_in_3_4,
  input  [63:0] io_theta_in_4_4,
  output [63:0] io_theta_out_0_0,
  output [63:0] io_theta_out_1_0,
  output [63:0] io_theta_out_2_0,
  output [63:0] io_theta_out_3_0,
  output [63:0] io_theta_out_4_0,
  output [63:0] io_theta_out_0_1,
  output [63:0] io_theta_out_1_1,
  output [63:0] io_theta_out_2_1,
  output [63:0] io_theta_out_3_1,
  output [63:0] io_theta_out_4_1,
  output [63:0] io_theta_out_0_2,
  output [63:0] io_theta_out_1_2,
  output [63:0] io_theta_out_2_2,
  output [63:0] io_theta_out_3_2,
  output [63:0] io_theta_out_4_2,
  output [63:0] io_theta_out_0_3,
  output [63:0] io_theta_out_1_3,
  output [63:0] io_theta_out_2_3,
  output [63:0] io_theta_out_3_3,
  output [63:0] io_theta_out_4_3,
  output [63:0] io_theta_out_0_4,
  output [63:0] io_theta_out_1_4,
  output [63:0] io_theta_out_2_4,
  output [63:0] io_theta_out_3_4,
  output [63:0] io_theta_out_4_4
);
  wire [63:0] _T = io_theta_in_0_0 ^ io_theta_in_0_1; // @[Theta.scala 78:25]
  wire [63:0] _T_1 = _T ^ io_theta_in_0_2; // @[Theta.scala 78:41]
  wire [63:0] _T_2 = _T_1 ^ io_theta_in_0_3; // @[Theta.scala 78:57]
  wire [63:0] c_0 = _T_2 ^ io_theta_in_0_4; // @[Theta.scala 78:73]
  wire [63:0] _T_4 = io_theta_in_1_0 ^ io_theta_in_1_1; // @[Theta.scala 79:25]
  wire [63:0] _T_5 = _T_4 ^ io_theta_in_1_2; // @[Theta.scala 79:41]
  wire [63:0] _T_6 = _T_5 ^ io_theta_in_1_3; // @[Theta.scala 79:57]
  wire [63:0] c_1 = _T_6 ^ io_theta_in_1_4; // @[Theta.scala 79:73]
  wire [63:0] _T_8 = io_theta_in_2_0 ^ io_theta_in_2_1; // @[Theta.scala 80:25]
  wire [63:0] _T_9 = _T_8 ^ io_theta_in_2_2; // @[Theta.scala 80:41]
  wire [63:0] _T_10 = _T_9 ^ io_theta_in_2_3; // @[Theta.scala 80:57]
  wire [63:0] c_2 = _T_10 ^ io_theta_in_2_4; // @[Theta.scala 80:73]
  wire [63:0] _T_12 = io_theta_in_3_0 ^ io_theta_in_3_1; // @[Theta.scala 81:25]
  wire [63:0] _T_13 = _T_12 ^ io_theta_in_3_2; // @[Theta.scala 81:41]
  wire [63:0] _T_14 = _T_13 ^ io_theta_in_3_3; // @[Theta.scala 81:57]
  wire [63:0] c_3 = _T_14 ^ io_theta_in_3_4; // @[Theta.scala 81:73]
  wire [63:0] _T_16 = io_theta_in_4_0 ^ io_theta_in_4_1; // @[Theta.scala 82:25]
  wire [63:0] _T_17 = _T_16 ^ io_theta_in_4_2; // @[Theta.scala 82:41]
  wire [63:0] _T_18 = _T_17 ^ io_theta_in_4_3; // @[Theta.scala 82:57]
  wire [63:0] c_4 = _T_18 ^ io_theta_in_4_4; // @[Theta.scala 82:73]
  wire [64:0] _T_20 = {c_1, 1'h0}; // @[Theta.scala 101:25]
  wire [64:0] _T_22 = {c_2, 1'h0}; // @[Theta.scala 104:25]
  wire [64:0] _T_24 = {c_3, 1'h0}; // @[Theta.scala 107:25]
  wire [64:0] _T_26 = {c_4, 1'h0}; // @[Theta.scala 110:25]
  wire [64:0] _T_28 = {c_0, 1'h0}; // @[Theta.scala 113:25]
  wire [63:0] rotation_0_lhs = _T_20[63:0]; // @[Theta.scala 84:28 Theta.scala 101:18]
  wire [63:0] rotation_0_rhs = {{63'd0}, c_1[63]}; // @[Theta.scala 85:28 Theta.scala 102:18]
  wire [63:0] rotation_result_0 = rotation_0_lhs | rotation_0_rhs; // @[Theta.scala 116:39]
  wire [63:0] rotation_1_lhs = _T_22[63:0]; // @[Theta.scala 86:28 Theta.scala 104:18]
  wire [63:0] rotation_1_rhs = {{63'd0}, c_2[63]}; // @[Theta.scala 87:28 Theta.scala 105:18]
  wire [63:0] rotation_result_1 = rotation_1_lhs | rotation_1_rhs; // @[Theta.scala 117:39]
  wire [63:0] rotation_2_lhs = _T_24[63:0]; // @[Theta.scala 88:28 Theta.scala 107:18]
  wire [63:0] rotation_2_rhs = {{63'd0}, c_3[63]}; // @[Theta.scala 89:28 Theta.scala 108:18]
  wire [63:0] rotation_result_2 = rotation_2_lhs | rotation_2_rhs; // @[Theta.scala 118:39]
  wire [63:0] rotation_3_lhs = _T_26[63:0]; // @[Theta.scala 90:28 Theta.scala 110:18]
  wire [63:0] rotation_3_rhs = {{63'd0}, c_4[63]}; // @[Theta.scala 91:28 Theta.scala 111:18]
  wire [63:0] rotation_result_3 = rotation_3_lhs | rotation_3_rhs; // @[Theta.scala 119:39]
  wire [63:0] rotation_4_lhs = _T_28[63:0]; // @[Theta.scala 92:28 Theta.scala 113:18]
  wire [63:0] rotation_4_rhs = {{63'd0}, c_0[63]}; // @[Theta.scala 93:28 Theta.scala 114:18]
  wire [63:0] rotation_result_4 = rotation_4_lhs | rotation_4_rhs; // @[Theta.scala 120:39]
  wire [63:0] d_0 = c_4 ^ rotation_result_0; // @[Theta.scala 122:14]
  wire [63:0] d_1 = c_0 ^ rotation_result_1; // @[Theta.scala 123:14]
  wire [63:0] d_2 = c_1 ^ rotation_result_2; // @[Theta.scala 124:14]
  wire [63:0] d_3 = c_2 ^ rotation_result_3; // @[Theta.scala 125:14]
  wire [63:0] d_4 = c_3 ^ rotation_result_4; // @[Theta.scala 126:14]
  assign io_theta_out_0_0 = io_theta_in_0_0 ^ d_0; // @[Theta.scala 129:38]
  assign io_theta_out_1_0 = io_theta_in_1_0 ^ d_1; // @[Theta.scala 135:38]
  assign io_theta_out_2_0 = io_theta_in_2_0 ^ d_2; // @[Theta.scala 141:38]
  assign io_theta_out_3_0 = io_theta_in_3_0 ^ d_3; // @[Theta.scala 147:38]
  assign io_theta_out_4_0 = io_theta_in_4_0 ^ d_4; // @[Theta.scala 153:38]
  assign io_theta_out_0_1 = io_theta_in_0_1 ^ d_0; // @[Theta.scala 130:38]
  assign io_theta_out_1_1 = io_theta_in_1_1 ^ d_1; // @[Theta.scala 136:38]
  assign io_theta_out_2_1 = io_theta_in_2_1 ^ d_2; // @[Theta.scala 142:38]
  assign io_theta_out_3_1 = io_theta_in_3_1 ^ d_3; // @[Theta.scala 148:38]
  assign io_theta_out_4_1 = io_theta_in_4_1 ^ d_4; // @[Theta.scala 154:38]
  assign io_theta_out_0_2 = io_theta_in_0_2 ^ d_0; // @[Theta.scala 131:38]
  assign io_theta_out_1_2 = io_theta_in_1_2 ^ d_1; // @[Theta.scala 137:38]
  assign io_theta_out_2_2 = io_theta_in_2_2 ^ d_2; // @[Theta.scala 143:38]
  assign io_theta_out_3_2 = io_theta_in_3_2 ^ d_3; // @[Theta.scala 149:38]
  assign io_theta_out_4_2 = io_theta_in_4_2 ^ d_4; // @[Theta.scala 155:38]
  assign io_theta_out_0_3 = io_theta_in_0_3 ^ d_0; // @[Theta.scala 132:38]
  assign io_theta_out_1_3 = io_theta_in_1_3 ^ d_1; // @[Theta.scala 138:38]
  assign io_theta_out_2_3 = io_theta_in_2_3 ^ d_2; // @[Theta.scala 144:38]
  assign io_theta_out_3_3 = io_theta_in_3_3 ^ d_3; // @[Theta.scala 150:38]
  assign io_theta_out_4_3 = io_theta_in_4_3 ^ d_4; // @[Theta.scala 156:38]
  assign io_theta_out_0_4 = io_theta_in_0_4 ^ d_0; // @[Theta.scala 133:38]
  assign io_theta_out_1_4 = io_theta_in_1_4 ^ d_1; // @[Theta.scala 139:38]
  assign io_theta_out_2_4 = io_theta_in_2_4 ^ d_2; // @[Theta.scala 145:38]
  assign io_theta_out_3_4 = io_theta_in_3_4 ^ d_3; // @[Theta.scala 151:38]
  assign io_theta_out_4_4 = io_theta_in_4_4 ^ d_4; // @[Theta.scala 157:38]
endmodule
module RhoPi(
  input  [63:0] io_rhoPi_in_0_0,
  input  [63:0] io_rhoPi_in_1_0,
  input  [63:0] io_rhoPi_in_2_0,
  input  [63:0] io_rhoPi_in_3_0,
  input  [63:0] io_rhoPi_in_4_0,
  input  [63:0] io_rhoPi_in_0_1,
  input  [63:0] io_rhoPi_in_1_1,
  input  [63:0] io_rhoPi_in_2_1,
  input  [63:0] io_rhoPi_in_3_1,
  input  [63:0] io_rhoPi_in_4_1,
  input  [63:0] io_rhoPi_in_0_2,
  input  [63:0] io_rhoPi_in_1_2,
  input  [63:0] io_rhoPi_in_2_2,
  input  [63:0] io_rhoPi_in_3_2,
  input  [63:0] io_rhoPi_in_4_2,
  input  [63:0] io_rhoPi_in_0_3,
  input  [63:0] io_rhoPi_in_1_3,
  input  [63:0] io_rhoPi_in_2_3,
  input  [63:0] io_rhoPi_in_3_3,
  input  [63:0] io_rhoPi_in_4_3,
  input  [63:0] io_rhoPi_in_0_4,
  input  [63:0] io_rhoPi_in_1_4,
  input  [63:0] io_rhoPi_in_2_4,
  input  [63:0] io_rhoPi_in_3_4,
  input  [63:0] io_rhoPi_in_4_4,
  output [63:0] io_rhoPi_out_0_0,
  output [63:0] io_rhoPi_out_1_0,
  output [63:0] io_rhoPi_out_2_0,
  output [63:0] io_rhoPi_out_3_0,
  output [63:0] io_rhoPi_out_4_0,
  output [63:0] io_rhoPi_out_0_1,
  output [63:0] io_rhoPi_out_1_1,
  output [63:0] io_rhoPi_out_2_1,
  output [63:0] io_rhoPi_out_3_1,
  output [63:0] io_rhoPi_out_4_1,
  output [63:0] io_rhoPi_out_0_2,
  output [63:0] io_rhoPi_out_1_2,
  output [63:0] io_rhoPi_out_2_2,
  output [63:0] io_rhoPi_out_3_2,
  output [63:0] io_rhoPi_out_4_2,
  output [63:0] io_rhoPi_out_0_3,
  output [63:0] io_rhoPi_out_1_3,
  output [63:0] io_rhoPi_out_2_3,
  output [63:0] io_rhoPi_out_3_3,
  output [63:0] io_rhoPi_out_4_3,
  output [63:0] io_rhoPi_out_0_4,
  output [63:0] io_rhoPi_out_1_4,
  output [63:0] io_rhoPi_out_2_4,
  output [63:0] io_rhoPi_out_3_4,
  output [63:0] io_rhoPi_out_4_4
);
  wire [524350:0] _T = {{524287'd0}, io_rhoPi_in_0_0}; // @[RhoPi.scala 147:32]
  wire [99:0] _GEN_0 = {io_rhoPi_in_0_1, 36'h0}; // @[RhoPi.scala 148:32]
  wire [524350:0] _T_1 = {{524251'd0}, _GEN_0}; // @[RhoPi.scala 148:32]
  wire [66:0] _GEN_1 = {io_rhoPi_in_0_2, 3'h0}; // @[RhoPi.scala 149:32]
  wire [524350:0] _T_2 = {{524284'd0}, _GEN_1}; // @[RhoPi.scala 149:32]
  wire [104:0] _GEN_2 = {io_rhoPi_in_0_3, 41'h0}; // @[RhoPi.scala 150:32]
  wire [524350:0] _T_3 = {{524246'd0}, _GEN_2}; // @[RhoPi.scala 150:32]
  wire [81:0] _GEN_3 = {io_rhoPi_in_0_4, 18'h0}; // @[RhoPi.scala 151:32]
  wire [524350:0] _T_4 = {{524269'd0}, _GEN_3}; // @[RhoPi.scala 151:32]
  wire [64:0] _GEN_4 = {io_rhoPi_in_1_0, 1'h0}; // @[RhoPi.scala 152:32]
  wire [524350:0] _T_5 = {{524286'd0}, _GEN_4}; // @[RhoPi.scala 152:32]
  wire [107:0] _GEN_5 = {io_rhoPi_in_1_1, 44'h0}; // @[RhoPi.scala 153:32]
  wire [524350:0] _T_6 = {{524243'd0}, _GEN_5}; // @[RhoPi.scala 153:32]
  wire [73:0] _GEN_6 = {io_rhoPi_in_1_2, 10'h0}; // @[RhoPi.scala 154:32]
  wire [524350:0] _T_7 = {{524277'd0}, _GEN_6}; // @[RhoPi.scala 154:32]
  wire [108:0] _GEN_7 = {io_rhoPi_in_1_3, 45'h0}; // @[RhoPi.scala 155:32]
  wire [524350:0] _T_8 = {{524242'd0}, _GEN_7}; // @[RhoPi.scala 155:32]
  wire [65:0] _GEN_8 = {io_rhoPi_in_1_4, 2'h0}; // @[RhoPi.scala 156:32]
  wire [524350:0] _T_9 = {{524285'd0}, _GEN_8}; // @[RhoPi.scala 156:32]
  wire [125:0] _GEN_9 = {io_rhoPi_in_2_0, 62'h0}; // @[RhoPi.scala 157:32]
  wire [524350:0] _T_10 = {{524225'd0}, _GEN_9}; // @[RhoPi.scala 157:32]
  wire [69:0] _GEN_10 = {io_rhoPi_in_2_1, 6'h0}; // @[RhoPi.scala 158:32]
  wire [524350:0] _T_11 = {{524281'd0}, _GEN_10}; // @[RhoPi.scala 158:32]
  wire [106:0] _GEN_11 = {io_rhoPi_in_2_2, 43'h0}; // @[RhoPi.scala 159:32]
  wire [524350:0] _T_12 = {{524244'd0}, _GEN_11}; // @[RhoPi.scala 159:32]
  wire [78:0] _GEN_12 = {io_rhoPi_in_2_3, 15'h0}; // @[RhoPi.scala 160:32]
  wire [524350:0] _T_13 = {{524272'd0}, _GEN_12}; // @[RhoPi.scala 160:32]
  wire [124:0] _GEN_13 = {io_rhoPi_in_2_4, 61'h0}; // @[RhoPi.scala 161:32]
  wire [524350:0] _T_14 = {{524226'd0}, _GEN_13}; // @[RhoPi.scala 161:32]
  wire [91:0] _GEN_14 = {io_rhoPi_in_3_0, 28'h0}; // @[RhoPi.scala 162:32]
  wire [524350:0] _T_15 = {{524259'd0}, _GEN_14}; // @[RhoPi.scala 162:32]
  wire [118:0] _GEN_15 = {io_rhoPi_in_3_1, 55'h0}; // @[RhoPi.scala 163:32]
  wire [524350:0] _T_16 = {{524232'd0}, _GEN_15}; // @[RhoPi.scala 163:32]
  wire [88:0] _GEN_16 = {io_rhoPi_in_3_2, 25'h0}; // @[RhoPi.scala 164:32]
  wire [524350:0] _T_17 = {{524262'd0}, _GEN_16}; // @[RhoPi.scala 164:32]
  wire [84:0] _GEN_17 = {io_rhoPi_in_3_3, 21'h0}; // @[RhoPi.scala 165:32]
  wire [524350:0] _T_18 = {{524266'd0}, _GEN_17}; // @[RhoPi.scala 165:32]
  wire [119:0] _GEN_18 = {io_rhoPi_in_3_4, 56'h0}; // @[RhoPi.scala 166:32]
  wire [524350:0] _T_19 = {{524231'd0}, _GEN_18}; // @[RhoPi.scala 166:32]
  wire [90:0] _GEN_19 = {io_rhoPi_in_4_0, 27'h0}; // @[RhoPi.scala 167:32]
  wire [524350:0] _T_20 = {{524260'd0}, _GEN_19}; // @[RhoPi.scala 167:32]
  wire [83:0] _GEN_20 = {io_rhoPi_in_4_1, 20'h0}; // @[RhoPi.scala 168:32]
  wire [524350:0] _T_21 = {{524267'd0}, _GEN_20}; // @[RhoPi.scala 168:32]
  wire [102:0] _GEN_21 = {io_rhoPi_in_4_2, 39'h0}; // @[RhoPi.scala 169:32]
  wire [524350:0] _T_22 = {{524248'd0}, _GEN_21}; // @[RhoPi.scala 169:32]
  wire [71:0] _GEN_22 = {io_rhoPi_in_4_3, 8'h0}; // @[RhoPi.scala 170:32]
  wire [524350:0] _T_23 = {{524279'd0}, _GEN_22}; // @[RhoPi.scala 170:32]
  wire [77:0] _GEN_23 = {io_rhoPi_in_4_4, 14'h0}; // @[RhoPi.scala 171:32]
  wire [524350:0] _T_24 = {{524273'd0}, _GEN_23}; // @[RhoPi.scala 171:32]
  wire [18:0] _T_26 = 19'h40 - 19'h0; // @[RhoPi.scala 173:39]
  wire [63:0] or_rfh_0_0 = io_rhoPi_in_0_0 >> _T_26; // @[RhoPi.scala 173:32]
  wire [18:0] _T_29 = 19'h40 - 19'h24; // @[RhoPi.scala 174:39]
  wire [63:0] or_rfh_0_1 = io_rhoPi_in_0_1 >> _T_29; // @[RhoPi.scala 174:32]
  wire [18:0] _T_32 = 19'h40 - 19'h3; // @[RhoPi.scala 175:39]
  wire [63:0] or_rfh_0_2 = io_rhoPi_in_0_2 >> _T_32; // @[RhoPi.scala 175:32]
  wire [18:0] _T_35 = 19'h40 - 19'h29; // @[RhoPi.scala 176:39]
  wire [63:0] or_rfh_0_3 = io_rhoPi_in_0_3 >> _T_35; // @[RhoPi.scala 176:32]
  wire [18:0] _T_38 = 19'h40 - 19'h12; // @[RhoPi.scala 177:39]
  wire [63:0] or_rfh_0_4 = io_rhoPi_in_0_4 >> _T_38; // @[RhoPi.scala 177:32]
  wire [18:0] _T_41 = 19'h40 - 19'h1; // @[RhoPi.scala 178:39]
  wire [63:0] or_rfh_1_0 = io_rhoPi_in_1_0 >> _T_41; // @[RhoPi.scala 178:32]
  wire [18:0] _T_44 = 19'h40 - 19'h2c; // @[RhoPi.scala 179:39]
  wire [63:0] or_rfh_1_1 = io_rhoPi_in_1_1 >> _T_44; // @[RhoPi.scala 179:32]
  wire [18:0] _T_47 = 19'h40 - 19'ha; // @[RhoPi.scala 180:39]
  wire [63:0] or_rfh_1_2 = io_rhoPi_in_1_2 >> _T_47; // @[RhoPi.scala 180:32]
  wire [18:0] _T_50 = 19'h40 - 19'h2d; // @[RhoPi.scala 181:39]
  wire [63:0] or_rfh_1_3 = io_rhoPi_in_1_3 >> _T_50; // @[RhoPi.scala 181:32]
  wire [18:0] _T_53 = 19'h40 - 19'h2; // @[RhoPi.scala 182:39]
  wire [63:0] or_rfh_1_4 = io_rhoPi_in_1_4 >> _T_53; // @[RhoPi.scala 182:32]
  wire [18:0] _T_56 = 19'h40 - 19'h3e; // @[RhoPi.scala 183:39]
  wire [63:0] or_rfh_2_0 = io_rhoPi_in_2_0 >> _T_56; // @[RhoPi.scala 183:32]
  wire [18:0] _T_59 = 19'h40 - 19'h6; // @[RhoPi.scala 184:39]
  wire [63:0] or_rfh_2_1 = io_rhoPi_in_2_1 >> _T_59; // @[RhoPi.scala 184:32]
  wire [18:0] _T_62 = 19'h40 - 19'h2b; // @[RhoPi.scala 185:39]
  wire [63:0] or_rfh_2_2 = io_rhoPi_in_2_2 >> _T_62; // @[RhoPi.scala 185:32]
  wire [18:0] _T_65 = 19'h40 - 19'hf; // @[RhoPi.scala 186:39]
  wire [63:0] or_rfh_2_3 = io_rhoPi_in_2_3 >> _T_65; // @[RhoPi.scala 186:32]
  wire [18:0] _T_68 = 19'h40 - 19'h3d; // @[RhoPi.scala 187:39]
  wire [63:0] or_rfh_2_4 = io_rhoPi_in_2_4 >> _T_68; // @[RhoPi.scala 187:32]
  wire [18:0] _T_71 = 19'h40 - 19'h1c; // @[RhoPi.scala 188:39]
  wire [63:0] or_rfh_3_0 = io_rhoPi_in_3_0 >> _T_71; // @[RhoPi.scala 188:32]
  wire [18:0] _T_74 = 19'h40 - 19'h37; // @[RhoPi.scala 189:39]
  wire [63:0] or_rfh_3_1 = io_rhoPi_in_3_1 >> _T_74; // @[RhoPi.scala 189:32]
  wire [18:0] _T_77 = 19'h40 - 19'h19; // @[RhoPi.scala 190:39]
  wire [63:0] or_rfh_3_2 = io_rhoPi_in_3_2 >> _T_77; // @[RhoPi.scala 190:32]
  wire [18:0] _T_80 = 19'h40 - 19'h15; // @[RhoPi.scala 191:39]
  wire [63:0] or_rfh_3_3 = io_rhoPi_in_3_3 >> _T_80; // @[RhoPi.scala 191:32]
  wire [18:0] _T_83 = 19'h40 - 19'h38; // @[RhoPi.scala 192:39]
  wire [63:0] or_rfh_3_4 = io_rhoPi_in_3_4 >> _T_83; // @[RhoPi.scala 192:32]
  wire [18:0] _T_86 = 19'h40 - 19'h1b; // @[RhoPi.scala 193:39]
  wire [63:0] or_rfh_4_0 = io_rhoPi_in_4_0 >> _T_86; // @[RhoPi.scala 193:32]
  wire [18:0] _T_89 = 19'h40 - 19'h14; // @[RhoPi.scala 194:39]
  wire [63:0] or_rfh_4_1 = io_rhoPi_in_4_1 >> _T_89; // @[RhoPi.scala 194:32]
  wire [18:0] _T_92 = 19'h40 - 19'h27; // @[RhoPi.scala 195:39]
  wire [63:0] or_rfh_4_2 = io_rhoPi_in_4_2 >> _T_92; // @[RhoPi.scala 195:32]
  wire [18:0] _T_95 = 19'h40 - 19'h8; // @[RhoPi.scala 196:39]
  wire [63:0] or_rfh_4_3 = io_rhoPi_in_4_3 >> _T_95; // @[RhoPi.scala 196:32]
  wire [18:0] _T_98 = 19'h40 - 19'he; // @[RhoPi.scala 197:39]
  wire [63:0] or_rfh_4_4 = io_rhoPi_in_4_4 >> _T_98; // @[RhoPi.scala 197:32]
  wire [63:0] or_lfh_0_0 = _T[63:0]; // @[RhoPi.scala 95:24 RhoPi.scala 147:14]
  wire [63:0] or_lfh_0_1 = _T_1[63:0]; // @[RhoPi.scala 96:24 RhoPi.scala 148:14]
  wire [63:0] or_lfh_0_2 = _T_2[63:0]; // @[RhoPi.scala 97:24 RhoPi.scala 149:14]
  wire [63:0] or_lfh_0_3 = _T_3[63:0]; // @[RhoPi.scala 98:24 RhoPi.scala 150:14]
  wire [63:0] or_lfh_0_4 = _T_4[63:0]; // @[RhoPi.scala 99:24 RhoPi.scala 151:14]
  wire [63:0] or_lfh_1_0 = _T_5[63:0]; // @[RhoPi.scala 100:24 RhoPi.scala 152:14]
  wire [63:0] or_lfh_1_1 = _T_6[63:0]; // @[RhoPi.scala 101:24 RhoPi.scala 153:14]
  wire [63:0] or_lfh_1_2 = _T_7[63:0]; // @[RhoPi.scala 102:24 RhoPi.scala 154:14]
  wire [63:0] or_lfh_1_3 = _T_8[63:0]; // @[RhoPi.scala 103:24 RhoPi.scala 155:14]
  wire [63:0] or_lfh_1_4 = _T_9[63:0]; // @[RhoPi.scala 104:24 RhoPi.scala 156:14]
  wire [63:0] or_lfh_2_0 = _T_10[63:0]; // @[RhoPi.scala 105:24 RhoPi.scala 157:14]
  wire [63:0] or_lfh_2_1 = _T_11[63:0]; // @[RhoPi.scala 106:24 RhoPi.scala 158:14]
  wire [63:0] or_lfh_2_2 = _T_12[63:0]; // @[RhoPi.scala 107:24 RhoPi.scala 159:14]
  wire [63:0] or_lfh_2_3 = _T_13[63:0]; // @[RhoPi.scala 108:24 RhoPi.scala 160:14]
  wire [63:0] or_lfh_2_4 = _T_14[63:0]; // @[RhoPi.scala 109:24 RhoPi.scala 161:14]
  wire [63:0] or_lfh_3_0 = _T_15[63:0]; // @[RhoPi.scala 110:24 RhoPi.scala 162:14]
  wire [63:0] or_lfh_3_1 = _T_16[63:0]; // @[RhoPi.scala 111:24 RhoPi.scala 163:14]
  wire [63:0] or_lfh_3_2 = _T_17[63:0]; // @[RhoPi.scala 112:24 RhoPi.scala 164:14]
  wire [63:0] or_lfh_3_3 = _T_18[63:0]; // @[RhoPi.scala 113:24 RhoPi.scala 165:14]
  wire [63:0] or_lfh_3_4 = _T_19[63:0]; // @[RhoPi.scala 114:24 RhoPi.scala 166:14]
  wire [63:0] or_lfh_4_0 = _T_20[63:0]; // @[RhoPi.scala 115:24 RhoPi.scala 167:14]
  wire [63:0] or_lfh_4_1 = _T_21[63:0]; // @[RhoPi.scala 116:24 RhoPi.scala 168:14]
  wire [63:0] or_lfh_4_2 = _T_22[63:0]; // @[RhoPi.scala 117:24 RhoPi.scala 169:14]
  wire [63:0] or_lfh_4_3 = _T_23[63:0]; // @[RhoPi.scala 118:24 RhoPi.scala 170:14]
  wire [63:0] or_lfh_4_4 = _T_24[63:0]; // @[RhoPi.scala 119:24 RhoPi.scala 171:14]
  assign io_rhoPi_out_0_0 = or_lfh_0_0 | or_rfh_0_0; // @[RhoPi.scala 199:34]
  assign io_rhoPi_out_1_0 = or_lfh_1_1 | or_rfh_1_1; // @[RhoPi.scala 206:34]
  assign io_rhoPi_out_2_0 = or_lfh_2_2 | or_rfh_2_2; // @[RhoPi.scala 213:34]
  assign io_rhoPi_out_3_0 = or_lfh_3_3 | or_rfh_3_3; // @[RhoPi.scala 220:34]
  assign io_rhoPi_out_4_0 = or_lfh_4_4 | or_rfh_4_4; // @[RhoPi.scala 227:34]
  assign io_rhoPi_out_0_1 = or_lfh_3_0 | or_rfh_3_0; // @[RhoPi.scala 217:34]
  assign io_rhoPi_out_1_1 = or_lfh_4_1 | or_rfh_4_1; // @[RhoPi.scala 224:34]
  assign io_rhoPi_out_2_1 = or_lfh_0_2 | or_rfh_0_2; // @[RhoPi.scala 201:34]
  assign io_rhoPi_out_3_1 = or_lfh_1_3 | or_rfh_1_3; // @[RhoPi.scala 208:34]
  assign io_rhoPi_out_4_1 = or_lfh_2_4 | or_rfh_2_4; // @[RhoPi.scala 215:34]
  assign io_rhoPi_out_0_2 = or_lfh_1_0 | or_rfh_1_0; // @[RhoPi.scala 205:34]
  assign io_rhoPi_out_1_2 = or_lfh_2_1 | or_rfh_2_1; // @[RhoPi.scala 212:34]
  assign io_rhoPi_out_2_2 = or_lfh_3_2 | or_rfh_3_2; // @[RhoPi.scala 219:34]
  assign io_rhoPi_out_3_2 = or_lfh_4_3 | or_rfh_4_3; // @[RhoPi.scala 226:34]
  assign io_rhoPi_out_4_2 = or_lfh_0_4 | or_rfh_0_4; // @[RhoPi.scala 203:34]
  assign io_rhoPi_out_0_3 = or_lfh_4_0 | or_rfh_4_0; // @[RhoPi.scala 223:34]
  assign io_rhoPi_out_1_3 = or_lfh_0_1 | or_rfh_0_1; // @[RhoPi.scala 200:34]
  assign io_rhoPi_out_2_3 = or_lfh_1_2 | or_rfh_1_2; // @[RhoPi.scala 207:34]
  assign io_rhoPi_out_3_3 = or_lfh_2_3 | or_rfh_2_3; // @[RhoPi.scala 214:34]
  assign io_rhoPi_out_4_3 = or_lfh_3_4 | or_rfh_3_4; // @[RhoPi.scala 221:34]
  assign io_rhoPi_out_0_4 = or_lfh_2_0 | or_rfh_2_0; // @[RhoPi.scala 211:34]
  assign io_rhoPi_out_1_4 = or_lfh_3_1 | or_rfh_3_1; // @[RhoPi.scala 218:34]
  assign io_rhoPi_out_2_4 = or_lfh_4_2 | or_rfh_4_2; // @[RhoPi.scala 225:34]
  assign io_rhoPi_out_3_4 = or_lfh_0_3 | or_rfh_0_3; // @[RhoPi.scala 202:34]
  assign io_rhoPi_out_4_4 = or_lfh_1_4 | or_rfh_1_4; // @[RhoPi.scala 209:34]
endmodule
module Chi(
  input  [63:0] io_chi_in_0_0,
  input  [63:0] io_chi_in_1_0,
  input  [63:0] io_chi_in_2_0,
  input  [63:0] io_chi_in_3_0,
  input  [63:0] io_chi_in_4_0,
  input  [63:0] io_chi_in_0_1,
  input  [63:0] io_chi_in_1_1,
  input  [63:0] io_chi_in_2_1,
  input  [63:0] io_chi_in_3_1,
  input  [63:0] io_chi_in_4_1,
  input  [63:0] io_chi_in_0_2,
  input  [63:0] io_chi_in_1_2,
  input  [63:0] io_chi_in_2_2,
  input  [63:0] io_chi_in_3_2,
  input  [63:0] io_chi_in_4_2,
  input  [63:0] io_chi_in_0_3,
  input  [63:0] io_chi_in_1_3,
  input  [63:0] io_chi_in_2_3,
  input  [63:0] io_chi_in_3_3,
  input  [63:0] io_chi_in_4_3,
  input  [63:0] io_chi_in_0_4,
  input  [63:0] io_chi_in_1_4,
  input  [63:0] io_chi_in_2_4,
  input  [63:0] io_chi_in_3_4,
  input  [63:0] io_chi_in_4_4,
  output [63:0] io_chi_out_0_0,
  output [63:0] io_chi_out_1_0,
  output [63:0] io_chi_out_2_0,
  output [63:0] io_chi_out_3_0,
  output [63:0] io_chi_out_4_0,
  output [63:0] io_chi_out_0_1,
  output [63:0] io_chi_out_1_1,
  output [63:0] io_chi_out_2_1,
  output [63:0] io_chi_out_3_1,
  output [63:0] io_chi_out_4_1,
  output [63:0] io_chi_out_0_2,
  output [63:0] io_chi_out_1_2,
  output [63:0] io_chi_out_2_2,
  output [63:0] io_chi_out_3_2,
  output [63:0] io_chi_out_4_2,
  output [63:0] io_chi_out_0_3,
  output [63:0] io_chi_out_1_3,
  output [63:0] io_chi_out_2_3,
  output [63:0] io_chi_out_3_3,
  output [63:0] io_chi_out_4_3,
  output [63:0] io_chi_out_0_4,
  output [63:0] io_chi_out_1_4,
  output [63:0] io_chi_out_2_4,
  output [63:0] io_chi_out_3_4,
  output [63:0] io_chi_out_4_4
);
  wire [63:0] chi_negation_0_0 = ~io_chi_in_1_0; // @[Chi.scala 185:25]
  wire [63:0] chi_negation_0_1 = ~io_chi_in_1_1; // @[Chi.scala 186:25]
  wire [63:0] chi_negation_0_2 = ~io_chi_in_1_2; // @[Chi.scala 187:25]
  wire [63:0] chi_negation_0_3 = ~io_chi_in_1_3; // @[Chi.scala 188:25]
  wire [63:0] chi_negation_0_4 = ~io_chi_in_1_4; // @[Chi.scala 189:25]
  wire [63:0] chi_negation_1_0 = ~io_chi_in_2_0; // @[Chi.scala 191:25]
  wire [63:0] chi_negation_1_1 = ~io_chi_in_2_1; // @[Chi.scala 192:25]
  wire [63:0] chi_negation_1_2 = ~io_chi_in_2_2; // @[Chi.scala 193:25]
  wire [63:0] chi_negation_1_3 = ~io_chi_in_2_3; // @[Chi.scala 194:25]
  wire [63:0] chi_negation_1_4 = ~io_chi_in_2_4; // @[Chi.scala 195:25]
  wire [63:0] chi_negation_2_0 = ~io_chi_in_3_0; // @[Chi.scala 197:25]
  wire [63:0] chi_negation_2_1 = ~io_chi_in_3_1; // @[Chi.scala 198:25]
  wire [63:0] chi_negation_2_2 = ~io_chi_in_3_2; // @[Chi.scala 199:25]
  wire [63:0] chi_negation_2_3 = ~io_chi_in_3_3; // @[Chi.scala 200:25]
  wire [63:0] chi_negation_2_4 = ~io_chi_in_3_4; // @[Chi.scala 201:25]
  wire [63:0] chi_negation_3_0 = ~io_chi_in_4_0; // @[Chi.scala 203:25]
  wire [63:0] chi_negation_3_1 = ~io_chi_in_4_1; // @[Chi.scala 204:25]
  wire [63:0] chi_negation_3_2 = ~io_chi_in_4_2; // @[Chi.scala 205:25]
  wire [63:0] chi_negation_3_3 = ~io_chi_in_4_3; // @[Chi.scala 206:25]
  wire [63:0] chi_negation_3_4 = ~io_chi_in_4_4; // @[Chi.scala 207:25]
  wire [63:0] chi_negation_4_0 = ~io_chi_in_0_0; // @[Chi.scala 209:25]
  wire [63:0] chi_negation_4_1 = ~io_chi_in_0_1; // @[Chi.scala 210:25]
  wire [63:0] chi_negation_4_2 = ~io_chi_in_0_2; // @[Chi.scala 211:25]
  wire [63:0] chi_negation_4_3 = ~io_chi_in_0_3; // @[Chi.scala 212:25]
  wire [63:0] chi_negation_4_4 = ~io_chi_in_0_4; // @[Chi.scala 213:25]
  wire [63:0] chi_xor_rhs_0_0 = chi_negation_0_0 & io_chi_in_2_0; // @[Chi.scala 215:41]
  wire [63:0] chi_xor_rhs_0_1 = chi_negation_0_1 & io_chi_in_2_1; // @[Chi.scala 216:41]
  wire [63:0] chi_xor_rhs_0_2 = chi_negation_0_2 & io_chi_in_2_2; // @[Chi.scala 217:41]
  wire [63:0] chi_xor_rhs_0_3 = chi_negation_0_3 & io_chi_in_2_3; // @[Chi.scala 218:41]
  wire [63:0] chi_xor_rhs_0_4 = chi_negation_0_4 & io_chi_in_2_4; // @[Chi.scala 219:41]
  wire [63:0] chi_xor_rhs_1_0 = chi_negation_1_0 & io_chi_in_3_0; // @[Chi.scala 221:41]
  wire [63:0] chi_xor_rhs_1_1 = chi_negation_1_1 & io_chi_in_3_1; // @[Chi.scala 222:41]
  wire [63:0] chi_xor_rhs_1_2 = chi_negation_1_2 & io_chi_in_3_2; // @[Chi.scala 223:41]
  wire [63:0] chi_xor_rhs_1_3 = chi_negation_1_3 & io_chi_in_3_3; // @[Chi.scala 224:41]
  wire [63:0] chi_xor_rhs_1_4 = chi_negation_1_4 & io_chi_in_3_4; // @[Chi.scala 225:41]
  wire [63:0] chi_xor_rhs_2_0 = chi_negation_2_0 & io_chi_in_4_0; // @[Chi.scala 227:41]
  wire [63:0] chi_xor_rhs_2_1 = chi_negation_2_1 & io_chi_in_4_1; // @[Chi.scala 228:41]
  wire [63:0] chi_xor_rhs_2_2 = chi_negation_2_2 & io_chi_in_4_2; // @[Chi.scala 229:41]
  wire [63:0] chi_xor_rhs_2_3 = chi_negation_2_3 & io_chi_in_4_3; // @[Chi.scala 230:41]
  wire [63:0] chi_xor_rhs_2_4 = chi_negation_2_4 & io_chi_in_4_4; // @[Chi.scala 231:41]
  wire [63:0] chi_xor_rhs_3_0 = chi_negation_3_0 & io_chi_in_0_0; // @[Chi.scala 233:41]
  wire [63:0] chi_xor_rhs_3_1 = chi_negation_3_1 & io_chi_in_0_1; // @[Chi.scala 234:41]
  wire [63:0] chi_xor_rhs_3_2 = chi_negation_3_2 & io_chi_in_0_2; // @[Chi.scala 235:41]
  wire [63:0] chi_xor_rhs_3_3 = chi_negation_3_3 & io_chi_in_0_3; // @[Chi.scala 236:41]
  wire [63:0] chi_xor_rhs_3_4 = chi_negation_3_4 & io_chi_in_0_4; // @[Chi.scala 237:41]
  wire [63:0] chi_xor_rhs_4_0 = chi_negation_4_0 & io_chi_in_1_0; // @[Chi.scala 239:41]
  wire [63:0] chi_xor_rhs_4_1 = chi_negation_4_1 & io_chi_in_1_1; // @[Chi.scala 240:41]
  wire [63:0] chi_xor_rhs_4_2 = chi_negation_4_2 & io_chi_in_1_2; // @[Chi.scala 241:41]
  wire [63:0] chi_xor_rhs_4_3 = chi_negation_4_3 & io_chi_in_1_3; // @[Chi.scala 242:41]
  wire [63:0] chi_xor_rhs_4_4 = chi_negation_4_4 & io_chi_in_1_4; // @[Chi.scala 243:41]
  assign io_chi_out_0_0 = io_chi_in_0_0 ^ chi_xor_rhs_0_0; // @[Chi.scala 307:36]
  assign io_chi_out_1_0 = io_chi_in_1_0 ^ chi_xor_rhs_1_0; // @[Chi.scala 313:36]
  assign io_chi_out_2_0 = io_chi_in_2_0 ^ chi_xor_rhs_2_0; // @[Chi.scala 319:36]
  assign io_chi_out_3_0 = io_chi_in_3_0 ^ chi_xor_rhs_3_0; // @[Chi.scala 325:36]
  assign io_chi_out_4_0 = io_chi_in_4_0 ^ chi_xor_rhs_4_0; // @[Chi.scala 331:36]
  assign io_chi_out_0_1 = io_chi_in_0_1 ^ chi_xor_rhs_0_1; // @[Chi.scala 308:36]
  assign io_chi_out_1_1 = io_chi_in_1_1 ^ chi_xor_rhs_1_1; // @[Chi.scala 314:36]
  assign io_chi_out_2_1 = io_chi_in_2_1 ^ chi_xor_rhs_2_1; // @[Chi.scala 320:36]
  assign io_chi_out_3_1 = io_chi_in_3_1 ^ chi_xor_rhs_3_1; // @[Chi.scala 326:36]
  assign io_chi_out_4_1 = io_chi_in_4_1 ^ chi_xor_rhs_4_1; // @[Chi.scala 332:36]
  assign io_chi_out_0_2 = io_chi_in_0_2 ^ chi_xor_rhs_0_2; // @[Chi.scala 309:36]
  assign io_chi_out_1_2 = io_chi_in_1_2 ^ chi_xor_rhs_1_2; // @[Chi.scala 315:36]
  assign io_chi_out_2_2 = io_chi_in_2_2 ^ chi_xor_rhs_2_2; // @[Chi.scala 321:36]
  assign io_chi_out_3_2 = io_chi_in_3_2 ^ chi_xor_rhs_3_2; // @[Chi.scala 327:36]
  assign io_chi_out_4_2 = io_chi_in_4_2 ^ chi_xor_rhs_4_2; // @[Chi.scala 333:36]
  assign io_chi_out_0_3 = io_chi_in_0_3 ^ chi_xor_rhs_0_3; // @[Chi.scala 310:36]
  assign io_chi_out_1_3 = io_chi_in_1_3 ^ chi_xor_rhs_1_3; // @[Chi.scala 316:36]
  assign io_chi_out_2_3 = io_chi_in_2_3 ^ chi_xor_rhs_2_3; // @[Chi.scala 322:36]
  assign io_chi_out_3_3 = io_chi_in_3_3 ^ chi_xor_rhs_3_3; // @[Chi.scala 328:36]
  assign io_chi_out_4_3 = io_chi_in_4_3 ^ chi_xor_rhs_4_3; // @[Chi.scala 334:36]
  assign io_chi_out_0_4 = io_chi_in_0_4 ^ chi_xor_rhs_0_4; // @[Chi.scala 311:36]
  assign io_chi_out_1_4 = io_chi_in_1_4 ^ chi_xor_rhs_1_4; // @[Chi.scala 317:36]
  assign io_chi_out_2_4 = io_chi_in_2_4 ^ chi_xor_rhs_2_4; // @[Chi.scala 323:36]
  assign io_chi_out_3_4 = io_chi_in_3_4 ^ chi_xor_rhs_3_4; // @[Chi.scala 329:36]
  assign io_chi_out_4_4 = io_chi_in_4_4 ^ chi_xor_rhs_4_4; // @[Chi.scala 335:36]
endmodule
module Iota(
  input  [63:0] io_iota_in,
  output [63:0] io_iota_out,
  input  [63:0] io_iota_round
);
  wire [63:0] _T_1 = io_iota_in ^ 64'h1; // @[Iota.scala 38:30]
  wire [63:0] _T_3 = io_iota_in ^ 64'h8082; // @[Iota.scala 40:30]
  wire [63:0] _T_5 = io_iota_in ^ 64'h800000000000808a; // @[Iota.scala 42:30]
  wire [63:0] _T_7 = io_iota_in ^ 64'h8000000080008000; // @[Iota.scala 44:30]
  wire [63:0] _T_9 = io_iota_in ^ 64'h808b; // @[Iota.scala 46:30]
  wire [63:0] _T_11 = io_iota_in ^ 64'h80000001; // @[Iota.scala 48:30]
  wire [63:0] _T_13 = io_iota_in ^ 64'h8000000080008081; // @[Iota.scala 50:30]
  wire [63:0] _T_15 = io_iota_in ^ 64'h8000000000008009; // @[Iota.scala 52:30]
  wire [63:0] _T_17 = io_iota_in ^ 64'h8a; // @[Iota.scala 54:30]
  wire [63:0] _T_19 = io_iota_in ^ 64'h88; // @[Iota.scala 56:30]
  wire [63:0] _T_21 = io_iota_in ^ 64'h80008009; // @[Iota.scala 58:30]
  wire [63:0] _T_23 = io_iota_in ^ 64'h8000000a; // @[Iota.scala 60:30]
  wire [63:0] _T_25 = io_iota_in ^ 64'h8000808b; // @[Iota.scala 62:30]
  wire [63:0] _T_27 = io_iota_in ^ 64'h800000000000008b; // @[Iota.scala 64:30]
  wire [63:0] _T_29 = io_iota_in ^ 64'h8000000000008089; // @[Iota.scala 66:30]
  wire [63:0] _T_31 = io_iota_in ^ 64'h8000000000008003; // @[Iota.scala 68:30]
  wire [63:0] _T_33 = io_iota_in ^ 64'h8000000000008002; // @[Iota.scala 70:30]
  wire [63:0] _T_35 = io_iota_in ^ 64'h8000000000000080; // @[Iota.scala 72:30]
  wire [63:0] _T_37 = io_iota_in ^ 64'h800a; // @[Iota.scala 74:30]
  wire [63:0] _T_39 = io_iota_in ^ 64'h800000008000000a; // @[Iota.scala 76:30]
  wire [63:0] _T_43 = io_iota_in ^ 64'h8000000000008080; // @[Iota.scala 80:30]
  wire [63:0] _T_47 = io_iota_in ^ 64'h8000000080008008; // @[Iota.scala 84:30]
  wire [63:0] _GEN_0 = io_iota_round == 64'h17 ? _T_47 : _T_1; // @[Iota.scala 83:37 Iota.scala 84:17 Iota.scala 86:17]
  wire [63:0] _GEN_1 = io_iota_round == 64'h16 ? _T_11 : _GEN_0; // @[Iota.scala 81:37 Iota.scala 82:17]
  wire [63:0] _GEN_2 = io_iota_round == 64'h15 ? _T_43 : _GEN_1; // @[Iota.scala 79:37 Iota.scala 80:17]
  wire [63:0] _GEN_3 = io_iota_round == 64'h14 ? _T_13 : _GEN_2; // @[Iota.scala 77:37 Iota.scala 78:17]
  wire [63:0] _GEN_4 = io_iota_round == 64'h13 ? _T_39 : _GEN_3; // @[Iota.scala 75:37 Iota.scala 76:17]
  wire [63:0] _GEN_5 = io_iota_round == 64'h12 ? _T_37 : _GEN_4; // @[Iota.scala 73:37 Iota.scala 74:17]
  wire [63:0] _GEN_6 = io_iota_round == 64'h11 ? _T_35 : _GEN_5; // @[Iota.scala 71:37 Iota.scala 72:17]
  wire [63:0] _GEN_7 = io_iota_round == 64'h10 ? _T_33 : _GEN_6; // @[Iota.scala 69:37 Iota.scala 70:17]
  wire [63:0] _GEN_8 = io_iota_round == 64'hf ? _T_31 : _GEN_7; // @[Iota.scala 67:37 Iota.scala 68:17]
  wire [63:0] _GEN_9 = io_iota_round == 64'he ? _T_29 : _GEN_8; // @[Iota.scala 65:37 Iota.scala 66:17]
  wire [63:0] _GEN_10 = io_iota_round == 64'hd ? _T_27 : _GEN_9; // @[Iota.scala 63:37 Iota.scala 64:17]
  wire [63:0] _GEN_11 = io_iota_round == 64'hc ? _T_25 : _GEN_10; // @[Iota.scala 61:37 Iota.scala 62:17]
  wire [63:0] _GEN_12 = io_iota_round == 64'hb ? _T_23 : _GEN_11; // @[Iota.scala 59:37 Iota.scala 60:17]
  wire [63:0] _GEN_13 = io_iota_round == 64'ha ? _T_21 : _GEN_12; // @[Iota.scala 57:37 Iota.scala 58:17]
  wire [63:0] _GEN_14 = io_iota_round == 64'h9 ? _T_19 : _GEN_13; // @[Iota.scala 55:36 Iota.scala 56:17]
  wire [63:0] _GEN_15 = io_iota_round == 64'h8 ? _T_17 : _GEN_14; // @[Iota.scala 53:36 Iota.scala 54:17]
  wire [63:0] _GEN_16 = io_iota_round == 64'h7 ? _T_15 : _GEN_15; // @[Iota.scala 51:36 Iota.scala 52:17]
  wire [63:0] _GEN_17 = io_iota_round == 64'h6 ? _T_13 : _GEN_16; // @[Iota.scala 49:36 Iota.scala 50:17]
  wire [63:0] _GEN_18 = io_iota_round == 64'h5 ? _T_11 : _GEN_17; // @[Iota.scala 47:36 Iota.scala 48:17]
  wire [63:0] _GEN_19 = io_iota_round == 64'h4 ? _T_9 : _GEN_18; // @[Iota.scala 45:36 Iota.scala 46:17]
  wire [63:0] _GEN_20 = io_iota_round == 64'h3 ? _T_7 : _GEN_19; // @[Iota.scala 43:36 Iota.scala 44:17]
  wire [63:0] _GEN_21 = io_iota_round == 64'h2 ? _T_5 : _GEN_20; // @[Iota.scala 41:36 Iota.scala 42:17]
  wire [63:0] _GEN_22 = io_iota_round == 64'h1 ? _T_3 : _GEN_21; // @[Iota.scala 39:36 Iota.scala 40:17]
  assign io_iota_out = io_iota_round == 64'h0 ? _T_1 : _GEN_22; // @[Iota.scala 37:30 Iota.scala 38:17]
endmodule
module Round(
  input         clock,
  input         reset,
  input  [63:0] io_round_in_0_0,
  input  [63:0] io_round_in_1_0,
  input  [63:0] io_round_in_2_0,
  input  [63:0] io_round_in_3_0,
  input  [63:0] io_round_in_4_0,
  input  [63:0] io_round_in_0_1,
  input  [63:0] io_round_in_1_1,
  input  [63:0] io_round_in_2_1,
  input  [63:0] io_round_in_3_1,
  input  [63:0] io_round_in_4_1,
  input  [63:0] io_round_in_0_2,
  input  [63:0] io_round_in_1_2,
  input  [63:0] io_round_in_2_2,
  input  [63:0] io_round_in_3_2,
  input  [63:0] io_round_in_4_2,
  input  [63:0] io_round_in_0_3,
  input  [63:0] io_round_in_1_3,
  input  [63:0] io_round_in_2_3,
  input  [63:0] io_round_in_3_3,
  input  [63:0] io_round_in_4_3,
  input  [63:0] io_round_in_0_4,
  input  [63:0] io_round_in_1_4,
  input  [63:0] io_round_in_2_4,
  input  [63:0] io_round_in_3_4,
  input  [63:0] io_round_in_4_4,
  output [63:0] io_round_out_0_0,
  output [63:0] io_round_out_1_0,
  output [63:0] io_round_out_2_0,
  output [63:0] io_round_out_3_0,
  output [63:0] io_round_out_4_0,
  output [63:0] io_round_out_0_1,
  output [63:0] io_round_out_1_1,
  output [63:0] io_round_out_2_1,
  output [63:0] io_round_out_3_1,
  output [63:0] io_round_out_4_1,
  output [63:0] io_round_out_0_2,
  output [63:0] io_round_out_1_2,
  output [63:0] io_round_out_2_2,
  output [63:0] io_round_out_3_2,
  output [63:0] io_round_out_4_2,
  output [63:0] io_round_out_0_3,
  output [63:0] io_round_out_1_3,
  output [63:0] io_round_out_2_3,
  output [63:0] io_round_out_3_3,
  output [63:0] io_round_out_4_3,
  output [63:0] io_round_out_0_4,
  output [63:0] io_round_out_1_4,
  output [63:0] io_round_out_2_4,
  output [63:0] io_round_out_3_4,
  output [63:0] io_round_out_4_4,
  input  [63:0] io_counter
);
  wire [63:0] theta_io_theta_in_0_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_1_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_2_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_3_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_4_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_0_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_1_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_2_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_3_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_4_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_0_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_1_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_2_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_3_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_4_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_0_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_1_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_2_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_3_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_4_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_0_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_1_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_2_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_3_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_in_4_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_0_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_1_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_2_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_3_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_4_0; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_0_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_1_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_2_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_3_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_4_1; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_0_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_1_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_2_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_3_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_4_2; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_0_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_1_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_2_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_3_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_4_3; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_0_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_1_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_2_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_3_4; // @[Round.scala 141:27]
  wire [63:0] theta_io_theta_out_4_4; // @[Round.scala 141:27]
  wire [63:0] rhoPi_io_rhoPi_in_0_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_1_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_2_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_3_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_4_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_0_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_1_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_2_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_3_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_4_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_0_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_1_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_2_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_3_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_4_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_0_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_1_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_2_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_3_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_4_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_0_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_1_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_2_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_3_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_in_4_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_0_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_1_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_2_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_3_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_4_0; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_0_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_1_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_2_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_3_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_4_1; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_0_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_1_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_2_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_3_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_4_2; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_0_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_1_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_2_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_3_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_4_3; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_0_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_1_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_2_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_3_4; // @[Round.scala 142:27]
  wire [63:0] rhoPi_io_rhoPi_out_4_4; // @[Round.scala 142:27]
  wire [63:0] chi_io_chi_in_0_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_1_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_2_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_3_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_4_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_0_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_1_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_2_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_3_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_4_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_0_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_1_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_2_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_3_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_4_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_0_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_1_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_2_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_3_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_4_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_0_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_1_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_2_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_3_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_in_4_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_0_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_1_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_2_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_3_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_4_0; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_0_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_1_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_2_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_3_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_4_1; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_0_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_1_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_2_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_3_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_4_2; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_0_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_1_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_2_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_3_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_4_3; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_0_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_1_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_2_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_3_4; // @[Round.scala 143:27]
  wire [63:0] chi_io_chi_out_4_4; // @[Round.scala 143:27]
  wire [63:0] iota_io_iota_in; // @[Round.scala 144:27]
  wire [63:0] iota_io_iota_out; // @[Round.scala 144:27]
  wire [63:0] iota_io_iota_round; // @[Round.scala 144:27]
  Theta theta ( // @[Round.scala 141:27]
    .io_theta_in_0_0(theta_io_theta_in_0_0),
    .io_theta_in_1_0(theta_io_theta_in_1_0),
    .io_theta_in_2_0(theta_io_theta_in_2_0),
    .io_theta_in_3_0(theta_io_theta_in_3_0),
    .io_theta_in_4_0(theta_io_theta_in_4_0),
    .io_theta_in_0_1(theta_io_theta_in_0_1),
    .io_theta_in_1_1(theta_io_theta_in_1_1),
    .io_theta_in_2_1(theta_io_theta_in_2_1),
    .io_theta_in_3_1(theta_io_theta_in_3_1),
    .io_theta_in_4_1(theta_io_theta_in_4_1),
    .io_theta_in_0_2(theta_io_theta_in_0_2),
    .io_theta_in_1_2(theta_io_theta_in_1_2),
    .io_theta_in_2_2(theta_io_theta_in_2_2),
    .io_theta_in_3_2(theta_io_theta_in_3_2),
    .io_theta_in_4_2(theta_io_theta_in_4_2),
    .io_theta_in_0_3(theta_io_theta_in_0_3),
    .io_theta_in_1_3(theta_io_theta_in_1_3),
    .io_theta_in_2_3(theta_io_theta_in_2_3),
    .io_theta_in_3_3(theta_io_theta_in_3_3),
    .io_theta_in_4_3(theta_io_theta_in_4_3),
    .io_theta_in_0_4(theta_io_theta_in_0_4),
    .io_theta_in_1_4(theta_io_theta_in_1_4),
    .io_theta_in_2_4(theta_io_theta_in_2_4),
    .io_theta_in_3_4(theta_io_theta_in_3_4),
    .io_theta_in_4_4(theta_io_theta_in_4_4),
    .io_theta_out_0_0(theta_io_theta_out_0_0),
    .io_theta_out_1_0(theta_io_theta_out_1_0),
    .io_theta_out_2_0(theta_io_theta_out_2_0),
    .io_theta_out_3_0(theta_io_theta_out_3_0),
    .io_theta_out_4_0(theta_io_theta_out_4_0),
    .io_theta_out_0_1(theta_io_theta_out_0_1),
    .io_theta_out_1_1(theta_io_theta_out_1_1),
    .io_theta_out_2_1(theta_io_theta_out_2_1),
    .io_theta_out_3_1(theta_io_theta_out_3_1),
    .io_theta_out_4_1(theta_io_theta_out_4_1),
    .io_theta_out_0_2(theta_io_theta_out_0_2),
    .io_theta_out_1_2(theta_io_theta_out_1_2),
    .io_theta_out_2_2(theta_io_theta_out_2_2),
    .io_theta_out_3_2(theta_io_theta_out_3_2),
    .io_theta_out_4_2(theta_io_theta_out_4_2),
    .io_theta_out_0_3(theta_io_theta_out_0_3),
    .io_theta_out_1_3(theta_io_theta_out_1_3),
    .io_theta_out_2_3(theta_io_theta_out_2_3),
    .io_theta_out_3_3(theta_io_theta_out_3_3),
    .io_theta_out_4_3(theta_io_theta_out_4_3),
    .io_theta_out_0_4(theta_io_theta_out_0_4),
    .io_theta_out_1_4(theta_io_theta_out_1_4),
    .io_theta_out_2_4(theta_io_theta_out_2_4),
    .io_theta_out_3_4(theta_io_theta_out_3_4),
    .io_theta_out_4_4(theta_io_theta_out_4_4)
  );
  RhoPi rhoPi ( // @[Round.scala 142:27]
    .io_rhoPi_in_0_0(rhoPi_io_rhoPi_in_0_0),
    .io_rhoPi_in_1_0(rhoPi_io_rhoPi_in_1_0),
    .io_rhoPi_in_2_0(rhoPi_io_rhoPi_in_2_0),
    .io_rhoPi_in_3_0(rhoPi_io_rhoPi_in_3_0),
    .io_rhoPi_in_4_0(rhoPi_io_rhoPi_in_4_0),
    .io_rhoPi_in_0_1(rhoPi_io_rhoPi_in_0_1),
    .io_rhoPi_in_1_1(rhoPi_io_rhoPi_in_1_1),
    .io_rhoPi_in_2_1(rhoPi_io_rhoPi_in_2_1),
    .io_rhoPi_in_3_1(rhoPi_io_rhoPi_in_3_1),
    .io_rhoPi_in_4_1(rhoPi_io_rhoPi_in_4_1),
    .io_rhoPi_in_0_2(rhoPi_io_rhoPi_in_0_2),
    .io_rhoPi_in_1_2(rhoPi_io_rhoPi_in_1_2),
    .io_rhoPi_in_2_2(rhoPi_io_rhoPi_in_2_2),
    .io_rhoPi_in_3_2(rhoPi_io_rhoPi_in_3_2),
    .io_rhoPi_in_4_2(rhoPi_io_rhoPi_in_4_2),
    .io_rhoPi_in_0_3(rhoPi_io_rhoPi_in_0_3),
    .io_rhoPi_in_1_3(rhoPi_io_rhoPi_in_1_3),
    .io_rhoPi_in_2_3(rhoPi_io_rhoPi_in_2_3),
    .io_rhoPi_in_3_3(rhoPi_io_rhoPi_in_3_3),
    .io_rhoPi_in_4_3(rhoPi_io_rhoPi_in_4_3),
    .io_rhoPi_in_0_4(rhoPi_io_rhoPi_in_0_4),
    .io_rhoPi_in_1_4(rhoPi_io_rhoPi_in_1_4),
    .io_rhoPi_in_2_4(rhoPi_io_rhoPi_in_2_4),
    .io_rhoPi_in_3_4(rhoPi_io_rhoPi_in_3_4),
    .io_rhoPi_in_4_4(rhoPi_io_rhoPi_in_4_4),
    .io_rhoPi_out_0_0(rhoPi_io_rhoPi_out_0_0),
    .io_rhoPi_out_1_0(rhoPi_io_rhoPi_out_1_0),
    .io_rhoPi_out_2_0(rhoPi_io_rhoPi_out_2_0),
    .io_rhoPi_out_3_0(rhoPi_io_rhoPi_out_3_0),
    .io_rhoPi_out_4_0(rhoPi_io_rhoPi_out_4_0),
    .io_rhoPi_out_0_1(rhoPi_io_rhoPi_out_0_1),
    .io_rhoPi_out_1_1(rhoPi_io_rhoPi_out_1_1),
    .io_rhoPi_out_2_1(rhoPi_io_rhoPi_out_2_1),
    .io_rhoPi_out_3_1(rhoPi_io_rhoPi_out_3_1),
    .io_rhoPi_out_4_1(rhoPi_io_rhoPi_out_4_1),
    .io_rhoPi_out_0_2(rhoPi_io_rhoPi_out_0_2),
    .io_rhoPi_out_1_2(rhoPi_io_rhoPi_out_1_2),
    .io_rhoPi_out_2_2(rhoPi_io_rhoPi_out_2_2),
    .io_rhoPi_out_3_2(rhoPi_io_rhoPi_out_3_2),
    .io_rhoPi_out_4_2(rhoPi_io_rhoPi_out_4_2),
    .io_rhoPi_out_0_3(rhoPi_io_rhoPi_out_0_3),
    .io_rhoPi_out_1_3(rhoPi_io_rhoPi_out_1_3),
    .io_rhoPi_out_2_3(rhoPi_io_rhoPi_out_2_3),
    .io_rhoPi_out_3_3(rhoPi_io_rhoPi_out_3_3),
    .io_rhoPi_out_4_3(rhoPi_io_rhoPi_out_4_3),
    .io_rhoPi_out_0_4(rhoPi_io_rhoPi_out_0_4),
    .io_rhoPi_out_1_4(rhoPi_io_rhoPi_out_1_4),
    .io_rhoPi_out_2_4(rhoPi_io_rhoPi_out_2_4),
    .io_rhoPi_out_3_4(rhoPi_io_rhoPi_out_3_4),
    .io_rhoPi_out_4_4(rhoPi_io_rhoPi_out_4_4)
  );
  Chi chi ( // @[Round.scala 143:27]
    .io_chi_in_0_0(chi_io_chi_in_0_0),
    .io_chi_in_1_0(chi_io_chi_in_1_0),
    .io_chi_in_2_0(chi_io_chi_in_2_0),
    .io_chi_in_3_0(chi_io_chi_in_3_0),
    .io_chi_in_4_0(chi_io_chi_in_4_0),
    .io_chi_in_0_1(chi_io_chi_in_0_1),
    .io_chi_in_1_1(chi_io_chi_in_1_1),
    .io_chi_in_2_1(chi_io_chi_in_2_1),
    .io_chi_in_3_1(chi_io_chi_in_3_1),
    .io_chi_in_4_1(chi_io_chi_in_4_1),
    .io_chi_in_0_2(chi_io_chi_in_0_2),
    .io_chi_in_1_2(chi_io_chi_in_1_2),
    .io_chi_in_2_2(chi_io_chi_in_2_2),
    .io_chi_in_3_2(chi_io_chi_in_3_2),
    .io_chi_in_4_2(chi_io_chi_in_4_2),
    .io_chi_in_0_3(chi_io_chi_in_0_3),
    .io_chi_in_1_3(chi_io_chi_in_1_3),
    .io_chi_in_2_3(chi_io_chi_in_2_3),
    .io_chi_in_3_3(chi_io_chi_in_3_3),
    .io_chi_in_4_3(chi_io_chi_in_4_3),
    .io_chi_in_0_4(chi_io_chi_in_0_4),
    .io_chi_in_1_4(chi_io_chi_in_1_4),
    .io_chi_in_2_4(chi_io_chi_in_2_4),
    .io_chi_in_3_4(chi_io_chi_in_3_4),
    .io_chi_in_4_4(chi_io_chi_in_4_4),
    .io_chi_out_0_0(chi_io_chi_out_0_0),
    .io_chi_out_1_0(chi_io_chi_out_1_0),
    .io_chi_out_2_0(chi_io_chi_out_2_0),
    .io_chi_out_3_0(chi_io_chi_out_3_0),
    .io_chi_out_4_0(chi_io_chi_out_4_0),
    .io_chi_out_0_1(chi_io_chi_out_0_1),
    .io_chi_out_1_1(chi_io_chi_out_1_1),
    .io_chi_out_2_1(chi_io_chi_out_2_1),
    .io_chi_out_3_1(chi_io_chi_out_3_1),
    .io_chi_out_4_1(chi_io_chi_out_4_1),
    .io_chi_out_0_2(chi_io_chi_out_0_2),
    .io_chi_out_1_2(chi_io_chi_out_1_2),
    .io_chi_out_2_2(chi_io_chi_out_2_2),
    .io_chi_out_3_2(chi_io_chi_out_3_2),
    .io_chi_out_4_2(chi_io_chi_out_4_2),
    .io_chi_out_0_3(chi_io_chi_out_0_3),
    .io_chi_out_1_3(chi_io_chi_out_1_3),
    .io_chi_out_2_3(chi_io_chi_out_2_3),
    .io_chi_out_3_3(chi_io_chi_out_3_3),
    .io_chi_out_4_3(chi_io_chi_out_4_3),
    .io_chi_out_0_4(chi_io_chi_out_0_4),
    .io_chi_out_1_4(chi_io_chi_out_1_4),
    .io_chi_out_2_4(chi_io_chi_out_2_4),
    .io_chi_out_3_4(chi_io_chi_out_3_4),
    .io_chi_out_4_4(chi_io_chi_out_4_4)
  );
  Iota iota ( // @[Round.scala 144:27]
    .io_iota_in(iota_io_iota_in),
    .io_iota_out(iota_io_iota_out),
    .io_iota_round(iota_io_iota_round)
  );
  assign io_round_out_0_0 = iota_io_iota_out; // @[Round.scala 241:22]
  assign io_round_out_1_0 = chi_io_chi_out_1_0; // @[Round.scala 247:22]
  assign io_round_out_2_0 = chi_io_chi_out_2_0; // @[Round.scala 253:22]
  assign io_round_out_3_0 = chi_io_chi_out_3_0; // @[Round.scala 259:22]
  assign io_round_out_4_0 = chi_io_chi_out_4_0; // @[Round.scala 265:22]
  assign io_round_out_0_1 = chi_io_chi_out_0_1; // @[Round.scala 242:22]
  assign io_round_out_1_1 = chi_io_chi_out_1_1; // @[Round.scala 248:22]
  assign io_round_out_2_1 = chi_io_chi_out_2_1; // @[Round.scala 254:22]
  assign io_round_out_3_1 = chi_io_chi_out_3_1; // @[Round.scala 260:22]
  assign io_round_out_4_1 = chi_io_chi_out_4_1; // @[Round.scala 266:22]
  assign io_round_out_0_2 = chi_io_chi_out_0_2; // @[Round.scala 243:22]
  assign io_round_out_1_2 = chi_io_chi_out_1_2; // @[Round.scala 249:22]
  assign io_round_out_2_2 = chi_io_chi_out_2_2; // @[Round.scala 255:22]
  assign io_round_out_3_2 = chi_io_chi_out_3_2; // @[Round.scala 261:22]
  assign io_round_out_4_2 = chi_io_chi_out_4_2; // @[Round.scala 267:22]
  assign io_round_out_0_3 = chi_io_chi_out_0_3; // @[Round.scala 244:22]
  assign io_round_out_1_3 = chi_io_chi_out_1_3; // @[Round.scala 250:22]
  assign io_round_out_2_3 = chi_io_chi_out_2_3; // @[Round.scala 256:22]
  assign io_round_out_3_3 = chi_io_chi_out_3_3; // @[Round.scala 262:22]
  assign io_round_out_4_3 = chi_io_chi_out_4_3; // @[Round.scala 268:22]
  assign io_round_out_0_4 = chi_io_chi_out_0_4; // @[Round.scala 245:22]
  assign io_round_out_1_4 = chi_io_chi_out_1_4; // @[Round.scala 251:22]
  assign io_round_out_2_4 = chi_io_chi_out_2_4; // @[Round.scala 257:22]
  assign io_round_out_3_4 = chi_io_chi_out_3_4; // @[Round.scala 263:22]
  assign io_round_out_4_4 = chi_io_chi_out_4_4; // @[Round.scala 269:22]
  assign theta_io_theta_in_0_0 = io_round_in_0_0; // @[Round.scala 149:27]
  assign theta_io_theta_in_1_0 = io_round_in_1_0; // @[Round.scala 155:27]
  assign theta_io_theta_in_2_0 = io_round_in_2_0; // @[Round.scala 161:27]
  assign theta_io_theta_in_3_0 = io_round_in_3_0; // @[Round.scala 167:27]
  assign theta_io_theta_in_4_0 = io_round_in_4_0; // @[Round.scala 173:27]
  assign theta_io_theta_in_0_1 = io_round_in_0_1; // @[Round.scala 150:27]
  assign theta_io_theta_in_1_1 = io_round_in_1_1; // @[Round.scala 156:27]
  assign theta_io_theta_in_2_1 = io_round_in_2_1; // @[Round.scala 162:27]
  assign theta_io_theta_in_3_1 = io_round_in_3_1; // @[Round.scala 168:27]
  assign theta_io_theta_in_4_1 = io_round_in_4_1; // @[Round.scala 174:27]
  assign theta_io_theta_in_0_2 = io_round_in_0_2; // @[Round.scala 151:27]
  assign theta_io_theta_in_1_2 = io_round_in_1_2; // @[Round.scala 157:27]
  assign theta_io_theta_in_2_2 = io_round_in_2_2; // @[Round.scala 163:27]
  assign theta_io_theta_in_3_2 = io_round_in_3_2; // @[Round.scala 169:27]
  assign theta_io_theta_in_4_2 = io_round_in_4_2; // @[Round.scala 175:27]
  assign theta_io_theta_in_0_3 = io_round_in_0_3; // @[Round.scala 152:27]
  assign theta_io_theta_in_1_3 = io_round_in_1_3; // @[Round.scala 158:27]
  assign theta_io_theta_in_2_3 = io_round_in_2_3; // @[Round.scala 164:27]
  assign theta_io_theta_in_3_3 = io_round_in_3_3; // @[Round.scala 170:27]
  assign theta_io_theta_in_4_3 = io_round_in_4_3; // @[Round.scala 176:27]
  assign theta_io_theta_in_0_4 = io_round_in_0_4; // @[Round.scala 153:27]
  assign theta_io_theta_in_1_4 = io_round_in_1_4; // @[Round.scala 159:27]
  assign theta_io_theta_in_2_4 = io_round_in_2_4; // @[Round.scala 165:27]
  assign theta_io_theta_in_3_4 = io_round_in_3_4; // @[Round.scala 171:27]
  assign theta_io_theta_in_4_4 = io_round_in_4_4; // @[Round.scala 177:27]
  assign rhoPi_io_rhoPi_in_0_0 = theta_io_theta_out_0_0; // @[Round.scala 179:27]
  assign rhoPi_io_rhoPi_in_1_0 = theta_io_theta_out_1_0; // @[Round.scala 185:27]
  assign rhoPi_io_rhoPi_in_2_0 = theta_io_theta_out_2_0; // @[Round.scala 191:27]
  assign rhoPi_io_rhoPi_in_3_0 = theta_io_theta_out_3_0; // @[Round.scala 197:27]
  assign rhoPi_io_rhoPi_in_4_0 = theta_io_theta_out_4_0; // @[Round.scala 203:27]
  assign rhoPi_io_rhoPi_in_0_1 = theta_io_theta_out_0_1; // @[Round.scala 180:27]
  assign rhoPi_io_rhoPi_in_1_1 = theta_io_theta_out_1_1; // @[Round.scala 186:27]
  assign rhoPi_io_rhoPi_in_2_1 = theta_io_theta_out_2_1; // @[Round.scala 192:27]
  assign rhoPi_io_rhoPi_in_3_1 = theta_io_theta_out_3_1; // @[Round.scala 198:27]
  assign rhoPi_io_rhoPi_in_4_1 = theta_io_theta_out_4_1; // @[Round.scala 204:27]
  assign rhoPi_io_rhoPi_in_0_2 = theta_io_theta_out_0_2; // @[Round.scala 181:27]
  assign rhoPi_io_rhoPi_in_1_2 = theta_io_theta_out_1_2; // @[Round.scala 187:27]
  assign rhoPi_io_rhoPi_in_2_2 = theta_io_theta_out_2_2; // @[Round.scala 193:27]
  assign rhoPi_io_rhoPi_in_3_2 = theta_io_theta_out_3_2; // @[Round.scala 199:27]
  assign rhoPi_io_rhoPi_in_4_2 = theta_io_theta_out_4_2; // @[Round.scala 205:27]
  assign rhoPi_io_rhoPi_in_0_3 = theta_io_theta_out_0_3; // @[Round.scala 182:27]
  assign rhoPi_io_rhoPi_in_1_3 = theta_io_theta_out_1_3; // @[Round.scala 188:27]
  assign rhoPi_io_rhoPi_in_2_3 = theta_io_theta_out_2_3; // @[Round.scala 194:27]
  assign rhoPi_io_rhoPi_in_3_3 = theta_io_theta_out_3_3; // @[Round.scala 200:27]
  assign rhoPi_io_rhoPi_in_4_3 = theta_io_theta_out_4_3; // @[Round.scala 206:27]
  assign rhoPi_io_rhoPi_in_0_4 = theta_io_theta_out_0_4; // @[Round.scala 183:27]
  assign rhoPi_io_rhoPi_in_1_4 = theta_io_theta_out_1_4; // @[Round.scala 189:27]
  assign rhoPi_io_rhoPi_in_2_4 = theta_io_theta_out_2_4; // @[Round.scala 195:27]
  assign rhoPi_io_rhoPi_in_3_4 = theta_io_theta_out_3_4; // @[Round.scala 201:27]
  assign rhoPi_io_rhoPi_in_4_4 = theta_io_theta_out_4_4; // @[Round.scala 207:27]
  assign chi_io_chi_in_0_0 = rhoPi_io_rhoPi_out_0_0; // @[Round.scala 209:23]
  assign chi_io_chi_in_1_0 = rhoPi_io_rhoPi_out_1_0; // @[Round.scala 215:23]
  assign chi_io_chi_in_2_0 = rhoPi_io_rhoPi_out_2_0; // @[Round.scala 221:23]
  assign chi_io_chi_in_3_0 = rhoPi_io_rhoPi_out_3_0; // @[Round.scala 227:23]
  assign chi_io_chi_in_4_0 = rhoPi_io_rhoPi_out_4_0; // @[Round.scala 233:23]
  assign chi_io_chi_in_0_1 = rhoPi_io_rhoPi_out_0_1; // @[Round.scala 210:23]
  assign chi_io_chi_in_1_1 = rhoPi_io_rhoPi_out_1_1; // @[Round.scala 216:23]
  assign chi_io_chi_in_2_1 = rhoPi_io_rhoPi_out_2_1; // @[Round.scala 222:23]
  assign chi_io_chi_in_3_1 = rhoPi_io_rhoPi_out_3_1; // @[Round.scala 228:23]
  assign chi_io_chi_in_4_1 = rhoPi_io_rhoPi_out_4_1; // @[Round.scala 234:23]
  assign chi_io_chi_in_0_2 = rhoPi_io_rhoPi_out_0_2; // @[Round.scala 211:23]
  assign chi_io_chi_in_1_2 = rhoPi_io_rhoPi_out_1_2; // @[Round.scala 217:23]
  assign chi_io_chi_in_2_2 = rhoPi_io_rhoPi_out_2_2; // @[Round.scala 223:23]
  assign chi_io_chi_in_3_2 = rhoPi_io_rhoPi_out_3_2; // @[Round.scala 229:23]
  assign chi_io_chi_in_4_2 = rhoPi_io_rhoPi_out_4_2; // @[Round.scala 235:23]
  assign chi_io_chi_in_0_3 = rhoPi_io_rhoPi_out_0_3; // @[Round.scala 212:23]
  assign chi_io_chi_in_1_3 = rhoPi_io_rhoPi_out_1_3; // @[Round.scala 218:23]
  assign chi_io_chi_in_2_3 = rhoPi_io_rhoPi_out_2_3; // @[Round.scala 224:23]
  assign chi_io_chi_in_3_3 = rhoPi_io_rhoPi_out_3_3; // @[Round.scala 230:23]
  assign chi_io_chi_in_4_3 = rhoPi_io_rhoPi_out_4_3; // @[Round.scala 236:23]
  assign chi_io_chi_in_0_4 = rhoPi_io_rhoPi_out_0_4; // @[Round.scala 213:23]
  assign chi_io_chi_in_1_4 = rhoPi_io_rhoPi_out_1_4; // @[Round.scala 219:23]
  assign chi_io_chi_in_2_4 = rhoPi_io_rhoPi_out_2_4; // @[Round.scala 225:23]
  assign chi_io_chi_in_3_4 = rhoPi_io_rhoPi_out_3_4; // @[Round.scala 231:23]
  assign chi_io_chi_in_4_4 = rhoPi_io_rhoPi_out_4_4; // @[Round.scala 237:23]
  assign iota_io_iota_in = chi_io_chi_out_0_0; // @[Round.scala 239:24]
  assign iota_io_iota_round = io_counter; // @[Round.scala 148:24]
endmodule
