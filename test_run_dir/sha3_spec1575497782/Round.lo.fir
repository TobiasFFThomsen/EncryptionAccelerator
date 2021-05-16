circuit Round :
  module Theta :
    input clock : Clock
    input reset : UInt<1>
    input io_theta_in_0_0 : UInt<64>
    input io_theta_in_1_0 : UInt<64>
    input io_theta_in_2_0 : UInt<64>
    input io_theta_in_3_0 : UInt<64>
    input io_theta_in_4_0 : UInt<64>
    input io_theta_in_0_1 : UInt<64>
    input io_theta_in_1_1 : UInt<64>
    input io_theta_in_2_1 : UInt<64>
    input io_theta_in_3_1 : UInt<64>
    input io_theta_in_4_1 : UInt<64>
    input io_theta_in_0_2 : UInt<64>
    input io_theta_in_1_2 : UInt<64>
    input io_theta_in_2_2 : UInt<64>
    input io_theta_in_3_2 : UInt<64>
    input io_theta_in_4_2 : UInt<64>
    input io_theta_in_0_3 : UInt<64>
    input io_theta_in_1_3 : UInt<64>
    input io_theta_in_2_3 : UInt<64>
    input io_theta_in_3_3 : UInt<64>
    input io_theta_in_4_3 : UInt<64>
    input io_theta_in_0_4 : UInt<64>
    input io_theta_in_1_4 : UInt<64>
    input io_theta_in_2_4 : UInt<64>
    input io_theta_in_3_4 : UInt<64>
    input io_theta_in_4_4 : UInt<64>
    output io_theta_out_0_0 : UInt<64>
    output io_theta_out_1_0 : UInt<64>
    output io_theta_out_2_0 : UInt<64>
    output io_theta_out_3_0 : UInt<64>
    output io_theta_out_4_0 : UInt<64>
    output io_theta_out_0_1 : UInt<64>
    output io_theta_out_1_1 : UInt<64>
    output io_theta_out_2_1 : UInt<64>
    output io_theta_out_3_1 : UInt<64>
    output io_theta_out_4_1 : UInt<64>
    output io_theta_out_0_2 : UInt<64>
    output io_theta_out_1_2 : UInt<64>
    output io_theta_out_2_2 : UInt<64>
    output io_theta_out_3_2 : UInt<64>
    output io_theta_out_4_2 : UInt<64>
    output io_theta_out_0_3 : UInt<64>
    output io_theta_out_1_3 : UInt<64>
    output io_theta_out_2_3 : UInt<64>
    output io_theta_out_3_3 : UInt<64>
    output io_theta_out_4_3 : UInt<64>
    output io_theta_out_0_4 : UInt<64>
    output io_theta_out_1_4 : UInt<64>
    output io_theta_out_2_4 : UInt<64>
    output io_theta_out_3_4 : UInt<64>
    output io_theta_out_4_4 : UInt<64>

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[Theta.scala 78:25]
    node _T_1 = xor(_T, io_theta_in_0_2) @[Theta.scala 78:41]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[Theta.scala 78:57]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[Theta.scala 78:73]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[Theta.scala 79:25]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[Theta.scala 79:41]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[Theta.scala 79:57]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[Theta.scala 79:73]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[Theta.scala 80:25]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[Theta.scala 80:41]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[Theta.scala 80:57]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[Theta.scala 80:73]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[Theta.scala 81:25]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[Theta.scala 81:41]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[Theta.scala 81:57]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[Theta.scala 81:73]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[Theta.scala 82:25]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[Theta.scala 82:41]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[Theta.scala 82:57]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[Theta.scala 82:73]
    node c_1 = _T_7 @[Theta.scala 67:17 Theta.scala 79:7]
    node _T_20 = shl(c_1, 1) @[Theta.scala 101:25]
    node _T_21 = shr(c_1, 63) @[Theta.scala 102:25]
    node c_2 = _T_11 @[Theta.scala 68:17 Theta.scala 80:7]
    node _T_22 = shl(c_2, 1) @[Theta.scala 104:25]
    node _T_23 = shr(c_2, 63) @[Theta.scala 105:25]
    node c_3 = _T_15 @[Theta.scala 69:17 Theta.scala 81:7]
    node _T_24 = shl(c_3, 1) @[Theta.scala 107:25]
    node _T_25 = shr(c_3, 63) @[Theta.scala 108:25]
    node c_4 = _T_19 @[Theta.scala 70:17 Theta.scala 82:7]
    node _T_26 = shl(c_4, 1) @[Theta.scala 110:25]
    node _T_27 = shr(c_4, 63) @[Theta.scala 111:25]
    node c_0 = _T_3 @[Theta.scala 66:17 Theta.scala 78:7]
    node _T_28 = shl(c_0, 1) @[Theta.scala 113:25]
    node _T_29 = shr(c_0, 63) @[Theta.scala 114:25]
    node rotation_0_lhs = bits(_T_20, 63, 0) @[Theta.scala 84:28 Theta.scala 101:18]
    node rotation_0_rhs = pad(_T_21, 64) @[Theta.scala 85:28 Theta.scala 102:18]
    node _T_30 = or(rotation_0_lhs, rotation_0_rhs) @[Theta.scala 116:39]
    node rotation_1_lhs = bits(_T_22, 63, 0) @[Theta.scala 86:28 Theta.scala 104:18]
    node rotation_1_rhs = pad(_T_23, 64) @[Theta.scala 87:28 Theta.scala 105:18]
    node _T_31 = or(rotation_1_lhs, rotation_1_rhs) @[Theta.scala 117:39]
    node rotation_2_lhs = bits(_T_24, 63, 0) @[Theta.scala 88:28 Theta.scala 107:18]
    node rotation_2_rhs = pad(_T_25, 64) @[Theta.scala 89:28 Theta.scala 108:18]
    node _T_32 = or(rotation_2_lhs, rotation_2_rhs) @[Theta.scala 118:39]
    node rotation_3_lhs = bits(_T_26, 63, 0) @[Theta.scala 90:28 Theta.scala 110:18]
    node rotation_3_rhs = pad(_T_27, 64) @[Theta.scala 91:28 Theta.scala 111:18]
    node _T_33 = or(rotation_3_lhs, rotation_3_rhs) @[Theta.scala 119:39]
    node rotation_4_lhs = bits(_T_28, 63, 0) @[Theta.scala 92:28 Theta.scala 113:18]
    node rotation_4_rhs = pad(_T_29, 64) @[Theta.scala 93:28 Theta.scala 114:18]
    node _T_34 = or(rotation_4_lhs, rotation_4_rhs) @[Theta.scala 120:39]
    node rotation_result_0 = _T_30 @[Theta.scala 98:31 Theta.scala 116:21]
    node _T_35 = xor(c_4, rotation_result_0) @[Theta.scala 122:14]
    node rotation_result_1 = _T_31 @[Theta.scala 94:31 Theta.scala 117:21]
    node _T_36 = xor(c_0, rotation_result_1) @[Theta.scala 123:14]
    node rotation_result_2 = _T_32 @[Theta.scala 95:31 Theta.scala 118:21]
    node _T_37 = xor(c_1, rotation_result_2) @[Theta.scala 124:14]
    node rotation_result_3 = _T_33 @[Theta.scala 96:31 Theta.scala 119:21]
    node _T_38 = xor(c_2, rotation_result_3) @[Theta.scala 125:14]
    node rotation_result_4 = _T_34 @[Theta.scala 97:31 Theta.scala 120:21]
    node _T_39 = xor(c_3, rotation_result_4) @[Theta.scala 126:14]
    node d_0 = _T_35 @[Theta.scala 72:17 Theta.scala 122:7]
    node _T_40 = xor(io_theta_in_0_0, d_0) @[Theta.scala 129:38]
    node _T_41 = xor(io_theta_in_0_1, d_0) @[Theta.scala 130:38]
    node _T_42 = xor(io_theta_in_0_2, d_0) @[Theta.scala 131:38]
    node _T_43 = xor(io_theta_in_0_3, d_0) @[Theta.scala 132:38]
    node _T_44 = xor(io_theta_in_0_4, d_0) @[Theta.scala 133:38]
    node d_1 = _T_36 @[Theta.scala 73:17 Theta.scala 123:7]
    node _T_45 = xor(io_theta_in_1_0, d_1) @[Theta.scala 135:38]
    node _T_46 = xor(io_theta_in_1_1, d_1) @[Theta.scala 136:38]
    node _T_47 = xor(io_theta_in_1_2, d_1) @[Theta.scala 137:38]
    node _T_48 = xor(io_theta_in_1_3, d_1) @[Theta.scala 138:38]
    node _T_49 = xor(io_theta_in_1_4, d_1) @[Theta.scala 139:38]
    node d_2 = _T_37 @[Theta.scala 74:17 Theta.scala 124:7]
    node _T_50 = xor(io_theta_in_2_0, d_2) @[Theta.scala 141:38]
    node _T_51 = xor(io_theta_in_2_1, d_2) @[Theta.scala 142:38]
    node _T_52 = xor(io_theta_in_2_2, d_2) @[Theta.scala 143:38]
    node _T_53 = xor(io_theta_in_2_3, d_2) @[Theta.scala 144:38]
    node _T_54 = xor(io_theta_in_2_4, d_2) @[Theta.scala 145:38]
    node d_3 = _T_38 @[Theta.scala 75:17 Theta.scala 125:7]
    node _T_55 = xor(io_theta_in_3_0, d_3) @[Theta.scala 147:38]
    node _T_56 = xor(io_theta_in_3_1, d_3) @[Theta.scala 148:38]
    node _T_57 = xor(io_theta_in_3_2, d_3) @[Theta.scala 149:38]
    node _T_58 = xor(io_theta_in_3_3, d_3) @[Theta.scala 150:38]
    node _T_59 = xor(io_theta_in_3_4, d_3) @[Theta.scala 151:38]
    node d_4 = _T_39 @[Theta.scala 76:17 Theta.scala 126:7]
    node _T_60 = xor(io_theta_in_4_0, d_4) @[Theta.scala 153:38]
    node _T_61 = xor(io_theta_in_4_1, d_4) @[Theta.scala 154:38]
    node _T_62 = xor(io_theta_in_4_2, d_4) @[Theta.scala 155:38]
    node _T_63 = xor(io_theta_in_4_3, d_4) @[Theta.scala 156:38]
    node _T_64 = xor(io_theta_in_4_4, d_4) @[Theta.scala 157:38]
    io_theta_out_0_0 <= _T_40 @[Theta.scala 129:20]
    io_theta_out_1_0 <= _T_45 @[Theta.scala 135:20]
    io_theta_out_2_0 <= _T_50 @[Theta.scala 141:20]
    io_theta_out_3_0 <= _T_55 @[Theta.scala 147:20]
    io_theta_out_4_0 <= _T_60 @[Theta.scala 153:20]
    io_theta_out_0_1 <= _T_41 @[Theta.scala 130:20]
    io_theta_out_1_1 <= _T_46 @[Theta.scala 136:20]
    io_theta_out_2_1 <= _T_51 @[Theta.scala 142:20]
    io_theta_out_3_1 <= _T_56 @[Theta.scala 148:20]
    io_theta_out_4_1 <= _T_61 @[Theta.scala 154:20]
    io_theta_out_0_2 <= _T_42 @[Theta.scala 131:20]
    io_theta_out_1_2 <= _T_47 @[Theta.scala 137:20]
    io_theta_out_2_2 <= _T_52 @[Theta.scala 143:20]
    io_theta_out_3_2 <= _T_57 @[Theta.scala 149:20]
    io_theta_out_4_2 <= _T_62 @[Theta.scala 155:20]
    io_theta_out_0_3 <= _T_43 @[Theta.scala 132:20]
    io_theta_out_1_3 <= _T_48 @[Theta.scala 138:20]
    io_theta_out_2_3 <= _T_53 @[Theta.scala 144:20]
    io_theta_out_3_3 <= _T_58 @[Theta.scala 150:20]
    io_theta_out_4_3 <= _T_63 @[Theta.scala 156:20]
    io_theta_out_0_4 <= _T_44 @[Theta.scala 133:20]
    io_theta_out_1_4 <= _T_49 @[Theta.scala 139:20]
    io_theta_out_2_4 <= _T_54 @[Theta.scala 145:20]
    io_theta_out_3_4 <= _T_59 @[Theta.scala 151:20]
    io_theta_out_4_4 <= _T_64 @[Theta.scala 157:20]

  module RhoPi :
    input clock : Clock
    input reset : UInt<1>
    input io_rhoPi_in_0_0 : UInt<64>
    input io_rhoPi_in_1_0 : UInt<64>
    input io_rhoPi_in_2_0 : UInt<64>
    input io_rhoPi_in_3_0 : UInt<64>
    input io_rhoPi_in_4_0 : UInt<64>
    input io_rhoPi_in_0_1 : UInt<64>
    input io_rhoPi_in_1_1 : UInt<64>
    input io_rhoPi_in_2_1 : UInt<64>
    input io_rhoPi_in_3_1 : UInt<64>
    input io_rhoPi_in_4_1 : UInt<64>
    input io_rhoPi_in_0_2 : UInt<64>
    input io_rhoPi_in_1_2 : UInt<64>
    input io_rhoPi_in_2_2 : UInt<64>
    input io_rhoPi_in_3_2 : UInt<64>
    input io_rhoPi_in_4_2 : UInt<64>
    input io_rhoPi_in_0_3 : UInt<64>
    input io_rhoPi_in_1_3 : UInt<64>
    input io_rhoPi_in_2_3 : UInt<64>
    input io_rhoPi_in_3_3 : UInt<64>
    input io_rhoPi_in_4_3 : UInt<64>
    input io_rhoPi_in_0_4 : UInt<64>
    input io_rhoPi_in_1_4 : UInt<64>
    input io_rhoPi_in_2_4 : UInt<64>
    input io_rhoPi_in_3_4 : UInt<64>
    input io_rhoPi_in_4_4 : UInt<64>
    output io_rhoPi_out_0_0 : UInt<64>
    output io_rhoPi_out_1_0 : UInt<64>
    output io_rhoPi_out_2_0 : UInt<64>
    output io_rhoPi_out_3_0 : UInt<64>
    output io_rhoPi_out_4_0 : UInt<64>
    output io_rhoPi_out_0_1 : UInt<64>
    output io_rhoPi_out_1_1 : UInt<64>
    output io_rhoPi_out_2_1 : UInt<64>
    output io_rhoPi_out_3_1 : UInt<64>
    output io_rhoPi_out_4_1 : UInt<64>
    output io_rhoPi_out_0_2 : UInt<64>
    output io_rhoPi_out_1_2 : UInt<64>
    output io_rhoPi_out_2_2 : UInt<64>
    output io_rhoPi_out_3_2 : UInt<64>
    output io_rhoPi_out_4_2 : UInt<64>
    output io_rhoPi_out_0_3 : UInt<64>
    output io_rhoPi_out_1_3 : UInt<64>
    output io_rhoPi_out_2_3 : UInt<64>
    output io_rhoPi_out_3_3 : UInt<64>
    output io_rhoPi_out_4_3 : UInt<64>
    output io_rhoPi_out_0_4 : UInt<64>
    output io_rhoPi_out_1_4 : UInt<64>
    output io_rhoPi_out_2_4 : UInt<64>
    output io_rhoPi_out_3_4 : UInt<64>
    output io_rhoPi_out_4_4 : UInt<64>

    node r_0_0 = pad(UInt<1>("h0"), 19) @[RhoPi.scala 62:17 RhoPi.scala 63:11]
    node _T = dshl(io_rhoPi_in_0_0, r_0_0) @[RhoPi.scala 147:32]
    node r_0_1 = pad(UInt<6>("h24"), 19) @[RhoPi.scala 62:17 RhoPi.scala 64:11]
    node _T_1 = dshl(io_rhoPi_in_0_1, r_0_1) @[RhoPi.scala 148:32]
    node r_0_2 = pad(UInt<2>("h3"), 19) @[RhoPi.scala 62:17 RhoPi.scala 65:11]
    node _T_2 = dshl(io_rhoPi_in_0_2, r_0_2) @[RhoPi.scala 149:32]
    node r_0_3 = pad(UInt<6>("h29"), 19) @[RhoPi.scala 62:17 RhoPi.scala 66:11]
    node _T_3 = dshl(io_rhoPi_in_0_3, r_0_3) @[RhoPi.scala 150:32]
    node r_0_4 = pad(UInt<5>("h12"), 19) @[RhoPi.scala 62:17 RhoPi.scala 67:11]
    node _T_4 = dshl(io_rhoPi_in_0_4, r_0_4) @[RhoPi.scala 151:32]
    node r_1_0 = pad(UInt<1>("h1"), 19) @[RhoPi.scala 62:17 RhoPi.scala 69:11]
    node _T_5 = dshl(io_rhoPi_in_1_0, r_1_0) @[RhoPi.scala 152:32]
    node r_1_1 = pad(UInt<6>("h2c"), 19) @[RhoPi.scala 62:17 RhoPi.scala 70:11]
    node _T_6 = dshl(io_rhoPi_in_1_1, r_1_1) @[RhoPi.scala 153:32]
    node r_1_2 = pad(UInt<4>("ha"), 19) @[RhoPi.scala 62:17 RhoPi.scala 71:11]
    node _T_7 = dshl(io_rhoPi_in_1_2, r_1_2) @[RhoPi.scala 154:32]
    node r_1_3 = pad(UInt<6>("h2d"), 19) @[RhoPi.scala 62:17 RhoPi.scala 72:11]
    node _T_8 = dshl(io_rhoPi_in_1_3, r_1_3) @[RhoPi.scala 155:32]
    node r_1_4 = pad(UInt<2>("h2"), 19) @[RhoPi.scala 62:17 RhoPi.scala 73:11]
    node _T_9 = dshl(io_rhoPi_in_1_4, r_1_4) @[RhoPi.scala 156:32]
    node r_2_0 = pad(UInt<6>("h3e"), 19) @[RhoPi.scala 62:17 RhoPi.scala 75:11]
    node _T_10 = dshl(io_rhoPi_in_2_0, r_2_0) @[RhoPi.scala 157:32]
    node r_2_1 = pad(UInt<3>("h6"), 19) @[RhoPi.scala 62:17 RhoPi.scala 76:11]
    node _T_11 = dshl(io_rhoPi_in_2_1, r_2_1) @[RhoPi.scala 158:32]
    node r_2_2 = pad(UInt<6>("h2b"), 19) @[RhoPi.scala 62:17 RhoPi.scala 77:11]
    node _T_12 = dshl(io_rhoPi_in_2_2, r_2_2) @[RhoPi.scala 159:32]
    node r_2_3 = pad(UInt<4>("hf"), 19) @[RhoPi.scala 62:17 RhoPi.scala 78:11]
    node _T_13 = dshl(io_rhoPi_in_2_3, r_2_3) @[RhoPi.scala 160:32]
    node r_2_4 = pad(UInt<6>("h3d"), 19) @[RhoPi.scala 62:17 RhoPi.scala 79:11]
    node _T_14 = dshl(io_rhoPi_in_2_4, r_2_4) @[RhoPi.scala 161:32]
    node r_3_0 = pad(UInt<5>("h1c"), 19) @[RhoPi.scala 62:17 RhoPi.scala 81:11]
    node _T_15 = dshl(io_rhoPi_in_3_0, r_3_0) @[RhoPi.scala 162:32]
    node r_3_1 = pad(UInt<6>("h37"), 19) @[RhoPi.scala 62:17 RhoPi.scala 82:11]
    node _T_16 = dshl(io_rhoPi_in_3_1, r_3_1) @[RhoPi.scala 163:32]
    node r_3_2 = pad(UInt<5>("h19"), 19) @[RhoPi.scala 62:17 RhoPi.scala 83:11]
    node _T_17 = dshl(io_rhoPi_in_3_2, r_3_2) @[RhoPi.scala 164:32]
    node r_3_3 = pad(UInt<5>("h15"), 19) @[RhoPi.scala 62:17 RhoPi.scala 84:11]
    node _T_18 = dshl(io_rhoPi_in_3_3, r_3_3) @[RhoPi.scala 165:32]
    node r_3_4 = pad(UInt<6>("h38"), 19) @[RhoPi.scala 62:17 RhoPi.scala 85:11]
    node _T_19 = dshl(io_rhoPi_in_3_4, r_3_4) @[RhoPi.scala 166:32]
    node r_4_0 = pad(UInt<5>("h1b"), 19) @[RhoPi.scala 62:17 RhoPi.scala 87:11]
    node _T_20 = dshl(io_rhoPi_in_4_0, r_4_0) @[RhoPi.scala 167:32]
    node r_4_1 = pad(UInt<5>("h14"), 19) @[RhoPi.scala 62:17 RhoPi.scala 88:11]
    node _T_21 = dshl(io_rhoPi_in_4_1, r_4_1) @[RhoPi.scala 168:32]
    node r_4_2 = pad(UInt<6>("h27"), 19) @[RhoPi.scala 62:17 RhoPi.scala 89:11]
    node _T_22 = dshl(io_rhoPi_in_4_2, r_4_2) @[RhoPi.scala 169:32]
    node r_4_3 = pad(UInt<4>("h8"), 19) @[RhoPi.scala 62:17 RhoPi.scala 90:11]
    node _T_23 = dshl(io_rhoPi_in_4_3, r_4_3) @[RhoPi.scala 170:32]
    node r_4_4 = pad(UInt<4>("he"), 19) @[RhoPi.scala 62:17 RhoPi.scala 91:11]
    node _T_24 = dshl(io_rhoPi_in_4_4, r_4_4) @[RhoPi.scala 171:32]
    node _T_25 = sub(UInt<7>("h40"), r_0_0) @[RhoPi.scala 173:39]
    node _T_26 = tail(_T_25, 1) @[RhoPi.scala 173:39]
    node _T_27 = dshr(io_rhoPi_in_0_0, _T_26) @[RhoPi.scala 173:32]
    node _T_28 = sub(UInt<7>("h40"), r_0_1) @[RhoPi.scala 174:39]
    node _T_29 = tail(_T_28, 1) @[RhoPi.scala 174:39]
    node _T_30 = dshr(io_rhoPi_in_0_1, _T_29) @[RhoPi.scala 174:32]
    node _T_31 = sub(UInt<7>("h40"), r_0_2) @[RhoPi.scala 175:39]
    node _T_32 = tail(_T_31, 1) @[RhoPi.scala 175:39]
    node _T_33 = dshr(io_rhoPi_in_0_2, _T_32) @[RhoPi.scala 175:32]
    node _T_34 = sub(UInt<7>("h40"), r_0_3) @[RhoPi.scala 176:39]
    node _T_35 = tail(_T_34, 1) @[RhoPi.scala 176:39]
    node _T_36 = dshr(io_rhoPi_in_0_3, _T_35) @[RhoPi.scala 176:32]
    node _T_37 = sub(UInt<7>("h40"), r_0_4) @[RhoPi.scala 177:39]
    node _T_38 = tail(_T_37, 1) @[RhoPi.scala 177:39]
    node _T_39 = dshr(io_rhoPi_in_0_4, _T_38) @[RhoPi.scala 177:32]
    node _T_40 = sub(UInt<7>("h40"), r_1_0) @[RhoPi.scala 178:39]
    node _T_41 = tail(_T_40, 1) @[RhoPi.scala 178:39]
    node _T_42 = dshr(io_rhoPi_in_1_0, _T_41) @[RhoPi.scala 178:32]
    node _T_43 = sub(UInt<7>("h40"), r_1_1) @[RhoPi.scala 179:39]
    node _T_44 = tail(_T_43, 1) @[RhoPi.scala 179:39]
    node _T_45 = dshr(io_rhoPi_in_1_1, _T_44) @[RhoPi.scala 179:32]
    node _T_46 = sub(UInt<7>("h40"), r_1_2) @[RhoPi.scala 180:39]
    node _T_47 = tail(_T_46, 1) @[RhoPi.scala 180:39]
    node _T_48 = dshr(io_rhoPi_in_1_2, _T_47) @[RhoPi.scala 180:32]
    node _T_49 = sub(UInt<7>("h40"), r_1_3) @[RhoPi.scala 181:39]
    node _T_50 = tail(_T_49, 1) @[RhoPi.scala 181:39]
    node _T_51 = dshr(io_rhoPi_in_1_3, _T_50) @[RhoPi.scala 181:32]
    node _T_52 = sub(UInt<7>("h40"), r_1_4) @[RhoPi.scala 182:39]
    node _T_53 = tail(_T_52, 1) @[RhoPi.scala 182:39]
    node _T_54 = dshr(io_rhoPi_in_1_4, _T_53) @[RhoPi.scala 182:32]
    node _T_55 = sub(UInt<7>("h40"), r_2_0) @[RhoPi.scala 183:39]
    node _T_56 = tail(_T_55, 1) @[RhoPi.scala 183:39]
    node _T_57 = dshr(io_rhoPi_in_2_0, _T_56) @[RhoPi.scala 183:32]
    node _T_58 = sub(UInt<7>("h40"), r_2_1) @[RhoPi.scala 184:39]
    node _T_59 = tail(_T_58, 1) @[RhoPi.scala 184:39]
    node _T_60 = dshr(io_rhoPi_in_2_1, _T_59) @[RhoPi.scala 184:32]
    node _T_61 = sub(UInt<7>("h40"), r_2_2) @[RhoPi.scala 185:39]
    node _T_62 = tail(_T_61, 1) @[RhoPi.scala 185:39]
    node _T_63 = dshr(io_rhoPi_in_2_2, _T_62) @[RhoPi.scala 185:32]
    node _T_64 = sub(UInt<7>("h40"), r_2_3) @[RhoPi.scala 186:39]
    node _T_65 = tail(_T_64, 1) @[RhoPi.scala 186:39]
    node _T_66 = dshr(io_rhoPi_in_2_3, _T_65) @[RhoPi.scala 186:32]
    node _T_67 = sub(UInt<7>("h40"), r_2_4) @[RhoPi.scala 187:39]
    node _T_68 = tail(_T_67, 1) @[RhoPi.scala 187:39]
    node _T_69 = dshr(io_rhoPi_in_2_4, _T_68) @[RhoPi.scala 187:32]
    node _T_70 = sub(UInt<7>("h40"), r_3_0) @[RhoPi.scala 188:39]
    node _T_71 = tail(_T_70, 1) @[RhoPi.scala 188:39]
    node _T_72 = dshr(io_rhoPi_in_3_0, _T_71) @[RhoPi.scala 188:32]
    node _T_73 = sub(UInt<7>("h40"), r_3_1) @[RhoPi.scala 189:39]
    node _T_74 = tail(_T_73, 1) @[RhoPi.scala 189:39]
    node _T_75 = dshr(io_rhoPi_in_3_1, _T_74) @[RhoPi.scala 189:32]
    node _T_76 = sub(UInt<7>("h40"), r_3_2) @[RhoPi.scala 190:39]
    node _T_77 = tail(_T_76, 1) @[RhoPi.scala 190:39]
    node _T_78 = dshr(io_rhoPi_in_3_2, _T_77) @[RhoPi.scala 190:32]
    node _T_79 = sub(UInt<7>("h40"), r_3_3) @[RhoPi.scala 191:39]
    node _T_80 = tail(_T_79, 1) @[RhoPi.scala 191:39]
    node _T_81 = dshr(io_rhoPi_in_3_3, _T_80) @[RhoPi.scala 191:32]
    node _T_82 = sub(UInt<7>("h40"), r_3_4) @[RhoPi.scala 192:39]
    node _T_83 = tail(_T_82, 1) @[RhoPi.scala 192:39]
    node _T_84 = dshr(io_rhoPi_in_3_4, _T_83) @[RhoPi.scala 192:32]
    node _T_85 = sub(UInt<7>("h40"), r_4_0) @[RhoPi.scala 193:39]
    node _T_86 = tail(_T_85, 1) @[RhoPi.scala 193:39]
    node _T_87 = dshr(io_rhoPi_in_4_0, _T_86) @[RhoPi.scala 193:32]
    node _T_88 = sub(UInt<7>("h40"), r_4_1) @[RhoPi.scala 194:39]
    node _T_89 = tail(_T_88, 1) @[RhoPi.scala 194:39]
    node _T_90 = dshr(io_rhoPi_in_4_1, _T_89) @[RhoPi.scala 194:32]
    node _T_91 = sub(UInt<7>("h40"), r_4_2) @[RhoPi.scala 195:39]
    node _T_92 = tail(_T_91, 1) @[RhoPi.scala 195:39]
    node _T_93 = dshr(io_rhoPi_in_4_2, _T_92) @[RhoPi.scala 195:32]
    node _T_94 = sub(UInt<7>("h40"), r_4_3) @[RhoPi.scala 196:39]
    node _T_95 = tail(_T_94, 1) @[RhoPi.scala 196:39]
    node _T_96 = dshr(io_rhoPi_in_4_3, _T_95) @[RhoPi.scala 196:32]
    node _T_97 = sub(UInt<7>("h40"), r_4_4) @[RhoPi.scala 197:39]
    node _T_98 = tail(_T_97, 1) @[RhoPi.scala 197:39]
    node _T_99 = dshr(io_rhoPi_in_4_4, _T_98) @[RhoPi.scala 197:32]
    node or_lfh_0_0 = bits(_T, 63, 0) @[RhoPi.scala 95:24 RhoPi.scala 147:14]
    node or_rfh_0_0 = _T_27 @[RhoPi.scala 121:24 RhoPi.scala 173:14]
    node _T_100 = or(or_lfh_0_0, or_rfh_0_0) @[RhoPi.scala 199:34]
    node or_lfh_0_1 = bits(_T_1, 63, 0) @[RhoPi.scala 96:24 RhoPi.scala 148:14]
    node or_rfh_0_1 = _T_30 @[RhoPi.scala 122:24 RhoPi.scala 174:14]
    node _T_101 = or(or_lfh_0_1, or_rfh_0_1) @[RhoPi.scala 200:34]
    node or_lfh_0_2 = bits(_T_2, 63, 0) @[RhoPi.scala 97:24 RhoPi.scala 149:14]
    node or_rfh_0_2 = _T_33 @[RhoPi.scala 123:24 RhoPi.scala 175:14]
    node _T_102 = or(or_lfh_0_2, or_rfh_0_2) @[RhoPi.scala 201:34]
    node or_lfh_0_3 = bits(_T_3, 63, 0) @[RhoPi.scala 98:24 RhoPi.scala 150:14]
    node or_rfh_0_3 = _T_36 @[RhoPi.scala 124:24 RhoPi.scala 176:14]
    node _T_103 = or(or_lfh_0_3, or_rfh_0_3) @[RhoPi.scala 202:34]
    node or_lfh_0_4 = bits(_T_4, 63, 0) @[RhoPi.scala 99:24 RhoPi.scala 151:14]
    node or_rfh_0_4 = _T_39 @[RhoPi.scala 125:24 RhoPi.scala 177:14]
    node _T_104 = or(or_lfh_0_4, or_rfh_0_4) @[RhoPi.scala 203:34]
    node or_lfh_1_0 = bits(_T_5, 63, 0) @[RhoPi.scala 100:24 RhoPi.scala 152:14]
    node or_rfh_1_0 = _T_42 @[RhoPi.scala 126:24 RhoPi.scala 178:14]
    node _T_105 = or(or_lfh_1_0, or_rfh_1_0) @[RhoPi.scala 205:34]
    node or_lfh_1_1 = bits(_T_6, 63, 0) @[RhoPi.scala 101:24 RhoPi.scala 153:14]
    node or_rfh_1_1 = _T_45 @[RhoPi.scala 127:24 RhoPi.scala 179:14]
    node _T_106 = or(or_lfh_1_1, or_rfh_1_1) @[RhoPi.scala 206:34]
    node or_lfh_1_2 = bits(_T_7, 63, 0) @[RhoPi.scala 102:24 RhoPi.scala 154:14]
    node or_rfh_1_2 = _T_48 @[RhoPi.scala 128:24 RhoPi.scala 180:14]
    node _T_107 = or(or_lfh_1_2, or_rfh_1_2) @[RhoPi.scala 207:34]
    node or_lfh_1_3 = bits(_T_8, 63, 0) @[RhoPi.scala 103:24 RhoPi.scala 155:14]
    node or_rfh_1_3 = _T_51 @[RhoPi.scala 129:24 RhoPi.scala 181:14]
    node _T_108 = or(or_lfh_1_3, or_rfh_1_3) @[RhoPi.scala 208:34]
    node or_lfh_1_4 = bits(_T_9, 63, 0) @[RhoPi.scala 104:24 RhoPi.scala 156:14]
    node or_rfh_1_4 = _T_54 @[RhoPi.scala 130:24 RhoPi.scala 182:14]
    node _T_109 = or(or_lfh_1_4, or_rfh_1_4) @[RhoPi.scala 209:34]
    node or_lfh_2_0 = bits(_T_10, 63, 0) @[RhoPi.scala 105:24 RhoPi.scala 157:14]
    node or_rfh_2_0 = _T_57 @[RhoPi.scala 131:24 RhoPi.scala 183:14]
    node _T_110 = or(or_lfh_2_0, or_rfh_2_0) @[RhoPi.scala 211:34]
    node or_lfh_2_1 = bits(_T_11, 63, 0) @[RhoPi.scala 106:24 RhoPi.scala 158:14]
    node or_rfh_2_1 = _T_60 @[RhoPi.scala 132:24 RhoPi.scala 184:14]
    node _T_111 = or(or_lfh_2_1, or_rfh_2_1) @[RhoPi.scala 212:34]
    node or_lfh_2_2 = bits(_T_12, 63, 0) @[RhoPi.scala 107:24 RhoPi.scala 159:14]
    node or_rfh_2_2 = _T_63 @[RhoPi.scala 133:24 RhoPi.scala 185:14]
    node _T_112 = or(or_lfh_2_2, or_rfh_2_2) @[RhoPi.scala 213:34]
    node or_lfh_2_3 = bits(_T_13, 63, 0) @[RhoPi.scala 108:24 RhoPi.scala 160:14]
    node or_rfh_2_3 = _T_66 @[RhoPi.scala 134:24 RhoPi.scala 186:14]
    node _T_113 = or(or_lfh_2_3, or_rfh_2_3) @[RhoPi.scala 214:34]
    node or_lfh_2_4 = bits(_T_14, 63, 0) @[RhoPi.scala 109:24 RhoPi.scala 161:14]
    node or_rfh_2_4 = _T_69 @[RhoPi.scala 135:24 RhoPi.scala 187:14]
    node _T_114 = or(or_lfh_2_4, or_rfh_2_4) @[RhoPi.scala 215:34]
    node or_lfh_3_0 = bits(_T_15, 63, 0) @[RhoPi.scala 110:24 RhoPi.scala 162:14]
    node or_rfh_3_0 = _T_72 @[RhoPi.scala 136:24 RhoPi.scala 188:14]
    node _T_115 = or(or_lfh_3_0, or_rfh_3_0) @[RhoPi.scala 217:34]
    node or_lfh_3_1 = bits(_T_16, 63, 0) @[RhoPi.scala 111:24 RhoPi.scala 163:14]
    node or_rfh_3_1 = _T_75 @[RhoPi.scala 137:24 RhoPi.scala 189:14]
    node _T_116 = or(or_lfh_3_1, or_rfh_3_1) @[RhoPi.scala 218:34]
    node or_lfh_3_2 = bits(_T_17, 63, 0) @[RhoPi.scala 112:24 RhoPi.scala 164:14]
    node or_rfh_3_2 = _T_78 @[RhoPi.scala 138:24 RhoPi.scala 190:14]
    node _T_117 = or(or_lfh_3_2, or_rfh_3_2) @[RhoPi.scala 219:34]
    node or_lfh_3_3 = bits(_T_18, 63, 0) @[RhoPi.scala 113:24 RhoPi.scala 165:14]
    node or_rfh_3_3 = _T_81 @[RhoPi.scala 139:24 RhoPi.scala 191:14]
    node _T_118 = or(or_lfh_3_3, or_rfh_3_3) @[RhoPi.scala 220:34]
    node or_lfh_3_4 = bits(_T_19, 63, 0) @[RhoPi.scala 114:24 RhoPi.scala 166:14]
    node or_rfh_3_4 = _T_84 @[RhoPi.scala 140:24 RhoPi.scala 192:14]
    node _T_119 = or(or_lfh_3_4, or_rfh_3_4) @[RhoPi.scala 221:34]
    node or_lfh_4_0 = bits(_T_20, 63, 0) @[RhoPi.scala 115:24 RhoPi.scala 167:14]
    node or_rfh_4_0 = _T_87 @[RhoPi.scala 141:24 RhoPi.scala 193:14]
    node _T_120 = or(or_lfh_4_0, or_rfh_4_0) @[RhoPi.scala 223:34]
    node or_lfh_4_1 = bits(_T_21, 63, 0) @[RhoPi.scala 116:24 RhoPi.scala 168:14]
    node or_rfh_4_1 = _T_90 @[RhoPi.scala 142:24 RhoPi.scala 194:14]
    node _T_121 = or(or_lfh_4_1, or_rfh_4_1) @[RhoPi.scala 224:34]
    node or_lfh_4_2 = bits(_T_22, 63, 0) @[RhoPi.scala 117:24 RhoPi.scala 169:14]
    node or_rfh_4_2 = _T_93 @[RhoPi.scala 143:24 RhoPi.scala 195:14]
    node _T_122 = or(or_lfh_4_2, or_rfh_4_2) @[RhoPi.scala 225:34]
    node or_lfh_4_3 = bits(_T_23, 63, 0) @[RhoPi.scala 118:24 RhoPi.scala 170:14]
    node or_rfh_4_3 = _T_96 @[RhoPi.scala 144:24 RhoPi.scala 196:14]
    node _T_123 = or(or_lfh_4_3, or_rfh_4_3) @[RhoPi.scala 226:34]
    node or_lfh_4_4 = bits(_T_24, 63, 0) @[RhoPi.scala 119:24 RhoPi.scala 171:14]
    node or_rfh_4_4 = _T_99 @[RhoPi.scala 145:24 RhoPi.scala 197:14]
    node _T_124 = or(or_lfh_4_4, or_rfh_4_4) @[RhoPi.scala 227:34]
    io_rhoPi_out_0_0 <= _T_100 @[RhoPi.scala 199:20]
    io_rhoPi_out_1_0 <= _T_106 @[RhoPi.scala 206:20]
    io_rhoPi_out_2_0 <= _T_112 @[RhoPi.scala 213:20]
    io_rhoPi_out_3_0 <= _T_118 @[RhoPi.scala 220:20]
    io_rhoPi_out_4_0 <= _T_124 @[RhoPi.scala 227:20]
    io_rhoPi_out_0_1 <= _T_115 @[RhoPi.scala 217:20]
    io_rhoPi_out_1_1 <= _T_121 @[RhoPi.scala 224:20]
    io_rhoPi_out_2_1 <= _T_102 @[RhoPi.scala 201:20]
    io_rhoPi_out_3_1 <= _T_108 @[RhoPi.scala 208:20]
    io_rhoPi_out_4_1 <= _T_114 @[RhoPi.scala 215:20]
    io_rhoPi_out_0_2 <= _T_105 @[RhoPi.scala 205:20]
    io_rhoPi_out_1_2 <= _T_111 @[RhoPi.scala 212:20]
    io_rhoPi_out_2_2 <= _T_117 @[RhoPi.scala 219:20]
    io_rhoPi_out_3_2 <= _T_123 @[RhoPi.scala 226:20]
    io_rhoPi_out_4_2 <= _T_104 @[RhoPi.scala 203:20]
    io_rhoPi_out_0_3 <= _T_120 @[RhoPi.scala 223:20]
    io_rhoPi_out_1_3 <= _T_101 @[RhoPi.scala 200:20]
    io_rhoPi_out_2_3 <= _T_107 @[RhoPi.scala 207:20]
    io_rhoPi_out_3_3 <= _T_113 @[RhoPi.scala 214:20]
    io_rhoPi_out_4_3 <= _T_119 @[RhoPi.scala 221:20]
    io_rhoPi_out_0_4 <= _T_110 @[RhoPi.scala 211:20]
    io_rhoPi_out_1_4 <= _T_116 @[RhoPi.scala 218:20]
    io_rhoPi_out_2_4 <= _T_122 @[RhoPi.scala 225:20]
    io_rhoPi_out_3_4 <= _T_103 @[RhoPi.scala 202:20]
    io_rhoPi_out_4_4 <= _T_109 @[RhoPi.scala 209:20]

  module Chi :
    input clock : Clock
    input reset : UInt<1>
    input io_chi_in_0_0 : UInt<64>
    input io_chi_in_1_0 : UInt<64>
    input io_chi_in_2_0 : UInt<64>
    input io_chi_in_3_0 : UInt<64>
    input io_chi_in_4_0 : UInt<64>
    input io_chi_in_0_1 : UInt<64>
    input io_chi_in_1_1 : UInt<64>
    input io_chi_in_2_1 : UInt<64>
    input io_chi_in_3_1 : UInt<64>
    input io_chi_in_4_1 : UInt<64>
    input io_chi_in_0_2 : UInt<64>
    input io_chi_in_1_2 : UInt<64>
    input io_chi_in_2_2 : UInt<64>
    input io_chi_in_3_2 : UInt<64>
    input io_chi_in_4_2 : UInt<64>
    input io_chi_in_0_3 : UInt<64>
    input io_chi_in_1_3 : UInt<64>
    input io_chi_in_2_3 : UInt<64>
    input io_chi_in_3_3 : UInt<64>
    input io_chi_in_4_3 : UInt<64>
    input io_chi_in_0_4 : UInt<64>
    input io_chi_in_1_4 : UInt<64>
    input io_chi_in_2_4 : UInt<64>
    input io_chi_in_3_4 : UInt<64>
    input io_chi_in_4_4 : UInt<64>
    output io_chi_out_0_0 : UInt<64>
    output io_chi_out_1_0 : UInt<64>
    output io_chi_out_2_0 : UInt<64>
    output io_chi_out_3_0 : UInt<64>
    output io_chi_out_4_0 : UInt<64>
    output io_chi_out_0_1 : UInt<64>
    output io_chi_out_1_1 : UInt<64>
    output io_chi_out_2_1 : UInt<64>
    output io_chi_out_3_1 : UInt<64>
    output io_chi_out_4_1 : UInt<64>
    output io_chi_out_0_2 : UInt<64>
    output io_chi_out_1_2 : UInt<64>
    output io_chi_out_2_2 : UInt<64>
    output io_chi_out_3_2 : UInt<64>
    output io_chi_out_4_2 : UInt<64>
    output io_chi_out_0_3 : UInt<64>
    output io_chi_out_1_3 : UInt<64>
    output io_chi_out_2_3 : UInt<64>
    output io_chi_out_3_3 : UInt<64>
    output io_chi_out_4_3 : UInt<64>
    output io_chi_out_0_4 : UInt<64>
    output io_chi_out_1_4 : UInt<64>
    output io_chi_out_2_4 : UInt<64>
    output io_chi_out_3_4 : UInt<64>
    output io_chi_out_4_4 : UInt<64>

    node _T = not(io_chi_in_1_0) @[Chi.scala 185:25]
    node _T_1 = not(io_chi_in_1_1) @[Chi.scala 186:25]
    node _T_2 = not(io_chi_in_1_2) @[Chi.scala 187:25]
    node _T_3 = not(io_chi_in_1_3) @[Chi.scala 188:25]
    node _T_4 = not(io_chi_in_1_4) @[Chi.scala 189:25]
    node _T_5 = not(io_chi_in_2_0) @[Chi.scala 191:25]
    node _T_6 = not(io_chi_in_2_1) @[Chi.scala 192:25]
    node _T_7 = not(io_chi_in_2_2) @[Chi.scala 193:25]
    node _T_8 = not(io_chi_in_2_3) @[Chi.scala 194:25]
    node _T_9 = not(io_chi_in_2_4) @[Chi.scala 195:25]
    node _T_10 = not(io_chi_in_3_0) @[Chi.scala 197:25]
    node _T_11 = not(io_chi_in_3_1) @[Chi.scala 198:25]
    node _T_12 = not(io_chi_in_3_2) @[Chi.scala 199:25]
    node _T_13 = not(io_chi_in_3_3) @[Chi.scala 200:25]
    node _T_14 = not(io_chi_in_3_4) @[Chi.scala 201:25]
    node _T_15 = not(io_chi_in_4_0) @[Chi.scala 203:25]
    node _T_16 = not(io_chi_in_4_1) @[Chi.scala 204:25]
    node _T_17 = not(io_chi_in_4_2) @[Chi.scala 205:25]
    node _T_18 = not(io_chi_in_4_3) @[Chi.scala 206:25]
    node _T_19 = not(io_chi_in_4_4) @[Chi.scala 207:25]
    node _T_20 = not(io_chi_in_0_0) @[Chi.scala 209:25]
    node _T_21 = not(io_chi_in_0_1) @[Chi.scala 210:25]
    node _T_22 = not(io_chi_in_0_2) @[Chi.scala 211:25]
    node _T_23 = not(io_chi_in_0_3) @[Chi.scala 212:25]
    node _T_24 = not(io_chi_in_0_4) @[Chi.scala 213:25]
    node chi_negation_0_0 = _T @[Chi.scala 111:30 Chi.scala 185:22]
    node _T_25 = and(chi_negation_0_0, io_chi_in_2_0) @[Chi.scala 215:41]
    node chi_negation_0_1 = _T_1 @[Chi.scala 117:30 Chi.scala 186:22]
    node _T_26 = and(chi_negation_0_1, io_chi_in_2_1) @[Chi.scala 216:41]
    node chi_negation_0_2 = _T_2 @[Chi.scala 123:30 Chi.scala 187:22]
    node _T_27 = and(chi_negation_0_2, io_chi_in_2_2) @[Chi.scala 217:41]
    node chi_negation_0_3 = _T_3 @[Chi.scala 129:30 Chi.scala 188:22]
    node _T_28 = and(chi_negation_0_3, io_chi_in_2_3) @[Chi.scala 218:41]
    node chi_negation_0_4 = _T_4 @[Chi.scala 135:30 Chi.scala 189:22]
    node _T_29 = and(chi_negation_0_4, io_chi_in_2_4) @[Chi.scala 219:41]
    node chi_negation_1_0 = _T_5 @[Chi.scala 112:30 Chi.scala 191:22]
    node _T_30 = and(chi_negation_1_0, io_chi_in_3_0) @[Chi.scala 221:41]
    node chi_negation_1_1 = _T_6 @[Chi.scala 118:30 Chi.scala 192:22]
    node _T_31 = and(chi_negation_1_1, io_chi_in_3_1) @[Chi.scala 222:41]
    node chi_negation_1_2 = _T_7 @[Chi.scala 124:30 Chi.scala 193:22]
    node _T_32 = and(chi_negation_1_2, io_chi_in_3_2) @[Chi.scala 223:41]
    node chi_negation_1_3 = _T_8 @[Chi.scala 130:30 Chi.scala 194:22]
    node _T_33 = and(chi_negation_1_3, io_chi_in_3_3) @[Chi.scala 224:41]
    node chi_negation_1_4 = _T_9 @[Chi.scala 136:30 Chi.scala 195:22]
    node _T_34 = and(chi_negation_1_4, io_chi_in_3_4) @[Chi.scala 225:41]
    node chi_negation_2_0 = _T_10 @[Chi.scala 113:30 Chi.scala 197:22]
    node _T_35 = and(chi_negation_2_0, io_chi_in_4_0) @[Chi.scala 227:41]
    node chi_negation_2_1 = _T_11 @[Chi.scala 119:30 Chi.scala 198:22]
    node _T_36 = and(chi_negation_2_1, io_chi_in_4_1) @[Chi.scala 228:41]
    node chi_negation_2_2 = _T_12 @[Chi.scala 125:30 Chi.scala 199:22]
    node _T_37 = and(chi_negation_2_2, io_chi_in_4_2) @[Chi.scala 229:41]
    node chi_negation_2_3 = _T_13 @[Chi.scala 131:30 Chi.scala 200:22]
    node _T_38 = and(chi_negation_2_3, io_chi_in_4_3) @[Chi.scala 230:41]
    node chi_negation_2_4 = _T_14 @[Chi.scala 137:30 Chi.scala 201:22]
    node _T_39 = and(chi_negation_2_4, io_chi_in_4_4) @[Chi.scala 231:41]
    node chi_negation_3_0 = _T_15 @[Chi.scala 114:30 Chi.scala 203:22]
    node _T_40 = and(chi_negation_3_0, io_chi_in_0_0) @[Chi.scala 233:41]
    node chi_negation_3_1 = _T_16 @[Chi.scala 120:30 Chi.scala 204:22]
    node _T_41 = and(chi_negation_3_1, io_chi_in_0_1) @[Chi.scala 234:41]
    node chi_negation_3_2 = _T_17 @[Chi.scala 126:30 Chi.scala 205:22]
    node _T_42 = and(chi_negation_3_2, io_chi_in_0_2) @[Chi.scala 235:41]
    node chi_negation_3_3 = _T_18 @[Chi.scala 132:30 Chi.scala 206:22]
    node _T_43 = and(chi_negation_3_3, io_chi_in_0_3) @[Chi.scala 236:41]
    node chi_negation_3_4 = _T_19 @[Chi.scala 138:30 Chi.scala 207:22]
    node _T_44 = and(chi_negation_3_4, io_chi_in_0_4) @[Chi.scala 237:41]
    node chi_negation_4_0 = _T_20 @[Chi.scala 115:30 Chi.scala 209:22]
    node _T_45 = and(chi_negation_4_0, io_chi_in_1_0) @[Chi.scala 239:41]
    node chi_negation_4_1 = _T_21 @[Chi.scala 121:30 Chi.scala 210:22]
    node _T_46 = and(chi_negation_4_1, io_chi_in_1_1) @[Chi.scala 240:41]
    node chi_negation_4_2 = _T_22 @[Chi.scala 127:30 Chi.scala 211:22]
    node _T_47 = and(chi_negation_4_2, io_chi_in_1_2) @[Chi.scala 241:41]
    node chi_negation_4_3 = _T_23 @[Chi.scala 133:30 Chi.scala 212:22]
    node _T_48 = and(chi_negation_4_3, io_chi_in_1_3) @[Chi.scala 242:41]
    node chi_negation_4_4 = _T_24 @[Chi.scala 139:30 Chi.scala 213:22]
    node _T_49 = and(chi_negation_4_4, io_chi_in_1_4) @[Chi.scala 243:41]
    node chi_xor_rhs_0_0 = _T_25 @[Chi.scala 80:29 Chi.scala 215:21]
    node _T_50 = xor(io_chi_in_0_0, chi_xor_rhs_0_0) @[Chi.scala 307:36]
    node chi_xor_rhs_0_1 = _T_26 @[Chi.scala 86:29 Chi.scala 216:21]
    node _T_51 = xor(io_chi_in_0_1, chi_xor_rhs_0_1) @[Chi.scala 308:36]
    node chi_xor_rhs_0_2 = _T_27 @[Chi.scala 92:29 Chi.scala 217:21]
    node _T_52 = xor(io_chi_in_0_2, chi_xor_rhs_0_2) @[Chi.scala 309:36]
    node chi_xor_rhs_0_3 = _T_28 @[Chi.scala 98:29 Chi.scala 218:21]
    node _T_53 = xor(io_chi_in_0_3, chi_xor_rhs_0_3) @[Chi.scala 310:36]
    node chi_xor_rhs_0_4 = _T_29 @[Chi.scala 104:29 Chi.scala 219:21]
    node _T_54 = xor(io_chi_in_0_4, chi_xor_rhs_0_4) @[Chi.scala 311:36]
    node chi_xor_rhs_1_0 = _T_30 @[Chi.scala 81:29 Chi.scala 221:21]
    node _T_55 = xor(io_chi_in_1_0, chi_xor_rhs_1_0) @[Chi.scala 313:36]
    node chi_xor_rhs_1_1 = _T_31 @[Chi.scala 87:29 Chi.scala 222:21]
    node _T_56 = xor(io_chi_in_1_1, chi_xor_rhs_1_1) @[Chi.scala 314:36]
    node chi_xor_rhs_1_2 = _T_32 @[Chi.scala 93:29 Chi.scala 223:21]
    node _T_57 = xor(io_chi_in_1_2, chi_xor_rhs_1_2) @[Chi.scala 315:36]
    node chi_xor_rhs_1_3 = _T_33 @[Chi.scala 99:29 Chi.scala 224:21]
    node _T_58 = xor(io_chi_in_1_3, chi_xor_rhs_1_3) @[Chi.scala 316:36]
    node chi_xor_rhs_1_4 = _T_34 @[Chi.scala 105:29 Chi.scala 225:21]
    node _T_59 = xor(io_chi_in_1_4, chi_xor_rhs_1_4) @[Chi.scala 317:36]
    node chi_xor_rhs_2_0 = _T_35 @[Chi.scala 82:29 Chi.scala 227:21]
    node _T_60 = xor(io_chi_in_2_0, chi_xor_rhs_2_0) @[Chi.scala 319:36]
    node chi_xor_rhs_2_1 = _T_36 @[Chi.scala 88:29 Chi.scala 228:21]
    node _T_61 = xor(io_chi_in_2_1, chi_xor_rhs_2_1) @[Chi.scala 320:36]
    node chi_xor_rhs_2_2 = _T_37 @[Chi.scala 94:29 Chi.scala 229:21]
    node _T_62 = xor(io_chi_in_2_2, chi_xor_rhs_2_2) @[Chi.scala 321:36]
    node chi_xor_rhs_2_3 = _T_38 @[Chi.scala 100:29 Chi.scala 230:21]
    node _T_63 = xor(io_chi_in_2_3, chi_xor_rhs_2_3) @[Chi.scala 322:36]
    node chi_xor_rhs_2_4 = _T_39 @[Chi.scala 106:29 Chi.scala 231:21]
    node _T_64 = xor(io_chi_in_2_4, chi_xor_rhs_2_4) @[Chi.scala 323:36]
    node chi_xor_rhs_3_0 = _T_40 @[Chi.scala 83:29 Chi.scala 233:21]
    node _T_65 = xor(io_chi_in_3_0, chi_xor_rhs_3_0) @[Chi.scala 325:36]
    node chi_xor_rhs_3_1 = _T_41 @[Chi.scala 89:29 Chi.scala 234:21]
    node _T_66 = xor(io_chi_in_3_1, chi_xor_rhs_3_1) @[Chi.scala 326:36]
    node chi_xor_rhs_3_2 = _T_42 @[Chi.scala 95:29 Chi.scala 235:21]
    node _T_67 = xor(io_chi_in_3_2, chi_xor_rhs_3_2) @[Chi.scala 327:36]
    node chi_xor_rhs_3_3 = _T_43 @[Chi.scala 101:29 Chi.scala 236:21]
    node _T_68 = xor(io_chi_in_3_3, chi_xor_rhs_3_3) @[Chi.scala 328:36]
    node chi_xor_rhs_3_4 = _T_44 @[Chi.scala 107:29 Chi.scala 237:21]
    node _T_69 = xor(io_chi_in_3_4, chi_xor_rhs_3_4) @[Chi.scala 329:36]
    node chi_xor_rhs_4_0 = _T_45 @[Chi.scala 84:29 Chi.scala 239:21]
    node _T_70 = xor(io_chi_in_4_0, chi_xor_rhs_4_0) @[Chi.scala 331:36]
    node chi_xor_rhs_4_1 = _T_46 @[Chi.scala 90:29 Chi.scala 240:21]
    node _T_71 = xor(io_chi_in_4_1, chi_xor_rhs_4_1) @[Chi.scala 332:36]
    node chi_xor_rhs_4_2 = _T_47 @[Chi.scala 96:29 Chi.scala 241:21]
    node _T_72 = xor(io_chi_in_4_2, chi_xor_rhs_4_2) @[Chi.scala 333:36]
    node chi_xor_rhs_4_3 = _T_48 @[Chi.scala 102:29 Chi.scala 242:21]
    node _T_73 = xor(io_chi_in_4_3, chi_xor_rhs_4_3) @[Chi.scala 334:36]
    node chi_xor_rhs_4_4 = _T_49 @[Chi.scala 108:29 Chi.scala 243:21]
    node _T_74 = xor(io_chi_in_4_4, chi_xor_rhs_4_4) @[Chi.scala 335:36]
    io_chi_out_0_0 <= _T_50 @[Chi.scala 307:20]
    io_chi_out_1_0 <= _T_55 @[Chi.scala 313:20]
    io_chi_out_2_0 <= _T_60 @[Chi.scala 319:20]
    io_chi_out_3_0 <= _T_65 @[Chi.scala 325:20]
    io_chi_out_4_0 <= _T_70 @[Chi.scala 331:20]
    io_chi_out_0_1 <= _T_51 @[Chi.scala 308:20]
    io_chi_out_1_1 <= _T_56 @[Chi.scala 314:20]
    io_chi_out_2_1 <= _T_61 @[Chi.scala 320:20]
    io_chi_out_3_1 <= _T_66 @[Chi.scala 326:20]
    io_chi_out_4_1 <= _T_71 @[Chi.scala 332:20]
    io_chi_out_0_2 <= _T_52 @[Chi.scala 309:20]
    io_chi_out_1_2 <= _T_57 @[Chi.scala 315:20]
    io_chi_out_2_2 <= _T_62 @[Chi.scala 321:20]
    io_chi_out_3_2 <= _T_67 @[Chi.scala 327:20]
    io_chi_out_4_2 <= _T_72 @[Chi.scala 333:20]
    io_chi_out_0_3 <= _T_53 @[Chi.scala 310:20]
    io_chi_out_1_3 <= _T_58 @[Chi.scala 316:20]
    io_chi_out_2_3 <= _T_63 @[Chi.scala 322:20]
    io_chi_out_3_3 <= _T_68 @[Chi.scala 328:20]
    io_chi_out_4_3 <= _T_73 @[Chi.scala 334:20]
    io_chi_out_0_4 <= _T_54 @[Chi.scala 311:20]
    io_chi_out_1_4 <= _T_59 @[Chi.scala 317:20]
    io_chi_out_2_4 <= _T_64 @[Chi.scala 323:20]
    io_chi_out_3_4 <= _T_69 @[Chi.scala 329:20]
    io_chi_out_4_4 <= _T_74 @[Chi.scala 335:20]

  module Iota :
    input clock : Clock
    input reset : UInt<1>
    input io_iota_in : UInt<64>
    output io_iota_out : UInt<64>
    input io_iota_round : UInt<64>

    node _T = eq(io_iota_round, UInt<1>("h0")) @[Iota.scala 37:22]
    node RC_0 = pad(UInt<1>("h1"), 64) @[Iota.scala 10:17 Iota.scala 11:11]
    node _T_1 = xor(io_iota_in, RC_0) @[Iota.scala 38:30]
    node _T_2 = eq(io_iota_round, UInt<1>("h1")) @[Iota.scala 39:28]
    node RC_1 = pad(UInt<16>("h8082"), 64) @[Iota.scala 10:17 Iota.scala 12:11]
    node _T_3 = xor(io_iota_in, RC_1) @[Iota.scala 40:30]
    node _T_4 = eq(io_iota_round, UInt<2>("h2")) @[Iota.scala 41:28]
    node RC_2 = UInt<64>("h800000000000808a") @[Iota.scala 10:17 Iota.scala 13:11]
    node _T_5 = xor(io_iota_in, RC_2) @[Iota.scala 42:30]
    node _T_6 = eq(io_iota_round, UInt<2>("h3")) @[Iota.scala 43:28]
    node RC_3 = UInt<64>("h8000000080008000") @[Iota.scala 10:17 Iota.scala 14:11]
    node _T_7 = xor(io_iota_in, RC_3) @[Iota.scala 44:30]
    node _T_8 = eq(io_iota_round, UInt<3>("h4")) @[Iota.scala 45:28]
    node RC_4 = pad(UInt<16>("h808b"), 64) @[Iota.scala 10:17 Iota.scala 15:11]
    node _T_9 = xor(io_iota_in, RC_4) @[Iota.scala 46:30]
    node _T_10 = eq(io_iota_round, UInt<3>("h5")) @[Iota.scala 47:28]
    node RC_5 = pad(UInt<32>("h80000001"), 64) @[Iota.scala 10:17 Iota.scala 16:11]
    node _T_11 = xor(io_iota_in, RC_5) @[Iota.scala 48:30]
    node _T_12 = eq(io_iota_round, UInt<3>("h6")) @[Iota.scala 49:28]
    node RC_6 = UInt<64>("h8000000080008081") @[Iota.scala 10:17 Iota.scala 17:11]
    node _T_13 = xor(io_iota_in, RC_6) @[Iota.scala 50:30]
    node _T_14 = eq(io_iota_round, UInt<3>("h7")) @[Iota.scala 51:28]
    node RC_7 = UInt<64>("h8000000000008009") @[Iota.scala 10:17 Iota.scala 18:11]
    node _T_15 = xor(io_iota_in, RC_7) @[Iota.scala 52:30]
    node _T_16 = eq(io_iota_round, UInt<4>("h8")) @[Iota.scala 53:28]
    node RC_8 = pad(UInt<8>("h8a"), 64) @[Iota.scala 10:17 Iota.scala 19:11]
    node _T_17 = xor(io_iota_in, RC_8) @[Iota.scala 54:30]
    node _T_18 = eq(io_iota_round, UInt<4>("h9")) @[Iota.scala 55:28]
    node RC_9 = pad(UInt<8>("h88"), 64) @[Iota.scala 10:17 Iota.scala 20:11]
    node _T_19 = xor(io_iota_in, RC_9) @[Iota.scala 56:30]
    node _T_20 = eq(io_iota_round, UInt<4>("ha")) @[Iota.scala 57:28]
    node RC_10 = pad(UInt<32>("h80008009"), 64) @[Iota.scala 10:17 Iota.scala 21:11]
    node _T_21 = xor(io_iota_in, RC_10) @[Iota.scala 58:30]
    node _T_22 = eq(io_iota_round, UInt<4>("hb")) @[Iota.scala 59:28]
    node RC_11 = pad(UInt<32>("h8000000a"), 64) @[Iota.scala 10:17 Iota.scala 22:11]
    node _T_23 = xor(io_iota_in, RC_11) @[Iota.scala 60:30]
    node _T_24 = eq(io_iota_round, UInt<4>("hc")) @[Iota.scala 61:28]
    node RC_12 = pad(UInt<32>("h8000808b"), 64) @[Iota.scala 10:17 Iota.scala 23:11]
    node _T_25 = xor(io_iota_in, RC_12) @[Iota.scala 62:30]
    node _T_26 = eq(io_iota_round, UInt<4>("hd")) @[Iota.scala 63:28]
    node RC_13 = UInt<64>("h800000000000008b") @[Iota.scala 10:17 Iota.scala 24:11]
    node _T_27 = xor(io_iota_in, RC_13) @[Iota.scala 64:30]
    node _T_28 = eq(io_iota_round, UInt<4>("he")) @[Iota.scala 65:28]
    node RC_14 = UInt<64>("h8000000000008089") @[Iota.scala 10:17 Iota.scala 25:11]
    node _T_29 = xor(io_iota_in, RC_14) @[Iota.scala 66:30]
    node _T_30 = eq(io_iota_round, UInt<4>("hf")) @[Iota.scala 67:28]
    node RC_15 = UInt<64>("h8000000000008003") @[Iota.scala 10:17 Iota.scala 26:11]
    node _T_31 = xor(io_iota_in, RC_15) @[Iota.scala 68:30]
    node _T_32 = eq(io_iota_round, UInt<5>("h10")) @[Iota.scala 69:28]
    node RC_16 = UInt<64>("h8000000000008002") @[Iota.scala 10:17 Iota.scala 27:11]
    node _T_33 = xor(io_iota_in, RC_16) @[Iota.scala 70:30]
    node _T_34 = eq(io_iota_round, UInt<5>("h11")) @[Iota.scala 71:28]
    node RC_17 = UInt<64>("h8000000000000080") @[Iota.scala 10:17 Iota.scala 28:11]
    node _T_35 = xor(io_iota_in, RC_17) @[Iota.scala 72:30]
    node _T_36 = eq(io_iota_round, UInt<5>("h12")) @[Iota.scala 73:28]
    node RC_18 = pad(UInt<16>("h800a"), 64) @[Iota.scala 10:17 Iota.scala 29:11]
    node _T_37 = xor(io_iota_in, RC_18) @[Iota.scala 74:30]
    node _T_38 = eq(io_iota_round, UInt<5>("h13")) @[Iota.scala 75:28]
    node RC_19 = UInt<64>("h800000008000000a") @[Iota.scala 10:17 Iota.scala 30:11]
    node _T_39 = xor(io_iota_in, RC_19) @[Iota.scala 76:30]
    node _T_40 = eq(io_iota_round, UInt<5>("h14")) @[Iota.scala 77:28]
    node RC_20 = UInt<64>("h8000000080008081") @[Iota.scala 10:17 Iota.scala 31:11]
    node _T_41 = xor(io_iota_in, RC_20) @[Iota.scala 78:30]
    node _T_42 = eq(io_iota_round, UInt<5>("h15")) @[Iota.scala 79:28]
    node RC_21 = UInt<64>("h8000000000008080") @[Iota.scala 10:17 Iota.scala 32:11]
    node _T_43 = xor(io_iota_in, RC_21) @[Iota.scala 80:30]
    node _T_44 = eq(io_iota_round, UInt<5>("h16")) @[Iota.scala 81:28]
    node RC_22 = pad(UInt<32>("h80000001"), 64) @[Iota.scala 10:17 Iota.scala 33:11]
    node _T_45 = xor(io_iota_in, RC_22) @[Iota.scala 82:30]
    node _T_46 = eq(io_iota_round, UInt<5>("h17")) @[Iota.scala 83:28]
    node RC_23 = UInt<64>("h8000000080008008") @[Iota.scala 10:17 Iota.scala 34:11]
    node _T_47 = xor(io_iota_in, RC_23) @[Iota.scala 84:30]
    node _T_48 = xor(io_iota_in, RC_0) @[Iota.scala 86:30]
    node _GEN_0 = mux(_T_46, _T_47, _T_48) @[Iota.scala 83:37 Iota.scala 84:17 Iota.scala 86:17]
    node _GEN_1 = mux(_T_44, _T_45, _GEN_0) @[Iota.scala 81:37 Iota.scala 82:17]
    node _GEN_2 = mux(_T_42, _T_43, _GEN_1) @[Iota.scala 79:37 Iota.scala 80:17]
    node _GEN_3 = mux(_T_40, _T_41, _GEN_2) @[Iota.scala 77:37 Iota.scala 78:17]
    node _GEN_4 = mux(_T_38, _T_39, _GEN_3) @[Iota.scala 75:37 Iota.scala 76:17]
    node _GEN_5 = mux(_T_36, _T_37, _GEN_4) @[Iota.scala 73:37 Iota.scala 74:17]
    node _GEN_6 = mux(_T_34, _T_35, _GEN_5) @[Iota.scala 71:37 Iota.scala 72:17]
    node _GEN_7 = mux(_T_32, _T_33, _GEN_6) @[Iota.scala 69:37 Iota.scala 70:17]
    node _GEN_8 = mux(_T_30, _T_31, _GEN_7) @[Iota.scala 67:37 Iota.scala 68:17]
    node _GEN_9 = mux(_T_28, _T_29, _GEN_8) @[Iota.scala 65:37 Iota.scala 66:17]
    node _GEN_10 = mux(_T_26, _T_27, _GEN_9) @[Iota.scala 63:37 Iota.scala 64:17]
    node _GEN_11 = mux(_T_24, _T_25, _GEN_10) @[Iota.scala 61:37 Iota.scala 62:17]
    node _GEN_12 = mux(_T_22, _T_23, _GEN_11) @[Iota.scala 59:37 Iota.scala 60:17]
    node _GEN_13 = mux(_T_20, _T_21, _GEN_12) @[Iota.scala 57:37 Iota.scala 58:17]
    node _GEN_14 = mux(_T_18, _T_19, _GEN_13) @[Iota.scala 55:36 Iota.scala 56:17]
    node _GEN_15 = mux(_T_16, _T_17, _GEN_14) @[Iota.scala 53:36 Iota.scala 54:17]
    node _GEN_16 = mux(_T_14, _T_15, _GEN_15) @[Iota.scala 51:36 Iota.scala 52:17]
    node _GEN_17 = mux(_T_12, _T_13, _GEN_16) @[Iota.scala 49:36 Iota.scala 50:17]
    node _GEN_18 = mux(_T_10, _T_11, _GEN_17) @[Iota.scala 47:36 Iota.scala 48:17]
    node _GEN_19 = mux(_T_8, _T_9, _GEN_18) @[Iota.scala 45:36 Iota.scala 46:17]
    node _GEN_20 = mux(_T_6, _T_7, _GEN_19) @[Iota.scala 43:36 Iota.scala 44:17]
    node _GEN_21 = mux(_T_4, _T_5, _GEN_20) @[Iota.scala 41:36 Iota.scala 42:17]
    node _GEN_22 = mux(_T_2, _T_3, _GEN_21) @[Iota.scala 39:36 Iota.scala 40:17]
    node _GEN_23 = mux(_T, _T_1, _GEN_22) @[Iota.scala 37:30 Iota.scala 38:17]
    io_iota_out <= _GEN_23

  module Round :
    input clock : Clock
    input reset : UInt<1>
    input io_round_in_0_0 : UInt<64>
    input io_round_in_1_0 : UInt<64>
    input io_round_in_2_0 : UInt<64>
    input io_round_in_3_0 : UInt<64>
    input io_round_in_4_0 : UInt<64>
    input io_round_in_0_1 : UInt<64>
    input io_round_in_1_1 : UInt<64>
    input io_round_in_2_1 : UInt<64>
    input io_round_in_3_1 : UInt<64>
    input io_round_in_4_1 : UInt<64>
    input io_round_in_0_2 : UInt<64>
    input io_round_in_1_2 : UInt<64>
    input io_round_in_2_2 : UInt<64>
    input io_round_in_3_2 : UInt<64>
    input io_round_in_4_2 : UInt<64>
    input io_round_in_0_3 : UInt<64>
    input io_round_in_1_3 : UInt<64>
    input io_round_in_2_3 : UInt<64>
    input io_round_in_3_3 : UInt<64>
    input io_round_in_4_3 : UInt<64>
    input io_round_in_0_4 : UInt<64>
    input io_round_in_1_4 : UInt<64>
    input io_round_in_2_4 : UInt<64>
    input io_round_in_3_4 : UInt<64>
    input io_round_in_4_4 : UInt<64>
    output io_round_out_0_0 : UInt<64>
    output io_round_out_1_0 : UInt<64>
    output io_round_out_2_0 : UInt<64>
    output io_round_out_3_0 : UInt<64>
    output io_round_out_4_0 : UInt<64>
    output io_round_out_0_1 : UInt<64>
    output io_round_out_1_1 : UInt<64>
    output io_round_out_2_1 : UInt<64>
    output io_round_out_3_1 : UInt<64>
    output io_round_out_4_1 : UInt<64>
    output io_round_out_0_2 : UInt<64>
    output io_round_out_1_2 : UInt<64>
    output io_round_out_2_2 : UInt<64>
    output io_round_out_3_2 : UInt<64>
    output io_round_out_4_2 : UInt<64>
    output io_round_out_0_3 : UInt<64>
    output io_round_out_1_3 : UInt<64>
    output io_round_out_2_3 : UInt<64>
    output io_round_out_3_3 : UInt<64>
    output io_round_out_4_3 : UInt<64>
    output io_round_out_0_4 : UInt<64>
    output io_round_out_1_4 : UInt<64>
    output io_round_out_2_4 : UInt<64>
    output io_round_out_3_4 : UInt<64>
    output io_round_out_4_4 : UInt<64>
    output io_theta_out_0_0 : UInt<64>
    output io_theta_out_1_0 : UInt<64>
    output io_theta_out_2_0 : UInt<64>
    output io_theta_out_3_0 : UInt<64>
    output io_theta_out_4_0 : UInt<64>
    output io_theta_out_0_1 : UInt<64>
    output io_theta_out_1_1 : UInt<64>
    output io_theta_out_2_1 : UInt<64>
    output io_theta_out_3_1 : UInt<64>
    output io_theta_out_4_1 : UInt<64>
    output io_theta_out_0_2 : UInt<64>
    output io_theta_out_1_2 : UInt<64>
    output io_theta_out_2_2 : UInt<64>
    output io_theta_out_3_2 : UInt<64>
    output io_theta_out_4_2 : UInt<64>
    output io_theta_out_0_3 : UInt<64>
    output io_theta_out_1_3 : UInt<64>
    output io_theta_out_2_3 : UInt<64>
    output io_theta_out_3_3 : UInt<64>
    output io_theta_out_4_3 : UInt<64>
    output io_theta_out_0_4 : UInt<64>
    output io_theta_out_1_4 : UInt<64>
    output io_theta_out_2_4 : UInt<64>
    output io_theta_out_3_4 : UInt<64>
    output io_theta_out_4_4 : UInt<64>
    output io_rhoPi_out_0_0 : UInt<64>
    output io_rhoPi_out_1_0 : UInt<64>
    output io_rhoPi_out_2_0 : UInt<64>
    output io_rhoPi_out_3_0 : UInt<64>
    output io_rhoPi_out_4_0 : UInt<64>
    output io_rhoPi_out_0_1 : UInt<64>
    output io_rhoPi_out_1_1 : UInt<64>
    output io_rhoPi_out_2_1 : UInt<64>
    output io_rhoPi_out_3_1 : UInt<64>
    output io_rhoPi_out_4_1 : UInt<64>
    output io_rhoPi_out_0_2 : UInt<64>
    output io_rhoPi_out_1_2 : UInt<64>
    output io_rhoPi_out_2_2 : UInt<64>
    output io_rhoPi_out_3_2 : UInt<64>
    output io_rhoPi_out_4_2 : UInt<64>
    output io_rhoPi_out_0_3 : UInt<64>
    output io_rhoPi_out_1_3 : UInt<64>
    output io_rhoPi_out_2_3 : UInt<64>
    output io_rhoPi_out_3_3 : UInt<64>
    output io_rhoPi_out_4_3 : UInt<64>
    output io_rhoPi_out_0_4 : UInt<64>
    output io_rhoPi_out_1_4 : UInt<64>
    output io_rhoPi_out_2_4 : UInt<64>
    output io_rhoPi_out_3_4 : UInt<64>
    output io_rhoPi_out_4_4 : UInt<64>
    output io_chi_out_0_0 : UInt<64>
    output io_chi_out_1_0 : UInt<64>
    output io_chi_out_2_0 : UInt<64>
    output io_chi_out_3_0 : UInt<64>
    output io_chi_out_4_0 : UInt<64>
    output io_chi_out_0_1 : UInt<64>
    output io_chi_out_1_1 : UInt<64>
    output io_chi_out_2_1 : UInt<64>
    output io_chi_out_3_1 : UInt<64>
    output io_chi_out_4_1 : UInt<64>
    output io_chi_out_0_2 : UInt<64>
    output io_chi_out_1_2 : UInt<64>
    output io_chi_out_2_2 : UInt<64>
    output io_chi_out_3_2 : UInt<64>
    output io_chi_out_4_2 : UInt<64>
    output io_chi_out_0_3 : UInt<64>
    output io_chi_out_1_3 : UInt<64>
    output io_chi_out_2_3 : UInt<64>
    output io_chi_out_3_3 : UInt<64>
    output io_chi_out_4_3 : UInt<64>
    output io_chi_out_0_4 : UInt<64>
    output io_chi_out_1_4 : UInt<64>
    output io_chi_out_2_4 : UInt<64>
    output io_chi_out_3_4 : UInt<64>
    output io_chi_out_4_4 : UInt<64>
    output io_iota_out : UInt<64>
    input io_counter : UInt<64>

    inst theta of Theta @[Round.scala 138:27]
    inst rhoPi of RhoPi @[Round.scala 139:27]
    inst chi of Chi @[Round.scala 140:27]
    inst iota of Iota @[Round.scala 141:27]
    io_round_out_0_0 <= iota.io_iota_out @[Round.scala 235:22]
    io_round_out_1_0 <= chi.io_chi_out_1_0 @[Round.scala 241:22]
    io_round_out_2_0 <= chi.io_chi_out_2_0 @[Round.scala 247:22]
    io_round_out_3_0 <= chi.io_chi_out_3_0 @[Round.scala 253:22]
    io_round_out_4_0 <= chi.io_chi_out_4_0 @[Round.scala 259:22]
    io_round_out_0_1 <= chi.io_chi_out_0_1 @[Round.scala 236:22]
    io_round_out_1_1 <= chi.io_chi_out_1_1 @[Round.scala 242:22]
    io_round_out_2_1 <= chi.io_chi_out_2_1 @[Round.scala 248:22]
    io_round_out_3_1 <= chi.io_chi_out_3_1 @[Round.scala 254:22]
    io_round_out_4_1 <= chi.io_chi_out_4_1 @[Round.scala 260:22]
    io_round_out_0_2 <= chi.io_chi_out_0_2 @[Round.scala 237:22]
    io_round_out_1_2 <= chi.io_chi_out_1_2 @[Round.scala 243:22]
    io_round_out_2_2 <= chi.io_chi_out_2_2 @[Round.scala 249:22]
    io_round_out_3_2 <= chi.io_chi_out_3_2 @[Round.scala 255:22]
    io_round_out_4_2 <= chi.io_chi_out_4_2 @[Round.scala 261:22]
    io_round_out_0_3 <= chi.io_chi_out_0_3 @[Round.scala 238:22]
    io_round_out_1_3 <= chi.io_chi_out_1_3 @[Round.scala 244:22]
    io_round_out_2_3 <= chi.io_chi_out_2_3 @[Round.scala 250:22]
    io_round_out_3_3 <= chi.io_chi_out_3_3 @[Round.scala 256:22]
    io_round_out_4_3 <= chi.io_chi_out_4_3 @[Round.scala 262:22]
    io_round_out_0_4 <= chi.io_chi_out_0_4 @[Round.scala 239:22]
    io_round_out_1_4 <= chi.io_chi_out_1_4 @[Round.scala 245:22]
    io_round_out_2_4 <= chi.io_chi_out_2_4 @[Round.scala 251:22]
    io_round_out_3_4 <= chi.io_chi_out_3_4 @[Round.scala 257:22]
    io_round_out_4_4 <= chi.io_chi_out_4_4 @[Round.scala 263:22]
    io_theta_out_0_0 <= theta.io_theta_out_0_0 @[Round.scala 268:20]
    io_theta_out_1_0 <= theta.io_theta_out_1_0 @[Round.scala 269:20]
    io_theta_out_2_0 <= theta.io_theta_out_2_0 @[Round.scala 270:20]
    io_theta_out_3_0 <= theta.io_theta_out_3_0 @[Round.scala 271:20]
    io_theta_out_4_0 <= theta.io_theta_out_4_0 @[Round.scala 272:20]
    io_theta_out_0_1 <= theta.io_theta_out_0_1 @[Round.scala 273:20]
    io_theta_out_1_1 <= theta.io_theta_out_1_1 @[Round.scala 274:20]
    io_theta_out_2_1 <= theta.io_theta_out_2_1 @[Round.scala 275:20]
    io_theta_out_3_1 <= theta.io_theta_out_3_1 @[Round.scala 276:20]
    io_theta_out_4_1 <= theta.io_theta_out_4_1 @[Round.scala 277:20]
    io_theta_out_0_2 <= theta.io_theta_out_0_2 @[Round.scala 278:20]
    io_theta_out_1_2 <= theta.io_theta_out_1_2 @[Round.scala 279:20]
    io_theta_out_2_2 <= theta.io_theta_out_2_2 @[Round.scala 280:20]
    io_theta_out_3_2 <= theta.io_theta_out_3_2 @[Round.scala 281:20]
    io_theta_out_4_2 <= theta.io_theta_out_4_2 @[Round.scala 282:20]
    io_theta_out_0_3 <= theta.io_theta_out_0_3 @[Round.scala 283:20]
    io_theta_out_1_3 <= theta.io_theta_out_1_3 @[Round.scala 284:20]
    io_theta_out_2_3 <= theta.io_theta_out_2_3 @[Round.scala 285:20]
    io_theta_out_3_3 <= theta.io_theta_out_3_3 @[Round.scala 286:20]
    io_theta_out_4_3 <= theta.io_theta_out_4_3 @[Round.scala 287:20]
    io_theta_out_0_4 <= theta.io_theta_out_0_4 @[Round.scala 288:20]
    io_theta_out_1_4 <= theta.io_theta_out_1_4 @[Round.scala 289:20]
    io_theta_out_2_4 <= theta.io_theta_out_2_4 @[Round.scala 290:20]
    io_theta_out_3_4 <= theta.io_theta_out_3_4 @[Round.scala 291:20]
    io_theta_out_4_4 <= theta.io_theta_out_4_4 @[Round.scala 292:20]
    io_rhoPi_out_0_0 <= rhoPi.io_rhoPi_out_0_0 @[Round.scala 293:20]
    io_rhoPi_out_1_0 <= rhoPi.io_rhoPi_out_1_0 @[Round.scala 294:20]
    io_rhoPi_out_2_0 <= rhoPi.io_rhoPi_out_2_0 @[Round.scala 295:20]
    io_rhoPi_out_3_0 <= rhoPi.io_rhoPi_out_3_0 @[Round.scala 296:20]
    io_rhoPi_out_4_0 <= rhoPi.io_rhoPi_out_4_0 @[Round.scala 297:20]
    io_rhoPi_out_0_1 <= rhoPi.io_rhoPi_out_0_1 @[Round.scala 298:20]
    io_rhoPi_out_1_1 <= rhoPi.io_rhoPi_out_1_1 @[Round.scala 299:20]
    io_rhoPi_out_2_1 <= rhoPi.io_rhoPi_out_2_1 @[Round.scala 300:20]
    io_rhoPi_out_3_1 <= rhoPi.io_rhoPi_out_3_1 @[Round.scala 301:20]
    io_rhoPi_out_4_1 <= rhoPi.io_rhoPi_out_4_1 @[Round.scala 302:20]
    io_rhoPi_out_0_2 <= rhoPi.io_rhoPi_out_0_2 @[Round.scala 303:20]
    io_rhoPi_out_1_2 <= rhoPi.io_rhoPi_out_1_2 @[Round.scala 304:20]
    io_rhoPi_out_2_2 <= rhoPi.io_rhoPi_out_2_2 @[Round.scala 305:20]
    io_rhoPi_out_3_2 <= rhoPi.io_rhoPi_out_3_2 @[Round.scala 306:20]
    io_rhoPi_out_4_2 <= rhoPi.io_rhoPi_out_4_2 @[Round.scala 307:20]
    io_rhoPi_out_0_3 <= rhoPi.io_rhoPi_out_0_3 @[Round.scala 308:20]
    io_rhoPi_out_1_3 <= rhoPi.io_rhoPi_out_1_3 @[Round.scala 309:20]
    io_rhoPi_out_2_3 <= rhoPi.io_rhoPi_out_2_3 @[Round.scala 310:20]
    io_rhoPi_out_3_3 <= rhoPi.io_rhoPi_out_3_3 @[Round.scala 311:20]
    io_rhoPi_out_4_3 <= rhoPi.io_rhoPi_out_4_3 @[Round.scala 312:20]
    io_rhoPi_out_0_4 <= rhoPi.io_rhoPi_out_0_4 @[Round.scala 313:20]
    io_rhoPi_out_1_4 <= rhoPi.io_rhoPi_out_1_4 @[Round.scala 314:20]
    io_rhoPi_out_2_4 <= rhoPi.io_rhoPi_out_2_4 @[Round.scala 315:20]
    io_rhoPi_out_3_4 <= rhoPi.io_rhoPi_out_3_4 @[Round.scala 316:20]
    io_rhoPi_out_4_4 <= rhoPi.io_rhoPi_out_4_4 @[Round.scala 317:20]
    io_chi_out_0_0 <= chi.io_chi_out_0_0 @[Round.scala 318:18]
    io_chi_out_1_0 <= chi.io_chi_out_1_0 @[Round.scala 319:18]
    io_chi_out_2_0 <= chi.io_chi_out_2_0 @[Round.scala 320:18]
    io_chi_out_3_0 <= chi.io_chi_out_3_0 @[Round.scala 321:18]
    io_chi_out_4_0 <= chi.io_chi_out_4_0 @[Round.scala 322:18]
    io_chi_out_0_1 <= chi.io_chi_out_0_1 @[Round.scala 323:18]
    io_chi_out_1_1 <= chi.io_chi_out_1_1 @[Round.scala 324:18]
    io_chi_out_2_1 <= chi.io_chi_out_2_1 @[Round.scala 325:18]
    io_chi_out_3_1 <= chi.io_chi_out_3_1 @[Round.scala 326:18]
    io_chi_out_4_1 <= chi.io_chi_out_4_1 @[Round.scala 327:18]
    io_chi_out_0_2 <= chi.io_chi_out_0_2 @[Round.scala 328:18]
    io_chi_out_1_2 <= chi.io_chi_out_1_2 @[Round.scala 329:18]
    io_chi_out_2_2 <= chi.io_chi_out_2_2 @[Round.scala 330:18]
    io_chi_out_3_2 <= chi.io_chi_out_3_2 @[Round.scala 331:18]
    io_chi_out_4_2 <= chi.io_chi_out_4_2 @[Round.scala 332:18]
    io_chi_out_0_3 <= chi.io_chi_out_0_3 @[Round.scala 333:18]
    io_chi_out_1_3 <= chi.io_chi_out_1_3 @[Round.scala 334:18]
    io_chi_out_2_3 <= chi.io_chi_out_2_3 @[Round.scala 335:18]
    io_chi_out_3_3 <= chi.io_chi_out_3_3 @[Round.scala 336:18]
    io_chi_out_4_3 <= chi.io_chi_out_4_3 @[Round.scala 337:18]
    io_chi_out_0_4 <= chi.io_chi_out_0_4 @[Round.scala 338:18]
    io_chi_out_1_4 <= chi.io_chi_out_1_4 @[Round.scala 339:18]
    io_chi_out_2_4 <= chi.io_chi_out_2_4 @[Round.scala 340:18]
    io_chi_out_3_4 <= chi.io_chi_out_3_4 @[Round.scala 341:18]
    io_chi_out_4_4 <= chi.io_chi_out_4_4 @[Round.scala 342:18]
    io_iota_out <= iota.io_iota_out @[Round.scala 343:15]
    theta.clock <= clock
    theta.reset <= reset
    theta.io_theta_in_0_0 <= io_round_in_0_0 @[Round.scala 143:27]
    theta.io_theta_in_1_0 <= io_round_in_1_0 @[Round.scala 149:27]
    theta.io_theta_in_2_0 <= io_round_in_2_0 @[Round.scala 155:27]
    theta.io_theta_in_3_0 <= io_round_in_3_0 @[Round.scala 161:27]
    theta.io_theta_in_4_0 <= io_round_in_4_0 @[Round.scala 167:27]
    theta.io_theta_in_0_1 <= io_round_in_0_1 @[Round.scala 144:27]
    theta.io_theta_in_1_1 <= io_round_in_1_1 @[Round.scala 150:27]
    theta.io_theta_in_2_1 <= io_round_in_2_1 @[Round.scala 156:27]
    theta.io_theta_in_3_1 <= io_round_in_3_1 @[Round.scala 162:27]
    theta.io_theta_in_4_1 <= io_round_in_4_1 @[Round.scala 168:27]
    theta.io_theta_in_0_2 <= io_round_in_0_2 @[Round.scala 145:27]
    theta.io_theta_in_1_2 <= io_round_in_1_2 @[Round.scala 151:27]
    theta.io_theta_in_2_2 <= io_round_in_2_2 @[Round.scala 157:27]
    theta.io_theta_in_3_2 <= io_round_in_3_2 @[Round.scala 163:27]
    theta.io_theta_in_4_2 <= io_round_in_4_2 @[Round.scala 169:27]
    theta.io_theta_in_0_3 <= io_round_in_0_3 @[Round.scala 146:27]
    theta.io_theta_in_1_3 <= io_round_in_1_3 @[Round.scala 152:27]
    theta.io_theta_in_2_3 <= io_round_in_2_3 @[Round.scala 158:27]
    theta.io_theta_in_3_3 <= io_round_in_3_3 @[Round.scala 164:27]
    theta.io_theta_in_4_3 <= io_round_in_4_3 @[Round.scala 170:27]
    theta.io_theta_in_0_4 <= io_round_in_0_4 @[Round.scala 147:27]
    theta.io_theta_in_1_4 <= io_round_in_1_4 @[Round.scala 153:27]
    theta.io_theta_in_2_4 <= io_round_in_2_4 @[Round.scala 159:27]
    theta.io_theta_in_3_4 <= io_round_in_3_4 @[Round.scala 165:27]
    theta.io_theta_in_4_4 <= io_round_in_4_4 @[Round.scala 171:27]
    rhoPi.clock <= clock
    rhoPi.reset <= reset
    rhoPi.io_rhoPi_in_0_0 <= theta.io_theta_out_0_0 @[Round.scala 173:27]
    rhoPi.io_rhoPi_in_1_0 <= theta.io_theta_out_1_0 @[Round.scala 179:27]
    rhoPi.io_rhoPi_in_2_0 <= theta.io_theta_out_2_0 @[Round.scala 185:27]
    rhoPi.io_rhoPi_in_3_0 <= theta.io_theta_out_3_0 @[Round.scala 191:27]
    rhoPi.io_rhoPi_in_4_0 <= theta.io_theta_out_4_0 @[Round.scala 197:27]
    rhoPi.io_rhoPi_in_0_1 <= theta.io_theta_out_0_1 @[Round.scala 174:27]
    rhoPi.io_rhoPi_in_1_1 <= theta.io_theta_out_1_1 @[Round.scala 180:27]
    rhoPi.io_rhoPi_in_2_1 <= theta.io_theta_out_2_1 @[Round.scala 186:27]
    rhoPi.io_rhoPi_in_3_1 <= theta.io_theta_out_3_1 @[Round.scala 192:27]
    rhoPi.io_rhoPi_in_4_1 <= theta.io_theta_out_4_1 @[Round.scala 198:27]
    rhoPi.io_rhoPi_in_0_2 <= theta.io_theta_out_0_2 @[Round.scala 175:27]
    rhoPi.io_rhoPi_in_1_2 <= theta.io_theta_out_1_2 @[Round.scala 181:27]
    rhoPi.io_rhoPi_in_2_2 <= theta.io_theta_out_2_2 @[Round.scala 187:27]
    rhoPi.io_rhoPi_in_3_2 <= theta.io_theta_out_3_2 @[Round.scala 193:27]
    rhoPi.io_rhoPi_in_4_2 <= theta.io_theta_out_4_2 @[Round.scala 199:27]
    rhoPi.io_rhoPi_in_0_3 <= theta.io_theta_out_0_3 @[Round.scala 176:27]
    rhoPi.io_rhoPi_in_1_3 <= theta.io_theta_out_1_3 @[Round.scala 182:27]
    rhoPi.io_rhoPi_in_2_3 <= theta.io_theta_out_2_3 @[Round.scala 188:27]
    rhoPi.io_rhoPi_in_3_3 <= theta.io_theta_out_3_3 @[Round.scala 194:27]
    rhoPi.io_rhoPi_in_4_3 <= theta.io_theta_out_4_3 @[Round.scala 200:27]
    rhoPi.io_rhoPi_in_0_4 <= theta.io_theta_out_0_4 @[Round.scala 177:27]
    rhoPi.io_rhoPi_in_1_4 <= theta.io_theta_out_1_4 @[Round.scala 183:27]
    rhoPi.io_rhoPi_in_2_4 <= theta.io_theta_out_2_4 @[Round.scala 189:27]
    rhoPi.io_rhoPi_in_3_4 <= theta.io_theta_out_3_4 @[Round.scala 195:27]
    rhoPi.io_rhoPi_in_4_4 <= theta.io_theta_out_4_4 @[Round.scala 201:27]
    chi.clock <= clock
    chi.reset <= reset
    chi.io_chi_in_0_0 <= rhoPi.io_rhoPi_out_0_0 @[Round.scala 203:23]
    chi.io_chi_in_1_0 <= rhoPi.io_rhoPi_out_1_0 @[Round.scala 209:23]
    chi.io_chi_in_2_0 <= rhoPi.io_rhoPi_out_2_0 @[Round.scala 215:23]
    chi.io_chi_in_3_0 <= rhoPi.io_rhoPi_out_3_0 @[Round.scala 221:23]
    chi.io_chi_in_4_0 <= rhoPi.io_rhoPi_out_4_0 @[Round.scala 227:23]
    chi.io_chi_in_0_1 <= rhoPi.io_rhoPi_out_0_1 @[Round.scala 204:23]
    chi.io_chi_in_1_1 <= rhoPi.io_rhoPi_out_1_1 @[Round.scala 210:23]
    chi.io_chi_in_2_1 <= rhoPi.io_rhoPi_out_2_1 @[Round.scala 216:23]
    chi.io_chi_in_3_1 <= rhoPi.io_rhoPi_out_3_1 @[Round.scala 222:23]
    chi.io_chi_in_4_1 <= rhoPi.io_rhoPi_out_4_1 @[Round.scala 228:23]
    chi.io_chi_in_0_2 <= rhoPi.io_rhoPi_out_0_2 @[Round.scala 205:23]
    chi.io_chi_in_1_2 <= rhoPi.io_rhoPi_out_1_2 @[Round.scala 211:23]
    chi.io_chi_in_2_2 <= rhoPi.io_rhoPi_out_2_2 @[Round.scala 217:23]
    chi.io_chi_in_3_2 <= rhoPi.io_rhoPi_out_3_2 @[Round.scala 223:23]
    chi.io_chi_in_4_2 <= rhoPi.io_rhoPi_out_4_2 @[Round.scala 229:23]
    chi.io_chi_in_0_3 <= rhoPi.io_rhoPi_out_0_3 @[Round.scala 206:23]
    chi.io_chi_in_1_3 <= rhoPi.io_rhoPi_out_1_3 @[Round.scala 212:23]
    chi.io_chi_in_2_3 <= rhoPi.io_rhoPi_out_2_3 @[Round.scala 218:23]
    chi.io_chi_in_3_3 <= rhoPi.io_rhoPi_out_3_3 @[Round.scala 224:23]
    chi.io_chi_in_4_3 <= rhoPi.io_rhoPi_out_4_3 @[Round.scala 230:23]
    chi.io_chi_in_0_4 <= rhoPi.io_rhoPi_out_0_4 @[Round.scala 207:23]
    chi.io_chi_in_1_4 <= rhoPi.io_rhoPi_out_1_4 @[Round.scala 213:23]
    chi.io_chi_in_2_4 <= rhoPi.io_rhoPi_out_2_4 @[Round.scala 219:23]
    chi.io_chi_in_3_4 <= rhoPi.io_rhoPi_out_3_4 @[Round.scala 225:23]
    chi.io_chi_in_4_4 <= rhoPi.io_rhoPi_out_4_4 @[Round.scala 231:23]
    iota.clock <= clock
    iota.reset <= reset
    iota.io_iota_in <= chi.io_chi_out_0_0 @[Round.scala 233:24]
    iota.io_iota_round <= io_counter @[Round.scala 142:24]