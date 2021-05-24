module Theta(
  input  [63:0] io_theta_in_0_0,
  input  [63:0] io_theta_in_0_1,
  input  [63:0] io_theta_in_0_2,
  input  [63:0] io_theta_in_0_3,
  input  [63:0] io_theta_in_0_4,
  input  [63:0] io_theta_in_1_0,
  input  [63:0] io_theta_in_1_1,
  input  [63:0] io_theta_in_1_2,
  input  [63:0] io_theta_in_1_3,
  input  [63:0] io_theta_in_1_4,
  input  [63:0] io_theta_in_2_0,
  input  [63:0] io_theta_in_2_1,
  input  [63:0] io_theta_in_2_2,
  input  [63:0] io_theta_in_2_3,
  input  [63:0] io_theta_in_2_4,
  input  [63:0] io_theta_in_3_0,
  input  [63:0] io_theta_in_3_1,
  input  [63:0] io_theta_in_3_2,
  input  [63:0] io_theta_in_3_3,
  input  [63:0] io_theta_in_3_4,
  input  [63:0] io_theta_in_4_0,
  input  [63:0] io_theta_in_4_1,
  input  [63:0] io_theta_in_4_2,
  input  [63:0] io_theta_in_4_3,
  input  [63:0] io_theta_in_4_4,
  output [63:0] io_theta_out_0_0,
  output [63:0] io_theta_out_0_1,
  output [63:0] io_theta_out_0_2,
  output [63:0] io_theta_out_0_3,
  output [63:0] io_theta_out_0_4,
  output [63:0] io_theta_out_1_0,
  output [63:0] io_theta_out_1_1,
  output [63:0] io_theta_out_1_2,
  output [63:0] io_theta_out_1_3,
  output [63:0] io_theta_out_1_4,
  output [63:0] io_theta_out_2_0,
  output [63:0] io_theta_out_2_1,
  output [63:0] io_theta_out_2_2,
  output [63:0] io_theta_out_2_3,
  output [63:0] io_theta_out_2_4,
  output [63:0] io_theta_out_3_0,
  output [63:0] io_theta_out_3_1,
  output [63:0] io_theta_out_3_2,
  output [63:0] io_theta_out_3_3,
  output [63:0] io_theta_out_3_4,
  output [63:0] io_theta_out_4_0,
  output [63:0] io_theta_out_4_1,
  output [63:0] io_theta_out_4_2,
  output [63:0] io_theta_out_4_3,
  output [63:0] io_theta_out_4_4
);
  wire [63:0] _T = io_theta_in_0_0 ^ io_theta_in_0_1; // @[Theta.scala 38:30]
  wire [63:0] _T_1 = _T ^ io_theta_in_0_2; // @[Theta.scala 38:48]
  wire [63:0] _T_2 = _T_1 ^ io_theta_in_0_3; // @[Theta.scala 38:66]
  wire [63:0] c_0 = _T_2 ^ io_theta_in_0_4; // @[Theta.scala 38:84]
  wire [63:0] _T_4 = io_theta_in_1_0 ^ io_theta_in_1_1; // @[Theta.scala 38:30]
  wire [63:0] _T_5 = _T_4 ^ io_theta_in_1_2; // @[Theta.scala 38:48]
  wire [63:0] _T_6 = _T_5 ^ io_theta_in_1_3; // @[Theta.scala 38:66]
  wire [63:0] c_1 = _T_6 ^ io_theta_in_1_4; // @[Theta.scala 38:84]
  wire [63:0] _T_8 = io_theta_in_2_0 ^ io_theta_in_2_1; // @[Theta.scala 38:30]
  wire [63:0] _T_9 = _T_8 ^ io_theta_in_2_2; // @[Theta.scala 38:48]
  wire [63:0] _T_10 = _T_9 ^ io_theta_in_2_3; // @[Theta.scala 38:66]
  wire [63:0] c_2 = _T_10 ^ io_theta_in_2_4; // @[Theta.scala 38:84]
  wire [63:0] _T_12 = io_theta_in_3_0 ^ io_theta_in_3_1; // @[Theta.scala 38:30]
  wire [63:0] _T_13 = _T_12 ^ io_theta_in_3_2; // @[Theta.scala 38:48]
  wire [63:0] _T_14 = _T_13 ^ io_theta_in_3_3; // @[Theta.scala 38:66]
  wire [63:0] c_3 = _T_14 ^ io_theta_in_3_4; // @[Theta.scala 38:84]
  wire [63:0] _T_16 = io_theta_in_4_0 ^ io_theta_in_4_1; // @[Theta.scala 38:30]
  wire [63:0] _T_17 = _T_16 ^ io_theta_in_4_2; // @[Theta.scala 38:48]
  wire [63:0] _T_18 = _T_17 ^ io_theta_in_4_3; // @[Theta.scala 38:66]
  wire [63:0] c_4 = _T_18 ^ io_theta_in_4_4; // @[Theta.scala 38:84]
  wire [64:0] _T_20 = {c_1, 1'h0}; // @[Theta.scala 44:44]
  wire [63:0] rotation1_0 = _T_20[63:0]; // @[Theta.scala 15:23 Theta.scala 44:25]
  wire [63:0] rotation2_0 = {{63'd0}, c_1[63]}; // @[Theta.scala 16:23 Theta.scala 45:25]
  wire [63:0] rotation_result_0 = rotation1_0 | rotation2_0; // @[Theta.scala 46:41]
  wire [63:0] d_0 = c_4 ^ rotation_result_0; // @[Theta.scala 47:30]
  wire [64:0] _T_24 = {c_2, 1'h0}; // @[Theta.scala 44:44]
  wire [63:0] rotation1_1 = _T_24[63:0]; // @[Theta.scala 15:23 Theta.scala 44:25]
  wire [63:0] rotation2_1 = {{63'd0}, c_2[63]}; // @[Theta.scala 16:23 Theta.scala 45:25]
  wire [63:0] rotation_result_1 = rotation1_1 | rotation2_1; // @[Theta.scala 46:41]
  wire [63:0] d_1 = c_0 ^ rotation_result_1; // @[Theta.scala 47:30]
  wire [64:0] _T_28 = {c_3, 1'h0}; // @[Theta.scala 44:44]
  wire [63:0] rotation1_2 = _T_28[63:0]; // @[Theta.scala 15:23 Theta.scala 44:25]
  wire [63:0] rotation2_2 = {{63'd0}, c_3[63]}; // @[Theta.scala 16:23 Theta.scala 45:25]
  wire [63:0] rotation_result_2 = rotation1_2 | rotation2_2; // @[Theta.scala 46:41]
  wire [63:0] d_2 = c_1 ^ rotation_result_2; // @[Theta.scala 47:30]
  wire [64:0] _T_32 = {c_4, 1'h0}; // @[Theta.scala 44:44]
  wire [63:0] rotation1_3 = _T_32[63:0]; // @[Theta.scala 15:23 Theta.scala 44:25]
  wire [63:0] rotation2_3 = {{63'd0}, c_4[63]}; // @[Theta.scala 16:23 Theta.scala 45:25]
  wire [63:0] rotation_result_3 = rotation1_3 | rotation2_3; // @[Theta.scala 46:41]
  wire [63:0] d_3 = c_2 ^ rotation_result_3; // @[Theta.scala 47:30]
  wire [64:0] _T_36 = {c_0, 1'h0}; // @[Theta.scala 44:44]
  wire [63:0] rotation1_4 = _T_36[63:0]; // @[Theta.scala 15:23 Theta.scala 44:25]
  wire [63:0] rotation2_4 = {{63'd0}, c_0[63]}; // @[Theta.scala 16:23 Theta.scala 45:25]
  wire [63:0] rotation_result_4 = rotation1_4 | rotation2_4; // @[Theta.scala 46:41]
  wire [63:0] d_4 = c_3 ^ rotation_result_4; // @[Theta.scala 47:30]
  assign io_theta_out_0_0 = io_theta_in_0_0 ^ d_0; // @[Theta.scala 53:38]
  assign io_theta_out_0_1 = io_theta_in_0_1 ^ d_0; // @[Theta.scala 53:38]
  assign io_theta_out_0_2 = io_theta_in_0_2 ^ d_0; // @[Theta.scala 53:38]
  assign io_theta_out_0_3 = io_theta_in_0_3 ^ d_0; // @[Theta.scala 53:38]
  assign io_theta_out_0_4 = io_theta_in_0_4 ^ d_0; // @[Theta.scala 53:38]
  assign io_theta_out_1_0 = io_theta_in_1_0 ^ d_1; // @[Theta.scala 53:38]
  assign io_theta_out_1_1 = io_theta_in_1_1 ^ d_1; // @[Theta.scala 53:38]
  assign io_theta_out_1_2 = io_theta_in_1_2 ^ d_1; // @[Theta.scala 53:38]
  assign io_theta_out_1_3 = io_theta_in_1_3 ^ d_1; // @[Theta.scala 53:38]
  assign io_theta_out_1_4 = io_theta_in_1_4 ^ d_1; // @[Theta.scala 53:38]
  assign io_theta_out_2_0 = io_theta_in_2_0 ^ d_2; // @[Theta.scala 53:38]
  assign io_theta_out_2_1 = io_theta_in_2_1 ^ d_2; // @[Theta.scala 53:38]
  assign io_theta_out_2_2 = io_theta_in_2_2 ^ d_2; // @[Theta.scala 53:38]
  assign io_theta_out_2_3 = io_theta_in_2_3 ^ d_2; // @[Theta.scala 53:38]
  assign io_theta_out_2_4 = io_theta_in_2_4 ^ d_2; // @[Theta.scala 53:38]
  assign io_theta_out_3_0 = io_theta_in_3_0 ^ d_3; // @[Theta.scala 53:38]
  assign io_theta_out_3_1 = io_theta_in_3_1 ^ d_3; // @[Theta.scala 53:38]
  assign io_theta_out_3_2 = io_theta_in_3_2 ^ d_3; // @[Theta.scala 53:38]
  assign io_theta_out_3_3 = io_theta_in_3_3 ^ d_3; // @[Theta.scala 53:38]
  assign io_theta_out_3_4 = io_theta_in_3_4 ^ d_3; // @[Theta.scala 53:38]
  assign io_theta_out_4_0 = io_theta_in_4_0 ^ d_4; // @[Theta.scala 53:38]
  assign io_theta_out_4_1 = io_theta_in_4_1 ^ d_4; // @[Theta.scala 53:38]
  assign io_theta_out_4_2 = io_theta_in_4_2 ^ d_4; // @[Theta.scala 53:38]
  assign io_theta_out_4_3 = io_theta_in_4_3 ^ d_4; // @[Theta.scala 53:38]
  assign io_theta_out_4_4 = io_theta_in_4_4 ^ d_4; // @[Theta.scala 53:38]
endmodule
module RhoPi(
  input  [63:0] io_rhoPi_in_0_0,
  input  [63:0] io_rhoPi_in_0_1,
  input  [63:0] io_rhoPi_in_0_2,
  input  [63:0] io_rhoPi_in_0_3,
  input  [63:0] io_rhoPi_in_0_4,
  input  [63:0] io_rhoPi_in_1_0,
  input  [63:0] io_rhoPi_in_1_1,
  input  [63:0] io_rhoPi_in_1_2,
  input  [63:0] io_rhoPi_in_1_3,
  input  [63:0] io_rhoPi_in_1_4,
  input  [63:0] io_rhoPi_in_2_0,
  input  [63:0] io_rhoPi_in_2_1,
  input  [63:0] io_rhoPi_in_2_2,
  input  [63:0] io_rhoPi_in_2_3,
  input  [63:0] io_rhoPi_in_2_4,
  input  [63:0] io_rhoPi_in_3_0,
  input  [63:0] io_rhoPi_in_3_1,
  input  [63:0] io_rhoPi_in_3_2,
  input  [63:0] io_rhoPi_in_3_3,
  input  [63:0] io_rhoPi_in_3_4,
  input  [63:0] io_rhoPi_in_4_0,
  input  [63:0] io_rhoPi_in_4_1,
  input  [63:0] io_rhoPi_in_4_2,
  input  [63:0] io_rhoPi_in_4_3,
  input  [63:0] io_rhoPi_in_4_4,
  output [63:0] io_rhoPi_out_0_0,
  output [63:0] io_rhoPi_out_0_1,
  output [63:0] io_rhoPi_out_0_2,
  output [63:0] io_rhoPi_out_0_3,
  output [63:0] io_rhoPi_out_0_4,
  output [63:0] io_rhoPi_out_1_0,
  output [63:0] io_rhoPi_out_1_1,
  output [63:0] io_rhoPi_out_1_2,
  output [63:0] io_rhoPi_out_1_3,
  output [63:0] io_rhoPi_out_1_4,
  output [63:0] io_rhoPi_out_2_0,
  output [63:0] io_rhoPi_out_2_1,
  output [63:0] io_rhoPi_out_2_2,
  output [63:0] io_rhoPi_out_2_3,
  output [63:0] io_rhoPi_out_2_4,
  output [63:0] io_rhoPi_out_3_0,
  output [63:0] io_rhoPi_out_3_1,
  output [63:0] io_rhoPi_out_3_2,
  output [63:0] io_rhoPi_out_3_3,
  output [63:0] io_rhoPi_out_3_4,
  output [63:0] io_rhoPi_out_4_0,
  output [63:0] io_rhoPi_out_4_1,
  output [63:0] io_rhoPi_out_4_2,
  output [63:0] io_rhoPi_out_4_3,
  output [63:0] io_rhoPi_out_4_4
);
  wire [524350:0] _T = {{524287'd0}, io_rhoPi_in_0_0}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_2 = 19'h40 - 19'h0; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_0_0 = io_rhoPi_in_0_0 >> _T_2; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_0_0 = _T[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [99:0] _GEN_0 = {io_rhoPi_in_0_1, 36'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_5 = {{524251'd0}, _GEN_0}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_7 = 19'h40 - 19'h24; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_0_1 = io_rhoPi_in_0_1 >> _T_7; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_0_1 = _T_5[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [66:0] _GEN_1 = {io_rhoPi_in_0_2, 3'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_10 = {{524284'd0}, _GEN_1}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_12 = 19'h40 - 19'h3; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_0_2 = io_rhoPi_in_0_2 >> _T_12; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_0_2 = _T_10[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [104:0] _GEN_2 = {io_rhoPi_in_0_3, 41'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_15 = {{524246'd0}, _GEN_2}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_17 = 19'h40 - 19'h29; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_0_3 = io_rhoPi_in_0_3 >> _T_17; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_0_3 = _T_15[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [81:0] _GEN_3 = {io_rhoPi_in_0_4, 18'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_20 = {{524269'd0}, _GEN_3}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_22 = 19'h40 - 19'h12; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_0_4 = io_rhoPi_in_0_4 >> _T_22; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_0_4 = _T_20[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [64:0] _GEN_4 = {io_rhoPi_in_1_0, 1'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_25 = {{524286'd0}, _GEN_4}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_27 = 19'h40 - 19'h1; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_1_0 = io_rhoPi_in_1_0 >> _T_27; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_1_0 = _T_25[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [107:0] _GEN_5 = {io_rhoPi_in_1_1, 44'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_30 = {{524243'd0}, _GEN_5}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_32 = 19'h40 - 19'h2c; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_1_1 = io_rhoPi_in_1_1 >> _T_32; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_1_1 = _T_30[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [73:0] _GEN_6 = {io_rhoPi_in_1_2, 10'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_35 = {{524277'd0}, _GEN_6}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_37 = 19'h40 - 19'ha; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_1_2 = io_rhoPi_in_1_2 >> _T_37; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_1_2 = _T_35[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [108:0] _GEN_7 = {io_rhoPi_in_1_3, 45'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_40 = {{524242'd0}, _GEN_7}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_42 = 19'h40 - 19'h2d; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_1_3 = io_rhoPi_in_1_3 >> _T_42; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_1_3 = _T_40[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [65:0] _GEN_8 = {io_rhoPi_in_1_4, 2'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_45 = {{524285'd0}, _GEN_8}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_47 = 19'h40 - 19'h2; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_1_4 = io_rhoPi_in_1_4 >> _T_47; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_1_4 = _T_45[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [125:0] _GEN_9 = {io_rhoPi_in_2_0, 62'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_50 = {{524225'd0}, _GEN_9}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_52 = 19'h40 - 19'h3e; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_2_0 = io_rhoPi_in_2_0 >> _T_52; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_2_0 = _T_50[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [69:0] _GEN_10 = {io_rhoPi_in_2_1, 6'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_55 = {{524281'd0}, _GEN_10}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_57 = 19'h40 - 19'h6; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_2_1 = io_rhoPi_in_2_1 >> _T_57; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_2_1 = _T_55[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [106:0] _GEN_11 = {io_rhoPi_in_2_2, 43'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_60 = {{524244'd0}, _GEN_11}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_62 = 19'h40 - 19'h2b; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_2_2 = io_rhoPi_in_2_2 >> _T_62; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_2_2 = _T_60[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [78:0] _GEN_12 = {io_rhoPi_in_2_3, 15'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_65 = {{524272'd0}, _GEN_12}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_67 = 19'h40 - 19'hf; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_2_3 = io_rhoPi_in_2_3 >> _T_67; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_2_3 = _T_65[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [124:0] _GEN_13 = {io_rhoPi_in_2_4, 61'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_70 = {{524226'd0}, _GEN_13}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_72 = 19'h40 - 19'h3d; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_2_4 = io_rhoPi_in_2_4 >> _T_72; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_2_4 = _T_70[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [91:0] _GEN_14 = {io_rhoPi_in_3_0, 28'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_75 = {{524259'd0}, _GEN_14}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_77 = 19'h40 - 19'h1c; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_3_0 = io_rhoPi_in_3_0 >> _T_77; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_3_0 = _T_75[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [118:0] _GEN_15 = {io_rhoPi_in_3_1, 55'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_80 = {{524232'd0}, _GEN_15}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_82 = 19'h40 - 19'h37; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_3_1 = io_rhoPi_in_3_1 >> _T_82; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_3_1 = _T_80[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [88:0] _GEN_16 = {io_rhoPi_in_3_2, 25'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_85 = {{524262'd0}, _GEN_16}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_87 = 19'h40 - 19'h19; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_3_2 = io_rhoPi_in_3_2 >> _T_87; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_3_2 = _T_85[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [84:0] _GEN_17 = {io_rhoPi_in_3_3, 21'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_90 = {{524266'd0}, _GEN_17}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_92 = 19'h40 - 19'h15; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_3_3 = io_rhoPi_in_3_3 >> _T_92; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_3_3 = _T_90[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [119:0] _GEN_18 = {io_rhoPi_in_3_4, 56'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_95 = {{524231'd0}, _GEN_18}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_97 = 19'h40 - 19'h38; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_3_4 = io_rhoPi_in_3_4 >> _T_97; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_3_4 = _T_95[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [90:0] _GEN_19 = {io_rhoPi_in_4_0, 27'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_100 = {{524260'd0}, _GEN_19}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_102 = 19'h40 - 19'h1b; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_4_0 = io_rhoPi_in_4_0 >> _T_102; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_4_0 = _T_100[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [83:0] _GEN_20 = {io_rhoPi_in_4_1, 20'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_105 = {{524267'd0}, _GEN_20}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_107 = 19'h40 - 19'h14; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_4_1 = io_rhoPi_in_4_1 >> _T_107; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_4_1 = _T_105[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [102:0] _GEN_21 = {io_rhoPi_in_4_2, 39'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_110 = {{524248'd0}, _GEN_21}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_112 = 19'h40 - 19'h27; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_4_2 = io_rhoPi_in_4_2 >> _T_112; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_4_2 = _T_110[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [71:0] _GEN_22 = {io_rhoPi_in_4_3, 8'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_115 = {{524279'd0}, _GEN_22}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_117 = 19'h40 - 19'h8; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_4_3 = io_rhoPi_in_4_3 >> _T_117; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_4_3 = _T_115[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  wire [77:0] _GEN_23 = {io_rhoPi_in_4_4, 14'h0}; // @[RhoPi.scala 46:49]
  wire [524350:0] _T_120 = {{524273'd0}, _GEN_23}; // @[RhoPi.scala 46:49]
  wire [18:0] _T_122 = 19'h40 - 19'he; // @[RhoPi.scala 47:57]
  wire [63:0] rotationWire_2_4_4 = io_rhoPi_in_4_4 >> _T_122; // @[RhoPi.scala 47:49]
  wire [63:0] rotationWire_1_4_4 = _T_120[63:0]; // @[RhoPi.scala 41:28 RhoPi.scala 46:28]
  assign io_rhoPi_out_0_0 = rotationWire_1_0_0 | rotationWire_2_0_0; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_0_1 = rotationWire_1_3_0 | rotationWire_2_3_0; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_0_2 = rotationWire_1_1_0 | rotationWire_2_1_0; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_0_3 = rotationWire_1_4_0 | rotationWire_2_4_0; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_0_4 = rotationWire_1_2_0 | rotationWire_2_2_0; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_1_0 = rotationWire_1_1_1 | rotationWire_2_1_1; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_1_1 = rotationWire_1_4_1 | rotationWire_2_4_1; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_1_2 = rotationWire_1_2_1 | rotationWire_2_2_1; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_1_3 = rotationWire_1_0_1 | rotationWire_2_0_1; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_1_4 = rotationWire_1_3_1 | rotationWire_2_3_1; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_2_0 = rotationWire_1_2_2 | rotationWire_2_2_2; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_2_1 = rotationWire_1_0_2 | rotationWire_2_0_2; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_2_2 = rotationWire_1_3_2 | rotationWire_2_3_2; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_2_3 = rotationWire_1_1_2 | rotationWire_2_1_2; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_2_4 = rotationWire_1_4_2 | rotationWire_2_4_2; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_3_0 = rotationWire_1_3_3 | rotationWire_2_3_3; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_3_1 = rotationWire_1_1_3 | rotationWire_2_1_3; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_3_2 = rotationWire_1_4_3 | rotationWire_2_4_3; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_3_3 = rotationWire_1_2_3 | rotationWire_2_2_3; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_3_4 = rotationWire_1_0_3 | rotationWire_2_0_3; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_4_0 = rotationWire_1_4_4 | rotationWire_2_4_4; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_4_1 = rotationWire_1_2_4 | rotationWire_2_2_4; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_4_2 = rotationWire_1_0_4 | rotationWire_2_0_4; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_4_3 = rotationWire_1_3_4 | rotationWire_2_3_4; // @[RhoPi.scala 48:73]
  assign io_rhoPi_out_4_4 = rotationWire_1_1_4 | rotationWire_2_1_4; // @[RhoPi.scala 48:73]
endmodule
module Chi(
  input  [63:0] io_chi_in_0_0,
  input  [63:0] io_chi_in_0_1,
  input  [63:0] io_chi_in_0_2,
  input  [63:0] io_chi_in_0_3,
  input  [63:0] io_chi_in_0_4,
  input  [63:0] io_chi_in_1_0,
  input  [63:0] io_chi_in_1_1,
  input  [63:0] io_chi_in_1_2,
  input  [63:0] io_chi_in_1_3,
  input  [63:0] io_chi_in_1_4,
  input  [63:0] io_chi_in_2_0,
  input  [63:0] io_chi_in_2_1,
  input  [63:0] io_chi_in_2_2,
  input  [63:0] io_chi_in_2_3,
  input  [63:0] io_chi_in_2_4,
  input  [63:0] io_chi_in_3_0,
  input  [63:0] io_chi_in_3_1,
  input  [63:0] io_chi_in_3_2,
  input  [63:0] io_chi_in_3_3,
  input  [63:0] io_chi_in_3_4,
  input  [63:0] io_chi_in_4_0,
  input  [63:0] io_chi_in_4_1,
  input  [63:0] io_chi_in_4_2,
  input  [63:0] io_chi_in_4_3,
  input  [63:0] io_chi_in_4_4,
  output [63:0] io_chi_out_0_0,
  output [63:0] io_chi_out_0_1,
  output [63:0] io_chi_out_0_2,
  output [63:0] io_chi_out_0_3,
  output [63:0] io_chi_out_0_4,
  output [63:0] io_chi_out_1_0,
  output [63:0] io_chi_out_1_1,
  output [63:0] io_chi_out_1_2,
  output [63:0] io_chi_out_1_3,
  output [63:0] io_chi_out_1_4,
  output [63:0] io_chi_out_2_0,
  output [63:0] io_chi_out_2_1,
  output [63:0] io_chi_out_2_2,
  output [63:0] io_chi_out_2_3,
  output [63:0] io_chi_out_2_4,
  output [63:0] io_chi_out_3_0,
  output [63:0] io_chi_out_3_1,
  output [63:0] io_chi_out_3_2,
  output [63:0] io_chi_out_3_3,
  output [63:0] io_chi_out_3_4,
  output [63:0] io_chi_out_4_0,
  output [63:0] io_chi_out_4_1,
  output [63:0] io_chi_out_4_2,
  output [63:0] io_chi_out_4_3,
  output [63:0] io_chi_out_4_4
);
  wire [63:0] chi_not_wire_0_0 = ~io_chi_in_1_0; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_0_0 = chi_not_wire_0_0 & io_chi_in_2_0; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_0_1 = ~io_chi_in_1_1; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_0_1 = chi_not_wire_0_1 & io_chi_in_2_1; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_0_2 = ~io_chi_in_1_2; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_0_2 = chi_not_wire_0_2 & io_chi_in_2_2; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_0_3 = ~io_chi_in_1_3; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_0_3 = chi_not_wire_0_3 & io_chi_in_2_3; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_0_4 = ~io_chi_in_1_4; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_0_4 = chi_not_wire_0_4 & io_chi_in_2_4; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_1_0 = ~io_chi_in_2_0; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_1_0 = chi_not_wire_1_0 & io_chi_in_3_0; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_1_1 = ~io_chi_in_2_1; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_1_1 = chi_not_wire_1_1 & io_chi_in_3_1; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_1_2 = ~io_chi_in_2_2; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_1_2 = chi_not_wire_1_2 & io_chi_in_3_2; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_1_3 = ~io_chi_in_2_3; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_1_3 = chi_not_wire_1_3 & io_chi_in_3_3; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_1_4 = ~io_chi_in_2_4; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_1_4 = chi_not_wire_1_4 & io_chi_in_3_4; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_2_0 = ~io_chi_in_3_0; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_2_0 = chi_not_wire_2_0 & io_chi_in_4_0; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_2_1 = ~io_chi_in_3_1; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_2_1 = chi_not_wire_2_1 & io_chi_in_4_1; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_2_2 = ~io_chi_in_3_2; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_2_2 = chi_not_wire_2_2 & io_chi_in_4_2; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_2_3 = ~io_chi_in_3_3; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_2_3 = chi_not_wire_2_3 & io_chi_in_4_3; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_2_4 = ~io_chi_in_3_4; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_2_4 = chi_not_wire_2_4 & io_chi_in_4_4; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_3_0 = ~io_chi_in_4_0; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_3_0 = chi_not_wire_3_0 & io_chi_in_0_0; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_3_1 = ~io_chi_in_4_1; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_3_1 = chi_not_wire_3_1 & io_chi_in_0_1; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_3_2 = ~io_chi_in_4_2; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_3_2 = chi_not_wire_3_2 & io_chi_in_0_2; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_3_3 = ~io_chi_in_4_3; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_3_3 = chi_not_wire_3_3 & io_chi_in_0_3; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_3_4 = ~io_chi_in_4_4; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_3_4 = chi_not_wire_3_4 & io_chi_in_0_4; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_4_0 = ~io_chi_in_0_0; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_4_0 = chi_not_wire_4_0 & io_chi_in_1_0; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_4_1 = ~io_chi_in_0_1; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_4_1 = chi_not_wire_4_1 & io_chi_in_1_1; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_4_2 = ~io_chi_in_0_2; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_4_2 = chi_not_wire_4_2 & io_chi_in_1_2; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_4_3 = ~io_chi_in_0_3; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_4_3 = chi_not_wire_4_3 & io_chi_in_1_3; // @[Chi.scala 17:45]
  wire [63:0] chi_not_wire_4_4 = ~io_chi_in_0_4; // @[Chi.scala 16:29]
  wire [63:0] chi_wire_4_4 = chi_not_wire_4_4 & io_chi_in_1_4; // @[Chi.scala 17:45]
  assign io_chi_out_0_0 = io_chi_in_0_0 ^ chi_wire_0_0; // @[Chi.scala 19:44]
  assign io_chi_out_0_1 = io_chi_in_0_1 ^ chi_wire_0_1; // @[Chi.scala 19:44]
  assign io_chi_out_0_2 = io_chi_in_0_2 ^ chi_wire_0_2; // @[Chi.scala 19:44]
  assign io_chi_out_0_3 = io_chi_in_0_3 ^ chi_wire_0_3; // @[Chi.scala 19:44]
  assign io_chi_out_0_4 = io_chi_in_0_4 ^ chi_wire_0_4; // @[Chi.scala 19:44]
  assign io_chi_out_1_0 = io_chi_in_1_0 ^ chi_wire_1_0; // @[Chi.scala 19:44]
  assign io_chi_out_1_1 = io_chi_in_1_1 ^ chi_wire_1_1; // @[Chi.scala 19:44]
  assign io_chi_out_1_2 = io_chi_in_1_2 ^ chi_wire_1_2; // @[Chi.scala 19:44]
  assign io_chi_out_1_3 = io_chi_in_1_3 ^ chi_wire_1_3; // @[Chi.scala 19:44]
  assign io_chi_out_1_4 = io_chi_in_1_4 ^ chi_wire_1_4; // @[Chi.scala 19:44]
  assign io_chi_out_2_0 = io_chi_in_2_0 ^ chi_wire_2_0; // @[Chi.scala 19:44]
  assign io_chi_out_2_1 = io_chi_in_2_1 ^ chi_wire_2_1; // @[Chi.scala 19:44]
  assign io_chi_out_2_2 = io_chi_in_2_2 ^ chi_wire_2_2; // @[Chi.scala 19:44]
  assign io_chi_out_2_3 = io_chi_in_2_3 ^ chi_wire_2_3; // @[Chi.scala 19:44]
  assign io_chi_out_2_4 = io_chi_in_2_4 ^ chi_wire_2_4; // @[Chi.scala 19:44]
  assign io_chi_out_3_0 = io_chi_in_3_0 ^ chi_wire_3_0; // @[Chi.scala 19:44]
  assign io_chi_out_3_1 = io_chi_in_3_1 ^ chi_wire_3_1; // @[Chi.scala 19:44]
  assign io_chi_out_3_2 = io_chi_in_3_2 ^ chi_wire_3_2; // @[Chi.scala 19:44]
  assign io_chi_out_3_3 = io_chi_in_3_3 ^ chi_wire_3_3; // @[Chi.scala 19:44]
  assign io_chi_out_3_4 = io_chi_in_3_4 ^ chi_wire_3_4; // @[Chi.scala 19:44]
  assign io_chi_out_4_0 = io_chi_in_4_0 ^ chi_wire_4_0; // @[Chi.scala 19:44]
  assign io_chi_out_4_1 = io_chi_in_4_1 ^ chi_wire_4_1; // @[Chi.scala 19:44]
  assign io_chi_out_4_2 = io_chi_in_4_2 ^ chi_wire_4_2; // @[Chi.scala 19:44]
  assign io_chi_out_4_3 = io_chi_in_4_3 ^ chi_wire_4_3; // @[Chi.scala 19:44]
  assign io_chi_out_4_4 = io_chi_in_4_4 ^ chi_wire_4_4; // @[Chi.scala 19:44]
endmodule
module Iota(
  input  [63:0] io_iota_in,
  input  [63:0] io_iota_round,
  output [63:0] io_iota_out
);
  wire [63:0] _GEN_1 = 5'h1 == io_iota_round[4:0] ? 64'h8082 : 64'h1; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_2 = 5'h2 == io_iota_round[4:0] ? 64'h800000000000808a : _GEN_1; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_3 = 5'h3 == io_iota_round[4:0] ? 64'h8000000080008000 : _GEN_2; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_4 = 5'h4 == io_iota_round[4:0] ? 64'h808b : _GEN_3; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_5 = 5'h5 == io_iota_round[4:0] ? 64'h80000001 : _GEN_4; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_6 = 5'h6 == io_iota_round[4:0] ? 64'h8000000080008081 : _GEN_5; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_7 = 5'h7 == io_iota_round[4:0] ? 64'h8000000000008009 : _GEN_6; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_8 = 5'h8 == io_iota_round[4:0] ? 64'h8a : _GEN_7; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_9 = 5'h9 == io_iota_round[4:0] ? 64'h88 : _GEN_8; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_10 = 5'ha == io_iota_round[4:0] ? 64'h80008009 : _GEN_9; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_11 = 5'hb == io_iota_round[4:0] ? 64'h8000000a : _GEN_10; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_12 = 5'hc == io_iota_round[4:0] ? 64'h8000808b : _GEN_11; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_13 = 5'hd == io_iota_round[4:0] ? 64'h800000000000008b : _GEN_12; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_14 = 5'he == io_iota_round[4:0] ? 64'h8000000000008089 : _GEN_13; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_15 = 5'hf == io_iota_round[4:0] ? 64'h8000000000008003 : _GEN_14; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_16 = 5'h10 == io_iota_round[4:0] ? 64'h8000000000008002 : _GEN_15; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_17 = 5'h11 == io_iota_round[4:0] ? 64'h8000000000000080 : _GEN_16; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_18 = 5'h12 == io_iota_round[4:0] ? 64'h800a : _GEN_17; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_19 = 5'h13 == io_iota_round[4:0] ? 64'h800000008000000a : _GEN_18; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_20 = 5'h14 == io_iota_round[4:0] ? 64'h8000000080008081 : _GEN_19; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_21 = 5'h15 == io_iota_round[4:0] ? 64'h8000000000008080 : _GEN_20; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_22 = 5'h16 == io_iota_round[4:0] ? 64'h80000001 : _GEN_21; // @[Iota.scala 38:19 Iota.scala 38:19]
  wire [63:0] _GEN_23 = 5'h17 == io_iota_round[4:0] ? 64'h8000000080008008 : _GEN_22; // @[Iota.scala 38:19 Iota.scala 38:19]
  assign io_iota_out = io_iota_in ^ _GEN_23; // @[Iota.scala 40:28]
endmodule
module Round(
  input  [63:0] io_round_in_0_0,
  input  [63:0] io_round_in_0_1,
  input  [63:0] io_round_in_0_2,
  input  [63:0] io_round_in_0_3,
  input  [63:0] io_round_in_0_4,
  input  [63:0] io_round_in_1_0,
  input  [63:0] io_round_in_1_1,
  input  [63:0] io_round_in_1_2,
  input  [63:0] io_round_in_1_3,
  input  [63:0] io_round_in_1_4,
  input  [63:0] io_round_in_2_0,
  input  [63:0] io_round_in_2_1,
  input  [63:0] io_round_in_2_2,
  input  [63:0] io_round_in_2_3,
  input  [63:0] io_round_in_2_4,
  input  [63:0] io_round_in_3_0,
  input  [63:0] io_round_in_3_1,
  input  [63:0] io_round_in_3_2,
  input  [63:0] io_round_in_3_3,
  input  [63:0] io_round_in_3_4,
  input  [63:0] io_round_in_4_0,
  input  [63:0] io_round_in_4_1,
  input  [63:0] io_round_in_4_2,
  input  [63:0] io_round_in_4_3,
  input  [63:0] io_round_in_4_4,
  output [63:0] io_round_out_0_0,
  output [63:0] io_round_out_0_1,
  output [63:0] io_round_out_0_2,
  output [63:0] io_round_out_0_3,
  output [63:0] io_round_out_0_4,
  output [63:0] io_round_out_1_0,
  output [63:0] io_round_out_1_1,
  output [63:0] io_round_out_1_2,
  output [63:0] io_round_out_1_3,
  output [63:0] io_round_out_1_4,
  output [63:0] io_round_out_2_0,
  output [63:0] io_round_out_2_1,
  output [63:0] io_round_out_2_2,
  output [63:0] io_round_out_2_3,
  output [63:0] io_round_out_2_4,
  output [63:0] io_round_out_3_0,
  output [63:0] io_round_out_3_1,
  output [63:0] io_round_out_3_2,
  output [63:0] io_round_out_3_3,
  output [63:0] io_round_out_3_4,
  output [63:0] io_round_out_4_0,
  output [63:0] io_round_out_4_1,
  output [63:0] io_round_out_4_2,
  output [63:0] io_round_out_4_3,
  output [63:0] io_round_out_4_4,
  input  [63:0] io_R_iota_round
);
  wire [63:0] theta_io_theta_in_0_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_0_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_0_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_0_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_0_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_1_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_1_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_1_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_1_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_1_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_2_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_2_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_2_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_2_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_2_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_3_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_3_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_3_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_3_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_3_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_4_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_4_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_4_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_4_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_in_4_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_0_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_0_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_0_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_0_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_0_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_1_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_1_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_1_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_1_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_1_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_2_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_2_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_2_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_2_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_2_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_3_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_3_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_3_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_3_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_3_4; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_4_0; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_4_1; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_4_2; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_4_3; // @[Round.scala 17:23]
  wire [63:0] theta_io_theta_out_4_4; // @[Round.scala 17:23]
  wire [63:0] rhoPi_io_rhoPi_in_0_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_0_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_0_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_0_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_0_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_1_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_1_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_1_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_1_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_1_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_2_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_2_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_2_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_2_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_2_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_3_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_3_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_3_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_3_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_3_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_4_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_4_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_4_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_4_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_in_4_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_0_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_0_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_0_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_0_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_0_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_1_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_1_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_1_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_1_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_1_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_2_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_2_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_2_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_2_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_2_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_3_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_3_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_3_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_3_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_3_4; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_4_0; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_4_1; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_4_2; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_4_3; // @[Round.scala 18:23]
  wire [63:0] rhoPi_io_rhoPi_out_4_4; // @[Round.scala 18:23]
  wire [63:0] chi_io_chi_in_0_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_0_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_0_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_0_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_0_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_1_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_1_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_1_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_1_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_1_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_2_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_2_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_2_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_2_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_2_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_3_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_3_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_3_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_3_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_3_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_4_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_4_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_4_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_4_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_in_4_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_0_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_0_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_0_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_0_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_0_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_1_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_1_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_1_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_1_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_1_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_2_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_2_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_2_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_2_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_2_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_3_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_3_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_3_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_3_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_3_4; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_4_0; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_4_1; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_4_2; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_4_3; // @[Round.scala 19:23]
  wire [63:0] chi_io_chi_out_4_4; // @[Round.scala 19:23]
  wire [63:0] iota_io_iota_in; // @[Round.scala 20:23]
  wire [63:0] iota_io_iota_round; // @[Round.scala 20:23]
  wire [63:0] iota_io_iota_out; // @[Round.scala 20:23]
  Theta theta ( // @[Round.scala 17:23]
    .io_theta_in_0_0(theta_io_theta_in_0_0),
    .io_theta_in_0_1(theta_io_theta_in_0_1),
    .io_theta_in_0_2(theta_io_theta_in_0_2),
    .io_theta_in_0_3(theta_io_theta_in_0_3),
    .io_theta_in_0_4(theta_io_theta_in_0_4),
    .io_theta_in_1_0(theta_io_theta_in_1_0),
    .io_theta_in_1_1(theta_io_theta_in_1_1),
    .io_theta_in_1_2(theta_io_theta_in_1_2),
    .io_theta_in_1_3(theta_io_theta_in_1_3),
    .io_theta_in_1_4(theta_io_theta_in_1_4),
    .io_theta_in_2_0(theta_io_theta_in_2_0),
    .io_theta_in_2_1(theta_io_theta_in_2_1),
    .io_theta_in_2_2(theta_io_theta_in_2_2),
    .io_theta_in_2_3(theta_io_theta_in_2_3),
    .io_theta_in_2_4(theta_io_theta_in_2_4),
    .io_theta_in_3_0(theta_io_theta_in_3_0),
    .io_theta_in_3_1(theta_io_theta_in_3_1),
    .io_theta_in_3_2(theta_io_theta_in_3_2),
    .io_theta_in_3_3(theta_io_theta_in_3_3),
    .io_theta_in_3_4(theta_io_theta_in_3_4),
    .io_theta_in_4_0(theta_io_theta_in_4_0),
    .io_theta_in_4_1(theta_io_theta_in_4_1),
    .io_theta_in_4_2(theta_io_theta_in_4_2),
    .io_theta_in_4_3(theta_io_theta_in_4_3),
    .io_theta_in_4_4(theta_io_theta_in_4_4),
    .io_theta_out_0_0(theta_io_theta_out_0_0),
    .io_theta_out_0_1(theta_io_theta_out_0_1),
    .io_theta_out_0_2(theta_io_theta_out_0_2),
    .io_theta_out_0_3(theta_io_theta_out_0_3),
    .io_theta_out_0_4(theta_io_theta_out_0_4),
    .io_theta_out_1_0(theta_io_theta_out_1_0),
    .io_theta_out_1_1(theta_io_theta_out_1_1),
    .io_theta_out_1_2(theta_io_theta_out_1_2),
    .io_theta_out_1_3(theta_io_theta_out_1_3),
    .io_theta_out_1_4(theta_io_theta_out_1_4),
    .io_theta_out_2_0(theta_io_theta_out_2_0),
    .io_theta_out_2_1(theta_io_theta_out_2_1),
    .io_theta_out_2_2(theta_io_theta_out_2_2),
    .io_theta_out_2_3(theta_io_theta_out_2_3),
    .io_theta_out_2_4(theta_io_theta_out_2_4),
    .io_theta_out_3_0(theta_io_theta_out_3_0),
    .io_theta_out_3_1(theta_io_theta_out_3_1),
    .io_theta_out_3_2(theta_io_theta_out_3_2),
    .io_theta_out_3_3(theta_io_theta_out_3_3),
    .io_theta_out_3_4(theta_io_theta_out_3_4),
    .io_theta_out_4_0(theta_io_theta_out_4_0),
    .io_theta_out_4_1(theta_io_theta_out_4_1),
    .io_theta_out_4_2(theta_io_theta_out_4_2),
    .io_theta_out_4_3(theta_io_theta_out_4_3),
    .io_theta_out_4_4(theta_io_theta_out_4_4)
  );
  RhoPi rhoPi ( // @[Round.scala 18:23]
    .io_rhoPi_in_0_0(rhoPi_io_rhoPi_in_0_0),
    .io_rhoPi_in_0_1(rhoPi_io_rhoPi_in_0_1),
    .io_rhoPi_in_0_2(rhoPi_io_rhoPi_in_0_2),
    .io_rhoPi_in_0_3(rhoPi_io_rhoPi_in_0_3),
    .io_rhoPi_in_0_4(rhoPi_io_rhoPi_in_0_4),
    .io_rhoPi_in_1_0(rhoPi_io_rhoPi_in_1_0),
    .io_rhoPi_in_1_1(rhoPi_io_rhoPi_in_1_1),
    .io_rhoPi_in_1_2(rhoPi_io_rhoPi_in_1_2),
    .io_rhoPi_in_1_3(rhoPi_io_rhoPi_in_1_3),
    .io_rhoPi_in_1_4(rhoPi_io_rhoPi_in_1_4),
    .io_rhoPi_in_2_0(rhoPi_io_rhoPi_in_2_0),
    .io_rhoPi_in_2_1(rhoPi_io_rhoPi_in_2_1),
    .io_rhoPi_in_2_2(rhoPi_io_rhoPi_in_2_2),
    .io_rhoPi_in_2_3(rhoPi_io_rhoPi_in_2_3),
    .io_rhoPi_in_2_4(rhoPi_io_rhoPi_in_2_4),
    .io_rhoPi_in_3_0(rhoPi_io_rhoPi_in_3_0),
    .io_rhoPi_in_3_1(rhoPi_io_rhoPi_in_3_1),
    .io_rhoPi_in_3_2(rhoPi_io_rhoPi_in_3_2),
    .io_rhoPi_in_3_3(rhoPi_io_rhoPi_in_3_3),
    .io_rhoPi_in_3_4(rhoPi_io_rhoPi_in_3_4),
    .io_rhoPi_in_4_0(rhoPi_io_rhoPi_in_4_0),
    .io_rhoPi_in_4_1(rhoPi_io_rhoPi_in_4_1),
    .io_rhoPi_in_4_2(rhoPi_io_rhoPi_in_4_2),
    .io_rhoPi_in_4_3(rhoPi_io_rhoPi_in_4_3),
    .io_rhoPi_in_4_4(rhoPi_io_rhoPi_in_4_4),
    .io_rhoPi_out_0_0(rhoPi_io_rhoPi_out_0_0),
    .io_rhoPi_out_0_1(rhoPi_io_rhoPi_out_0_1),
    .io_rhoPi_out_0_2(rhoPi_io_rhoPi_out_0_2),
    .io_rhoPi_out_0_3(rhoPi_io_rhoPi_out_0_3),
    .io_rhoPi_out_0_4(rhoPi_io_rhoPi_out_0_4),
    .io_rhoPi_out_1_0(rhoPi_io_rhoPi_out_1_0),
    .io_rhoPi_out_1_1(rhoPi_io_rhoPi_out_1_1),
    .io_rhoPi_out_1_2(rhoPi_io_rhoPi_out_1_2),
    .io_rhoPi_out_1_3(rhoPi_io_rhoPi_out_1_3),
    .io_rhoPi_out_1_4(rhoPi_io_rhoPi_out_1_4),
    .io_rhoPi_out_2_0(rhoPi_io_rhoPi_out_2_0),
    .io_rhoPi_out_2_1(rhoPi_io_rhoPi_out_2_1),
    .io_rhoPi_out_2_2(rhoPi_io_rhoPi_out_2_2),
    .io_rhoPi_out_2_3(rhoPi_io_rhoPi_out_2_3),
    .io_rhoPi_out_2_4(rhoPi_io_rhoPi_out_2_4),
    .io_rhoPi_out_3_0(rhoPi_io_rhoPi_out_3_0),
    .io_rhoPi_out_3_1(rhoPi_io_rhoPi_out_3_1),
    .io_rhoPi_out_3_2(rhoPi_io_rhoPi_out_3_2),
    .io_rhoPi_out_3_3(rhoPi_io_rhoPi_out_3_3),
    .io_rhoPi_out_3_4(rhoPi_io_rhoPi_out_3_4),
    .io_rhoPi_out_4_0(rhoPi_io_rhoPi_out_4_0),
    .io_rhoPi_out_4_1(rhoPi_io_rhoPi_out_4_1),
    .io_rhoPi_out_4_2(rhoPi_io_rhoPi_out_4_2),
    .io_rhoPi_out_4_3(rhoPi_io_rhoPi_out_4_3),
    .io_rhoPi_out_4_4(rhoPi_io_rhoPi_out_4_4)
  );
  Chi chi ( // @[Round.scala 19:23]
    .io_chi_in_0_0(chi_io_chi_in_0_0),
    .io_chi_in_0_1(chi_io_chi_in_0_1),
    .io_chi_in_0_2(chi_io_chi_in_0_2),
    .io_chi_in_0_3(chi_io_chi_in_0_3),
    .io_chi_in_0_4(chi_io_chi_in_0_4),
    .io_chi_in_1_0(chi_io_chi_in_1_0),
    .io_chi_in_1_1(chi_io_chi_in_1_1),
    .io_chi_in_1_2(chi_io_chi_in_1_2),
    .io_chi_in_1_3(chi_io_chi_in_1_3),
    .io_chi_in_1_4(chi_io_chi_in_1_4),
    .io_chi_in_2_0(chi_io_chi_in_2_0),
    .io_chi_in_2_1(chi_io_chi_in_2_1),
    .io_chi_in_2_2(chi_io_chi_in_2_2),
    .io_chi_in_2_3(chi_io_chi_in_2_3),
    .io_chi_in_2_4(chi_io_chi_in_2_4),
    .io_chi_in_3_0(chi_io_chi_in_3_0),
    .io_chi_in_3_1(chi_io_chi_in_3_1),
    .io_chi_in_3_2(chi_io_chi_in_3_2),
    .io_chi_in_3_3(chi_io_chi_in_3_3),
    .io_chi_in_3_4(chi_io_chi_in_3_4),
    .io_chi_in_4_0(chi_io_chi_in_4_0),
    .io_chi_in_4_1(chi_io_chi_in_4_1),
    .io_chi_in_4_2(chi_io_chi_in_4_2),
    .io_chi_in_4_3(chi_io_chi_in_4_3),
    .io_chi_in_4_4(chi_io_chi_in_4_4),
    .io_chi_out_0_0(chi_io_chi_out_0_0),
    .io_chi_out_0_1(chi_io_chi_out_0_1),
    .io_chi_out_0_2(chi_io_chi_out_0_2),
    .io_chi_out_0_3(chi_io_chi_out_0_3),
    .io_chi_out_0_4(chi_io_chi_out_0_4),
    .io_chi_out_1_0(chi_io_chi_out_1_0),
    .io_chi_out_1_1(chi_io_chi_out_1_1),
    .io_chi_out_1_2(chi_io_chi_out_1_2),
    .io_chi_out_1_3(chi_io_chi_out_1_3),
    .io_chi_out_1_4(chi_io_chi_out_1_4),
    .io_chi_out_2_0(chi_io_chi_out_2_0),
    .io_chi_out_2_1(chi_io_chi_out_2_1),
    .io_chi_out_2_2(chi_io_chi_out_2_2),
    .io_chi_out_2_3(chi_io_chi_out_2_3),
    .io_chi_out_2_4(chi_io_chi_out_2_4),
    .io_chi_out_3_0(chi_io_chi_out_3_0),
    .io_chi_out_3_1(chi_io_chi_out_3_1),
    .io_chi_out_3_2(chi_io_chi_out_3_2),
    .io_chi_out_3_3(chi_io_chi_out_3_3),
    .io_chi_out_3_4(chi_io_chi_out_3_4),
    .io_chi_out_4_0(chi_io_chi_out_4_0),
    .io_chi_out_4_1(chi_io_chi_out_4_1),
    .io_chi_out_4_2(chi_io_chi_out_4_2),
    .io_chi_out_4_3(chi_io_chi_out_4_3),
    .io_chi_out_4_4(chi_io_chi_out_4_4)
  );
  Iota iota ( // @[Round.scala 20:23]
    .io_iota_in(iota_io_iota_in),
    .io_iota_round(iota_io_iota_round),
    .io_iota_out(iota_io_iota_out)
  );
  assign io_round_out_0_0 = iota_io_iota_out; // @[Round.scala 29:27]
  assign io_round_out_0_1 = chi_io_chi_out_0_1; // @[Round.scala 43:28]
  assign io_round_out_0_2 = chi_io_chi_out_0_2; // @[Round.scala 43:28]
  assign io_round_out_0_3 = chi_io_chi_out_0_3; // @[Round.scala 43:28]
  assign io_round_out_0_4 = chi_io_chi_out_0_4; // @[Round.scala 43:28]
  assign io_round_out_1_0 = chi_io_chi_out_1_0; // @[Round.scala 43:28]
  assign io_round_out_1_1 = chi_io_chi_out_1_1; // @[Round.scala 43:28]
  assign io_round_out_1_2 = chi_io_chi_out_1_2; // @[Round.scala 43:28]
  assign io_round_out_1_3 = chi_io_chi_out_1_3; // @[Round.scala 43:28]
  assign io_round_out_1_4 = chi_io_chi_out_1_4; // @[Round.scala 43:28]
  assign io_round_out_2_0 = chi_io_chi_out_2_0; // @[Round.scala 43:28]
  assign io_round_out_2_1 = chi_io_chi_out_2_1; // @[Round.scala 43:28]
  assign io_round_out_2_2 = chi_io_chi_out_2_2; // @[Round.scala 43:28]
  assign io_round_out_2_3 = chi_io_chi_out_2_3; // @[Round.scala 43:28]
  assign io_round_out_2_4 = chi_io_chi_out_2_4; // @[Round.scala 43:28]
  assign io_round_out_3_0 = chi_io_chi_out_3_0; // @[Round.scala 43:28]
  assign io_round_out_3_1 = chi_io_chi_out_3_1; // @[Round.scala 43:28]
  assign io_round_out_3_2 = chi_io_chi_out_3_2; // @[Round.scala 43:28]
  assign io_round_out_3_3 = chi_io_chi_out_3_3; // @[Round.scala 43:28]
  assign io_round_out_3_4 = chi_io_chi_out_3_4; // @[Round.scala 43:28]
  assign io_round_out_4_0 = chi_io_chi_out_4_0; // @[Round.scala 43:28]
  assign io_round_out_4_1 = chi_io_chi_out_4_1; // @[Round.scala 43:28]
  assign io_round_out_4_2 = chi_io_chi_out_4_2; // @[Round.scala 43:28]
  assign io_round_out_4_3 = chi_io_chi_out_4_3; // @[Round.scala 43:28]
  assign io_round_out_4_4 = chi_io_chi_out_4_4; // @[Round.scala 43:28]
  assign theta_io_theta_in_0_0 = io_round_in_0_0; // @[Round.scala 22:27]
  assign theta_io_theta_in_0_1 = io_round_in_0_1; // @[Round.scala 22:27]
  assign theta_io_theta_in_0_2 = io_round_in_0_2; // @[Round.scala 22:27]
  assign theta_io_theta_in_0_3 = io_round_in_0_3; // @[Round.scala 22:27]
  assign theta_io_theta_in_0_4 = io_round_in_0_4; // @[Round.scala 22:27]
  assign theta_io_theta_in_1_0 = io_round_in_1_0; // @[Round.scala 22:27]
  assign theta_io_theta_in_1_1 = io_round_in_1_1; // @[Round.scala 22:27]
  assign theta_io_theta_in_1_2 = io_round_in_1_2; // @[Round.scala 22:27]
  assign theta_io_theta_in_1_3 = io_round_in_1_3; // @[Round.scala 22:27]
  assign theta_io_theta_in_1_4 = io_round_in_1_4; // @[Round.scala 22:27]
  assign theta_io_theta_in_2_0 = io_round_in_2_0; // @[Round.scala 22:27]
  assign theta_io_theta_in_2_1 = io_round_in_2_1; // @[Round.scala 22:27]
  assign theta_io_theta_in_2_2 = io_round_in_2_2; // @[Round.scala 22:27]
  assign theta_io_theta_in_2_3 = io_round_in_2_3; // @[Round.scala 22:27]
  assign theta_io_theta_in_2_4 = io_round_in_2_4; // @[Round.scala 22:27]
  assign theta_io_theta_in_3_0 = io_round_in_3_0; // @[Round.scala 22:27]
  assign theta_io_theta_in_3_1 = io_round_in_3_1; // @[Round.scala 22:27]
  assign theta_io_theta_in_3_2 = io_round_in_3_2; // @[Round.scala 22:27]
  assign theta_io_theta_in_3_3 = io_round_in_3_3; // @[Round.scala 22:27]
  assign theta_io_theta_in_3_4 = io_round_in_3_4; // @[Round.scala 22:27]
  assign theta_io_theta_in_4_0 = io_round_in_4_0; // @[Round.scala 22:27]
  assign theta_io_theta_in_4_1 = io_round_in_4_1; // @[Round.scala 22:27]
  assign theta_io_theta_in_4_2 = io_round_in_4_2; // @[Round.scala 22:27]
  assign theta_io_theta_in_4_3 = io_round_in_4_3; // @[Round.scala 22:27]
  assign theta_io_theta_in_4_4 = io_round_in_4_4; // @[Round.scala 22:27]
  assign rhoPi_io_rhoPi_in_0_0 = theta_io_theta_out_0_0; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_0_1 = theta_io_theta_out_0_1; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_0_2 = theta_io_theta_out_0_2; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_0_3 = theta_io_theta_out_0_3; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_0_4 = theta_io_theta_out_0_4; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_1_0 = theta_io_theta_out_1_0; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_1_1 = theta_io_theta_out_1_1; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_1_2 = theta_io_theta_out_1_2; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_1_3 = theta_io_theta_out_1_3; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_1_4 = theta_io_theta_out_1_4; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_2_0 = theta_io_theta_out_2_0; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_2_1 = theta_io_theta_out_2_1; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_2_2 = theta_io_theta_out_2_2; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_2_3 = theta_io_theta_out_2_3; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_2_4 = theta_io_theta_out_2_4; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_3_0 = theta_io_theta_out_3_0; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_3_1 = theta_io_theta_out_3_1; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_3_2 = theta_io_theta_out_3_2; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_3_3 = theta_io_theta_out_3_3; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_3_4 = theta_io_theta_out_3_4; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_4_0 = theta_io_theta_out_4_0; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_4_1 = theta_io_theta_out_4_1; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_4_2 = theta_io_theta_out_4_2; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_4_3 = theta_io_theta_out_4_3; // @[Round.scala 23:27]
  assign rhoPi_io_rhoPi_in_4_4 = theta_io_theta_out_4_4; // @[Round.scala 23:27]
  assign chi_io_chi_in_0_0 = rhoPi_io_rhoPi_out_0_0; // @[Round.scala 24:27]
  assign chi_io_chi_in_0_1 = rhoPi_io_rhoPi_out_0_1; // @[Round.scala 24:27]
  assign chi_io_chi_in_0_2 = rhoPi_io_rhoPi_out_0_2; // @[Round.scala 24:27]
  assign chi_io_chi_in_0_3 = rhoPi_io_rhoPi_out_0_3; // @[Round.scala 24:27]
  assign chi_io_chi_in_0_4 = rhoPi_io_rhoPi_out_0_4; // @[Round.scala 24:27]
  assign chi_io_chi_in_1_0 = rhoPi_io_rhoPi_out_1_0; // @[Round.scala 24:27]
  assign chi_io_chi_in_1_1 = rhoPi_io_rhoPi_out_1_1; // @[Round.scala 24:27]
  assign chi_io_chi_in_1_2 = rhoPi_io_rhoPi_out_1_2; // @[Round.scala 24:27]
  assign chi_io_chi_in_1_3 = rhoPi_io_rhoPi_out_1_3; // @[Round.scala 24:27]
  assign chi_io_chi_in_1_4 = rhoPi_io_rhoPi_out_1_4; // @[Round.scala 24:27]
  assign chi_io_chi_in_2_0 = rhoPi_io_rhoPi_out_2_0; // @[Round.scala 24:27]
  assign chi_io_chi_in_2_1 = rhoPi_io_rhoPi_out_2_1; // @[Round.scala 24:27]
  assign chi_io_chi_in_2_2 = rhoPi_io_rhoPi_out_2_2; // @[Round.scala 24:27]
  assign chi_io_chi_in_2_3 = rhoPi_io_rhoPi_out_2_3; // @[Round.scala 24:27]
  assign chi_io_chi_in_2_4 = rhoPi_io_rhoPi_out_2_4; // @[Round.scala 24:27]
  assign chi_io_chi_in_3_0 = rhoPi_io_rhoPi_out_3_0; // @[Round.scala 24:27]
  assign chi_io_chi_in_3_1 = rhoPi_io_rhoPi_out_3_1; // @[Round.scala 24:27]
  assign chi_io_chi_in_3_2 = rhoPi_io_rhoPi_out_3_2; // @[Round.scala 24:27]
  assign chi_io_chi_in_3_3 = rhoPi_io_rhoPi_out_3_3; // @[Round.scala 24:27]
  assign chi_io_chi_in_3_4 = rhoPi_io_rhoPi_out_3_4; // @[Round.scala 24:27]
  assign chi_io_chi_in_4_0 = rhoPi_io_rhoPi_out_4_0; // @[Round.scala 24:27]
  assign chi_io_chi_in_4_1 = rhoPi_io_rhoPi_out_4_1; // @[Round.scala 24:27]
  assign chi_io_chi_in_4_2 = rhoPi_io_rhoPi_out_4_2; // @[Round.scala 24:27]
  assign chi_io_chi_in_4_3 = rhoPi_io_rhoPi_out_4_3; // @[Round.scala 24:27]
  assign chi_io_chi_in_4_4 = rhoPi_io_rhoPi_out_4_4; // @[Round.scala 24:27]
  assign iota_io_iota_in = chi_io_chi_out_0_0; // @[Round.scala 25:27]
  assign iota_io_iota_round = io_R_iota_round; // @[Round.scala 28:27]
endmodule
module Buffer(
  input         clock,
  input         reset,
  input  [31:0] io_dataIn,
  output [63:0] io_dataOut_0,
  output [63:0] io_dataOut_1,
  output [63:0] io_dataOut_2,
  output [63:0] io_dataOut_3,
  output [63:0] io_dataOut_4,
  output [63:0] io_dataOut_5,
  output [63:0] io_dataOut_6,
  output [63:0] io_dataOut_7,
  output [63:0] io_dataOut_8,
  input         io_enable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] dataReg_0; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_1; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_2; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_3; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_4; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_5; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_6; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_7; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_8; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_9; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_10; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_11; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_12; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_13; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_14; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_15; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_16; // @[Buffer.scala 13:24]
  reg [31:0] dataReg_17; // @[Buffer.scala 13:24]
  assign io_dataOut_0 = {dataReg_0,dataReg_1}; // @[Cat.scala 30:58]
  assign io_dataOut_1 = {dataReg_2,dataReg_3}; // @[Cat.scala 30:58]
  assign io_dataOut_2 = {dataReg_4,dataReg_5}; // @[Cat.scala 30:58]
  assign io_dataOut_3 = {dataReg_6,dataReg_7}; // @[Cat.scala 30:58]
  assign io_dataOut_4 = {dataReg_8,dataReg_9}; // @[Cat.scala 30:58]
  assign io_dataOut_5 = {dataReg_10,dataReg_11}; // @[Cat.scala 30:58]
  assign io_dataOut_6 = {dataReg_12,dataReg_13}; // @[Cat.scala 30:58]
  assign io_dataOut_7 = {dataReg_14,dataReg_15}; // @[Cat.scala 30:58]
  assign io_dataOut_8 = {dataReg_16,dataReg_17}; // @[Cat.scala 30:58]
  always @(posedge clock) begin
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_0 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_0 <= io_dataIn; // @[Buffer.scala 16:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_1 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_1 <= dataReg_0; // @[Buffer.scala 17:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_2 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_2 <= dataReg_1; // @[Buffer.scala 18:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_3 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_3 <= dataReg_2; // @[Buffer.scala 19:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_4 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_4 <= dataReg_3; // @[Buffer.scala 20:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_5 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_5 <= dataReg_4; // @[Buffer.scala 21:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_6 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_6 <= dataReg_5; // @[Buffer.scala 22:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_7 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_7 <= dataReg_6; // @[Buffer.scala 23:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_8 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_8 <= dataReg_7; // @[Buffer.scala 24:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_9 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_9 <= dataReg_8; // @[Buffer.scala 25:16]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_10 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_10 <= dataReg_9; // @[Buffer.scala 26:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_11 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_11 <= dataReg_10; // @[Buffer.scala 27:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_12 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_12 <= dataReg_11; // @[Buffer.scala 28:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_13 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_13 <= dataReg_12; // @[Buffer.scala 29:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_14 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_14 <= dataReg_13; // @[Buffer.scala 30:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_15 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_15 <= dataReg_14; // @[Buffer.scala 31:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_16 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_16 <= dataReg_15; // @[Buffer.scala 32:17]
    end
    if (reset) begin // @[Buffer.scala 13:24]
      dataReg_17 <= 32'h0; // @[Buffer.scala 13:24]
    end else if (io_enable) begin // @[Buffer.scala 15:18]
      dataReg_17 <= dataReg_16; // @[Buffer.scala 33:17]
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
  _RAND_0 = {1{`RANDOM}};
  dataReg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  dataReg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  dataReg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  dataReg_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  dataReg_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  dataReg_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  dataReg_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  dataReg_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  dataReg_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  dataReg_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  dataReg_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  dataReg_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  dataReg_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  dataReg_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  dataReg_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  dataReg_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  dataReg_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  dataReg_17 = _RAND_17[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Sha3(
  input   clock,
  input   reset,
  input   io_buffer_ready,
  input   io_enable_buffer,
  input   io_select,
  output  io_dummy_output
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
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] round_io_round_in_0_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_0_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_0_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_0_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_0_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_1_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_1_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_1_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_1_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_1_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_2_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_2_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_2_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_2_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_2_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_3_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_3_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_3_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_3_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_3_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_4_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_4_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_4_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_4_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_in_4_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_0_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_0_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_0_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_0_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_0_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_1_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_1_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_1_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_1_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_1_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_2_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_2_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_2_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_2_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_2_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_3_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_3_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_3_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_3_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_3_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_4_0; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_4_1; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_4_2; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_4_3; // @[Sha3.scala 38:24]
  wire [63:0] round_io_round_out_4_4; // @[Sha3.scala 38:24]
  wire [63:0] round_io_R_iota_round; // @[Sha3.scala 38:24]
  wire  buffer_clock; // @[Sha3.scala 39:24]
  wire  buffer_reset; // @[Sha3.scala 39:24]
  wire [31:0] buffer_io_dataIn; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_0; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_1; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_2; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_3; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_4; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_5; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_6; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_7; // @[Sha3.scala 39:24]
  wire [63:0] buffer_io_dataOut_8; // @[Sha3.scala 39:24]
  wire  buffer_io_enable; // @[Sha3.scala 39:24]
  reg [63:0] stateReg_0_0; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_0_1; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_0_2; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_0_3; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_0_4; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_1_0; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_1_1; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_1_2; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_1_3; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_1_4; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_2_0; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_2_1; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_2_2; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_2_3; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_2_4; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_3_0; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_3_1; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_3_2; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_3_3; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_3_4; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_4_0; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_4_1; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_4_2; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_4_3; // @[Sha3.scala 43:26]
  reg [63:0] stateReg_4_4; // @[Sha3.scala 43:26]
  reg [31:0] resultReg_0; // @[Sha3.scala 44:26]
  reg [1:0] state_reg; // @[Sha3.scala 50:34]
  reg  xor_select; // @[Sha3.scala 51:34]
  reg [7:0] iota_round; // @[Sha3.scala 52:34]
  reg [31:0] current_message; // @[Sha3.scala 54:34]
  wire [30:0] _GEN_0 = io_select ? 31'h1234567 : 31'h76543210; // @[Sha3.scala 65:18 Sha3.scala 66:22 Sha3.scala 68:22]
  wire  _T_2 = 2'h0 == state_reg; // @[Conditional.scala 37:30]
  wire [31:0] _T_6 = current_message + 32'h1; // @[Sha3.scala 102:44]
  wire  _GEN_3 = io_buffer_ready | xor_select; // @[Sha3.scala 97:43 Sha3.scala 98:20 Sha3.scala 51:34]
  wire  _T_9 = 2'h2 == state_reg; // @[Conditional.scala 37:30]
  wire [7:0] _T_12 = iota_round + 8'h1; // @[Sha3.scala 111:34]
  wire [7:0] hi_hi = stateReg_0_0[7:0]; // @[Sha3.scala 113:48]
  wire [7:0] hi_lo = stateReg_0_0[15:8]; // @[Sha3.scala 113:68]
  wire [7:0] lo_hi = stateReg_0_0[23:16]; // @[Sha3.scala 113:89]
  wire [7:0] lo_lo = stateReg_0_0[31:24]; // @[Sha3.scala 113:111]
  wire [31:0] _T_14 = {hi_hi,hi_lo,lo_hi,lo_lo}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_8 = current_message == 32'h1 ? _T_14 : resultReg_0; // @[Sha3.scala 112:42 Sha3.scala 113:23 Sha3.scala 44:26]
  wire [31:0] _GEN_26 = current_message == 32'h1 ? 32'h0 : current_message; // @[Sha3.scala 112:42 Sha3.scala 131:25 Sha3.scala 54:34]
  wire [63:0] _GEN_27 = current_message == 32'h1 ? 64'h0 : round_io_round_out_0_0; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_28 = current_message == 32'h1 ? 64'h0 : round_io_round_out_0_1; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_29 = current_message == 32'h1 ? 64'h0 : round_io_round_out_0_2; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_30 = current_message == 32'h1 ? 64'h0 : round_io_round_out_0_3; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_31 = current_message == 32'h1 ? 64'h0 : round_io_round_out_0_4; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_32 = current_message == 32'h1 ? 64'h0 : round_io_round_out_1_0; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_33 = current_message == 32'h1 ? 64'h0 : round_io_round_out_1_1; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_34 = current_message == 32'h1 ? 64'h0 : round_io_round_out_1_2; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_35 = current_message == 32'h1 ? 64'h0 : round_io_round_out_1_3; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_36 = current_message == 32'h1 ? 64'h0 : round_io_round_out_1_4; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_37 = current_message == 32'h1 ? 64'h0 : round_io_round_out_2_0; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_38 = current_message == 32'h1 ? 64'h0 : round_io_round_out_2_1; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_39 = current_message == 32'h1 ? 64'h0 : round_io_round_out_2_2; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_40 = current_message == 32'h1 ? 64'h0 : round_io_round_out_2_3; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_41 = current_message == 32'h1 ? 64'h0 : round_io_round_out_2_4; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_42 = current_message == 32'h1 ? 64'h0 : round_io_round_out_3_0; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_43 = current_message == 32'h1 ? 64'h0 : round_io_round_out_3_1; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_44 = current_message == 32'h1 ? 64'h0 : round_io_round_out_3_2; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_45 = current_message == 32'h1 ? 64'h0 : round_io_round_out_3_3; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_46 = current_message == 32'h1 ? 64'h0 : round_io_round_out_3_4; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_47 = current_message == 32'h1 ? 64'h0 : round_io_round_out_4_0; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_48 = current_message == 32'h1 ? 64'h0 : round_io_round_out_4_1; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_49 = current_message == 32'h1 ? 64'h0 : round_io_round_out_4_2; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_50 = current_message == 32'h1 ? 64'h0 : round_io_round_out_4_3; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire [63:0] _GEN_51 = current_message == 32'h1 ? 64'h0 : round_io_round_out_4_4; // @[Sha3.scala 112:42 Sha3.scala 135:28 Sha3.scala 109:18]
  wire  _T_30 = 2'h1 == state_reg; // @[Conditional.scala 37:30]
  wire [63:0] _T_31 = buffer_io_dataOut_8 ^ stateReg_0_0; // @[Sha3.scala 153:52]
  wire [63:0] _T_32 = buffer_io_dataOut_7 ^ stateReg_1_0; // @[Sha3.scala 154:52]
  wire [63:0] _T_33 = buffer_io_dataOut_6 ^ stateReg_2_0; // @[Sha3.scala 155:52]
  wire [63:0] _T_34 = buffer_io_dataOut_5 ^ stateReg_3_0; // @[Sha3.scala 156:52]
  wire [63:0] _T_35 = buffer_io_dataOut_4 ^ stateReg_4_0; // @[Sha3.scala 157:52]
  wire [63:0] _T_36 = buffer_io_dataOut_3 ^ stateReg_0_1; // @[Sha3.scala 158:52]
  wire [63:0] _T_37 = buffer_io_dataOut_2 ^ stateReg_1_1; // @[Sha3.scala 159:52]
  wire [63:0] _T_38 = buffer_io_dataOut_1 ^ stateReg_2_1; // @[Sha3.scala 160:52]
  wire [63:0] _T_39 = buffer_io_dataOut_0 ^ stateReg_3_1; // @[Sha3.scala 161:52]
  Round round ( // @[Sha3.scala 38:24]
    .io_round_in_0_0(round_io_round_in_0_0),
    .io_round_in_0_1(round_io_round_in_0_1),
    .io_round_in_0_2(round_io_round_in_0_2),
    .io_round_in_0_3(round_io_round_in_0_3),
    .io_round_in_0_4(round_io_round_in_0_4),
    .io_round_in_1_0(round_io_round_in_1_0),
    .io_round_in_1_1(round_io_round_in_1_1),
    .io_round_in_1_2(round_io_round_in_1_2),
    .io_round_in_1_3(round_io_round_in_1_3),
    .io_round_in_1_4(round_io_round_in_1_4),
    .io_round_in_2_0(round_io_round_in_2_0),
    .io_round_in_2_1(round_io_round_in_2_1),
    .io_round_in_2_2(round_io_round_in_2_2),
    .io_round_in_2_3(round_io_round_in_2_3),
    .io_round_in_2_4(round_io_round_in_2_4),
    .io_round_in_3_0(round_io_round_in_3_0),
    .io_round_in_3_1(round_io_round_in_3_1),
    .io_round_in_3_2(round_io_round_in_3_2),
    .io_round_in_3_3(round_io_round_in_3_3),
    .io_round_in_3_4(round_io_round_in_3_4),
    .io_round_in_4_0(round_io_round_in_4_0),
    .io_round_in_4_1(round_io_round_in_4_1),
    .io_round_in_4_2(round_io_round_in_4_2),
    .io_round_in_4_3(round_io_round_in_4_3),
    .io_round_in_4_4(round_io_round_in_4_4),
    .io_round_out_0_0(round_io_round_out_0_0),
    .io_round_out_0_1(round_io_round_out_0_1),
    .io_round_out_0_2(round_io_round_out_0_2),
    .io_round_out_0_3(round_io_round_out_0_3),
    .io_round_out_0_4(round_io_round_out_0_4),
    .io_round_out_1_0(round_io_round_out_1_0),
    .io_round_out_1_1(round_io_round_out_1_1),
    .io_round_out_1_2(round_io_round_out_1_2),
    .io_round_out_1_3(round_io_round_out_1_3),
    .io_round_out_1_4(round_io_round_out_1_4),
    .io_round_out_2_0(round_io_round_out_2_0),
    .io_round_out_2_1(round_io_round_out_2_1),
    .io_round_out_2_2(round_io_round_out_2_2),
    .io_round_out_2_3(round_io_round_out_2_3),
    .io_round_out_2_4(round_io_round_out_2_4),
    .io_round_out_3_0(round_io_round_out_3_0),
    .io_round_out_3_1(round_io_round_out_3_1),
    .io_round_out_3_2(round_io_round_out_3_2),
    .io_round_out_3_3(round_io_round_out_3_3),
    .io_round_out_3_4(round_io_round_out_3_4),
    .io_round_out_4_0(round_io_round_out_4_0),
    .io_round_out_4_1(round_io_round_out_4_1),
    .io_round_out_4_2(round_io_round_out_4_2),
    .io_round_out_4_3(round_io_round_out_4_3),
    .io_round_out_4_4(round_io_round_out_4_4),
    .io_R_iota_round(round_io_R_iota_round)
  );
  Buffer buffer ( // @[Sha3.scala 39:24]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .io_dataIn(buffer_io_dataIn),
    .io_dataOut_0(buffer_io_dataOut_0),
    .io_dataOut_1(buffer_io_dataOut_1),
    .io_dataOut_2(buffer_io_dataOut_2),
    .io_dataOut_3(buffer_io_dataOut_3),
    .io_dataOut_4(buffer_io_dataOut_4),
    .io_dataOut_5(buffer_io_dataOut_5),
    .io_dataOut_6(buffer_io_dataOut_6),
    .io_dataOut_7(buffer_io_dataOut_7),
    .io_dataOut_8(buffer_io_dataOut_8),
    .io_enable(buffer_io_enable)
  );
  assign io_dummy_output = resultReg_0[0]; // @[Sha3.scala 71:22]
  assign round_io_round_in_0_0 = xor_select ? _T_31 : stateReg_0_0; // @[Sha3.scala 152:19 Sha3.scala 153:29 Sha3.scala 163:29]
  assign round_io_round_in_0_1 = xor_select ? _T_36 : stateReg_0_1; // @[Sha3.scala 152:19 Sha3.scala 158:29 Sha3.scala 168:29]
  assign round_io_round_in_0_2 = stateReg_0_2; // @[Sha3.scala 176:27]
  assign round_io_round_in_0_3 = stateReg_0_3; // @[Sha3.scala 181:27]
  assign round_io_round_in_0_4 = stateReg_0_4; // @[Sha3.scala 186:27]
  assign round_io_round_in_1_0 = xor_select ? _T_32 : stateReg_1_0; // @[Sha3.scala 152:19 Sha3.scala 154:29 Sha3.scala 164:29]
  assign round_io_round_in_1_1 = xor_select ? _T_37 : stateReg_1_1; // @[Sha3.scala 152:19 Sha3.scala 159:29 Sha3.scala 169:29]
  assign round_io_round_in_1_2 = stateReg_1_2; // @[Sha3.scala 177:27]
  assign round_io_round_in_1_3 = stateReg_1_3; // @[Sha3.scala 182:27]
  assign round_io_round_in_1_4 = stateReg_1_4; // @[Sha3.scala 187:27]
  assign round_io_round_in_2_0 = xor_select ? _T_33 : stateReg_2_0; // @[Sha3.scala 152:19 Sha3.scala 155:29 Sha3.scala 165:29]
  assign round_io_round_in_2_1 = xor_select ? _T_38 : stateReg_2_1; // @[Sha3.scala 152:19 Sha3.scala 160:29 Sha3.scala 170:29]
  assign round_io_round_in_2_2 = stateReg_2_2; // @[Sha3.scala 178:27]
  assign round_io_round_in_2_3 = stateReg_2_3; // @[Sha3.scala 183:27]
  assign round_io_round_in_2_4 = stateReg_2_4; // @[Sha3.scala 188:27]
  assign round_io_round_in_3_0 = xor_select ? _T_34 : stateReg_3_0; // @[Sha3.scala 152:19 Sha3.scala 156:29 Sha3.scala 166:29]
  assign round_io_round_in_3_1 = xor_select ? _T_39 : stateReg_3_1; // @[Sha3.scala 152:19 Sha3.scala 161:29 Sha3.scala 171:29]
  assign round_io_round_in_3_2 = stateReg_3_2; // @[Sha3.scala 179:27]
  assign round_io_round_in_3_3 = stateReg_3_3; // @[Sha3.scala 184:27]
  assign round_io_round_in_3_4 = stateReg_3_4; // @[Sha3.scala 189:27]
  assign round_io_round_in_4_0 = xor_select ? _T_35 : stateReg_4_0; // @[Sha3.scala 152:19 Sha3.scala 157:29 Sha3.scala 167:29]
  assign round_io_round_in_4_1 = stateReg_4_1; // @[Sha3.scala 175:27]
  assign round_io_round_in_4_2 = stateReg_4_2; // @[Sha3.scala 180:27]
  assign round_io_round_in_4_3 = stateReg_4_3; // @[Sha3.scala 185:27]
  assign round_io_round_in_4_4 = stateReg_4_4; // @[Sha3.scala 190:27]
  assign round_io_R_iota_round = {{56'd0}, iota_round}; // @[Sha3.scala 149:25]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_io_dataIn = {{1'd0}, _GEN_0}; // @[Sha3.scala 65:18 Sha3.scala 66:22 Sha3.scala 68:22]
  assign buffer_io_enable = io_enable_buffer; // @[Sha3.scala 57:21]
  always @(posedge clock) begin
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_0_0 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_0_0 <= round_io_round_out_0_0; // @[Sha3.scala 109:18]
        end else begin
          stateReg_0_0 <= _GEN_27;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_0_1 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_0_1 <= round_io_round_out_0_1; // @[Sha3.scala 109:18]
        end else begin
          stateReg_0_1 <= _GEN_28;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_0_2 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_0_2 <= round_io_round_out_0_2; // @[Sha3.scala 109:18]
        end else begin
          stateReg_0_2 <= _GEN_29;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_0_3 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_0_3 <= round_io_round_out_0_3; // @[Sha3.scala 109:18]
        end else begin
          stateReg_0_3 <= _GEN_30;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_0_4 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_0_4 <= round_io_round_out_0_4; // @[Sha3.scala 109:18]
        end else begin
          stateReg_0_4 <= _GEN_31;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_1_0 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_1_0 <= round_io_round_out_1_0; // @[Sha3.scala 109:18]
        end else begin
          stateReg_1_0 <= _GEN_32;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_1_1 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_1_1 <= round_io_round_out_1_1; // @[Sha3.scala 109:18]
        end else begin
          stateReg_1_1 <= _GEN_33;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_1_2 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_1_2 <= round_io_round_out_1_2; // @[Sha3.scala 109:18]
        end else begin
          stateReg_1_2 <= _GEN_34;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_1_3 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_1_3 <= round_io_round_out_1_3; // @[Sha3.scala 109:18]
        end else begin
          stateReg_1_3 <= _GEN_35;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_1_4 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_1_4 <= round_io_round_out_1_4; // @[Sha3.scala 109:18]
        end else begin
          stateReg_1_4 <= _GEN_36;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_2_0 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_2_0 <= round_io_round_out_2_0; // @[Sha3.scala 109:18]
        end else begin
          stateReg_2_0 <= _GEN_37;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_2_1 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_2_1 <= round_io_round_out_2_1; // @[Sha3.scala 109:18]
        end else begin
          stateReg_2_1 <= _GEN_38;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_2_2 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_2_2 <= round_io_round_out_2_2; // @[Sha3.scala 109:18]
        end else begin
          stateReg_2_2 <= _GEN_39;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_2_3 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_2_3 <= round_io_round_out_2_3; // @[Sha3.scala 109:18]
        end else begin
          stateReg_2_3 <= _GEN_40;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_2_4 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_2_4 <= round_io_round_out_2_4; // @[Sha3.scala 109:18]
        end else begin
          stateReg_2_4 <= _GEN_41;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_3_0 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_3_0 <= round_io_round_out_3_0; // @[Sha3.scala 109:18]
        end else begin
          stateReg_3_0 <= _GEN_42;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_3_1 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_3_1 <= round_io_round_out_3_1; // @[Sha3.scala 109:18]
        end else begin
          stateReg_3_1 <= _GEN_43;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_3_2 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_3_2 <= round_io_round_out_3_2; // @[Sha3.scala 109:18]
        end else begin
          stateReg_3_2 <= _GEN_44;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_3_3 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_3_3 <= round_io_round_out_3_3; // @[Sha3.scala 109:18]
        end else begin
          stateReg_3_3 <= _GEN_45;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_3_4 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_3_4 <= round_io_round_out_3_4; // @[Sha3.scala 109:18]
        end else begin
          stateReg_3_4 <= _GEN_46;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_4_0 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_4_0 <= round_io_round_out_4_0; // @[Sha3.scala 109:18]
        end else begin
          stateReg_4_0 <= _GEN_47;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_4_1 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_4_1 <= round_io_round_out_4_1; // @[Sha3.scala 109:18]
        end else begin
          stateReg_4_1 <= _GEN_48;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_4_2 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_4_2 <= round_io_round_out_4_2; // @[Sha3.scala 109:18]
        end else begin
          stateReg_4_2 <= _GEN_49;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_4_3 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_4_3 <= round_io_round_out_4_3; // @[Sha3.scala 109:18]
        end else begin
          stateReg_4_3 <= _GEN_50;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 43:26]
      stateReg_4_4 <= 64'h0; // @[Sha3.scala 43:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
          stateReg_4_4 <= round_io_round_out_4_4; // @[Sha3.scala 109:18]
        end else begin
          stateReg_4_4 <= _GEN_51;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 44:26]
      resultReg_0 <= 32'h0; // @[Sha3.scala 44:26]
    end else if (!(_T_2)) begin // @[Conditional.scala 40:58]
      if (_T_9) begin // @[Conditional.scala 39:67]
        if (!(iota_round < 8'h18)) begin // @[Sha3.scala 110:30]
          resultReg_0 <= _GEN_8;
        end
      end
    end
    if (reset) begin // @[Sha3.scala 50:34]
      state_reg <= 2'h0; // @[Sha3.scala 50:34]
    end else if (_T_2) begin // @[Conditional.scala 40:58]
      if (io_buffer_ready) begin // @[Sha3.scala 97:43]
        state_reg <= 2'h2; // @[Sha3.scala 101:20]
      end
    end else if (_T_9) begin // @[Conditional.scala 39:67]
      if (!(iota_round < 8'h18)) begin // @[Sha3.scala 110:30]
        state_reg <= 2'h0;
      end
    end else if (_T_30) begin // @[Conditional.scala 39:67]
      state_reg <= 2'h0; // @[Sha3.scala 143:17]
    end
    if (reset) begin // @[Sha3.scala 51:34]
      xor_select <= 1'h0; // @[Sha3.scala 51:34]
    end else if (_T_2) begin // @[Conditional.scala 40:58]
      xor_select <= _GEN_3;
    end else if (_T_9) begin // @[Conditional.scala 39:67]
      xor_select <= 1'h0; // @[Sha3.scala 108:18]
    end
    if (reset) begin // @[Sha3.scala 52:34]
      iota_round <= 8'h0; // @[Sha3.scala 52:34]
    end else if (_T_2) begin // @[Conditional.scala 40:58]
      if (io_buffer_ready) begin // @[Sha3.scala 97:43]
        iota_round <= 8'h0; // @[Sha3.scala 99:20]
      end
    end else if (_T_9) begin // @[Conditional.scala 39:67]
      if (iota_round < 8'h18) begin // @[Sha3.scala 110:30]
        iota_round <= _T_12; // @[Sha3.scala 111:20]
      end
    end
    if (reset) begin // @[Sha3.scala 54:34]
      current_message <= 32'h0; // @[Sha3.scala 54:34]
    end else if (_T_2) begin // @[Conditional.scala 40:58]
      if (io_buffer_ready) begin // @[Sha3.scala 97:43]
        current_message <= _T_6; // @[Sha3.scala 102:25]
      end
    end else if (_T_9) begin // @[Conditional.scala 39:67]
      if (!(iota_round < 8'h18)) begin // @[Sha3.scala 110:30]
        current_message <= _GEN_26;
      end
    end else if (_T_30) begin // @[Conditional.scala 39:67]
      current_message <= 32'h0; // @[Sha3.scala 144:23]
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
  stateReg_0_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  stateReg_0_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  stateReg_0_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  stateReg_0_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  stateReg_0_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  stateReg_1_0 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  stateReg_1_1 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  stateReg_1_2 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  stateReg_1_3 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  stateReg_1_4 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  stateReg_2_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  stateReg_2_1 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  stateReg_2_2 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  stateReg_2_3 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  stateReg_2_4 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  stateReg_3_0 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  stateReg_3_1 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  stateReg_3_2 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  stateReg_3_3 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  stateReg_3_4 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  stateReg_4_0 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  stateReg_4_1 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  stateReg_4_2 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  stateReg_4_3 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  stateReg_4_4 = _RAND_24[63:0];
  _RAND_25 = {1{`RANDOM}};
  resultReg_0 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  state_reg = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  xor_select = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  iota_round = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  current_message = _RAND_29[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
