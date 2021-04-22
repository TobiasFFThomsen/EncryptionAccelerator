circuit Theta :
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

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[Theta.scala 124:25]
    node _T_1 = xor(_T, io_theta_in_0_2) @[Theta.scala 124:41]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[Theta.scala 124:57]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[Theta.scala 124:73]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[Theta.scala 125:25]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[Theta.scala 125:41]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[Theta.scala 125:57]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[Theta.scala 125:73]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[Theta.scala 126:25]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[Theta.scala 126:41]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[Theta.scala 126:57]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[Theta.scala 126:73]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[Theta.scala 127:25]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[Theta.scala 127:41]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[Theta.scala 127:57]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[Theta.scala 127:73]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[Theta.scala 128:25]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[Theta.scala 128:41]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[Theta.scala 128:57]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[Theta.scala 128:73]
    node c_4 = _T_19 @[Theta.scala 109:17 Theta.scala 128:7]
    node _T_25 = shl(c_4, 1) @[Theta.scala 171:25]
    node rotation_0_lhs = bits(_T_25, 63, 0) @[Theta.scala 143:28 Theta.scala 171:18]
    node c_1 = _T_7 @[Theta.scala 106:17 Theta.scala 125:7]
    node _T_26 = shr(c_1, 63) @[Theta.scala 172:25]
    node rotation_0_rhs = pad(_T_26, 64) @[Theta.scala 144:28 Theta.scala 172:18]
    node _T_20 = or(rotation_0_lhs, rotation_0_rhs) @[Theta.scala 165:39]
    node c_0 = _T_3 @[Theta.scala 105:17 Theta.scala 124:7]
    node _T_27 = shl(c_0, 1) @[Theta.scala 174:25]
    node rotation_1_lhs = bits(_T_27, 63, 0) @[Theta.scala 146:28 Theta.scala 174:18]
    node c_2 = _T_11 @[Theta.scala 107:17 Theta.scala 126:7]
    node _T_28 = shr(c_2, 63) @[Theta.scala 175:25]
    node rotation_1_rhs = pad(_T_28, 64) @[Theta.scala 147:28 Theta.scala 175:18]
    node _T_21 = or(rotation_1_lhs, rotation_1_rhs) @[Theta.scala 166:39]
    node _T_29 = shl(c_1, 1) @[Theta.scala 177:25]
    node rotation_2_lhs = bits(_T_29, 63, 0) @[Theta.scala 149:28 Theta.scala 177:18]
    node c_3 = _T_15 @[Theta.scala 108:17 Theta.scala 127:7]
    node _T_30 = shr(c_3, 63) @[Theta.scala 178:25]
    node rotation_2_rhs = pad(_T_30, 64) @[Theta.scala 150:28 Theta.scala 178:18]
    node _T_22 = or(rotation_2_lhs, rotation_2_rhs) @[Theta.scala 167:39]
    node _T_31 = shl(c_2, 1) @[Theta.scala 180:25]
    node rotation_3_lhs = bits(_T_31, 63, 0) @[Theta.scala 152:28 Theta.scala 180:18]
    node _T_32 = shr(c_4, 63) @[Theta.scala 181:25]
    node rotation_3_rhs = pad(_T_32, 64) @[Theta.scala 153:28 Theta.scala 181:18]
    node _T_23 = or(rotation_3_lhs, rotation_3_rhs) @[Theta.scala 168:39]
    node _T_33 = shl(c_3, 1) @[Theta.scala 183:25]
    node rotation_4_lhs = bits(_T_33, 63, 0) @[Theta.scala 155:28 Theta.scala 183:18]
    node _T_34 = shr(c_0, 63) @[Theta.scala 184:25]
    node rotation_4_rhs = pad(_T_34, 64) @[Theta.scala 156:28 Theta.scala 184:18]
    node _T_24 = or(rotation_4_lhs, rotation_4_rhs) @[Theta.scala 169:39]
    node rotation_result_0 = _T_20 @[Theta.scala 163:31 Theta.scala 165:21]
    node _T_35 = xor(rotation_0_lhs, rotation_result_0) @[Theta.scala 187:25]
    node rotation_result_1 = _T_21 @[Theta.scala 159:31 Theta.scala 166:21]
    node _T_36 = xor(rotation_1_lhs, rotation_result_1) @[Theta.scala 188:25]
    node rotation_result_2 = _T_22 @[Theta.scala 160:31 Theta.scala 167:21]
    node _T_37 = xor(rotation_2_lhs, rotation_result_2) @[Theta.scala 189:25]
    node rotation_result_3 = _T_23 @[Theta.scala 161:31 Theta.scala 168:21]
    node _T_38 = xor(rotation_3_lhs, rotation_result_3) @[Theta.scala 190:25]
    node rotation_result_4 = _T_24 @[Theta.scala 162:31 Theta.scala 169:21]
    node _T_39 = xor(rotation_4_lhs, rotation_result_4) @[Theta.scala 191:25]
    node d_0 = _T_35 @[Theta.scala 111:17 Theta.scala 187:7]
    node _T_40 = xor(io_theta_in_0_0, d_0) @[Theta.scala 194:38]
    node _T_41 = xor(io_theta_in_0_0, d_0) @[Theta.scala 195:38]
    node _T_42 = xor(io_theta_in_0_0, d_0) @[Theta.scala 196:38]
    node _T_43 = xor(io_theta_in_0_0, d_0) @[Theta.scala 197:38]
    node _T_44 = xor(io_theta_in_0_0, d_0) @[Theta.scala 198:38]
    node d_1 = _T_36 @[Theta.scala 112:17 Theta.scala 188:7]
    node _T_45 = xor(io_theta_in_1_0, d_1) @[Theta.scala 200:38]
    node _T_46 = xor(io_theta_in_1_1, d_1) @[Theta.scala 201:38]
    node _T_47 = xor(io_theta_in_1_2, d_1) @[Theta.scala 202:38]
    node _T_48 = xor(io_theta_in_1_3, d_1) @[Theta.scala 203:38]
    node _T_49 = xor(io_theta_in_1_4, d_1) @[Theta.scala 204:38]
    node d_2 = _T_37 @[Theta.scala 113:17 Theta.scala 189:7]
    node _T_50 = xor(io_theta_in_2_0, d_2) @[Theta.scala 206:38]
    node _T_51 = xor(io_theta_in_2_1, d_2) @[Theta.scala 207:38]
    node _T_52 = xor(io_theta_in_2_2, d_2) @[Theta.scala 208:38]
    node _T_53 = xor(io_theta_in_2_3, d_2) @[Theta.scala 209:38]
    node _T_54 = xor(io_theta_in_2_4, d_2) @[Theta.scala 210:38]
    node d_3 = _T_38 @[Theta.scala 114:17 Theta.scala 190:7]
    node _T_55 = xor(io_theta_in_3_0, d_3) @[Theta.scala 212:38]
    node _T_56 = xor(io_theta_in_3_1, d_3) @[Theta.scala 213:38]
    node _T_57 = xor(io_theta_in_3_2, d_3) @[Theta.scala 214:38]
    node _T_58 = xor(io_theta_in_3_3, d_3) @[Theta.scala 215:38]
    node _T_59 = xor(io_theta_in_3_4, d_3) @[Theta.scala 216:38]
    node d_4 = _T_39 @[Theta.scala 115:17 Theta.scala 191:7]
    node _T_60 = xor(io_theta_in_4_0, d_4) @[Theta.scala 218:38]
    node _T_61 = xor(io_theta_in_4_1, d_4) @[Theta.scala 219:38]
    node _T_62 = xor(io_theta_in_4_2, d_4) @[Theta.scala 220:38]
    node _T_63 = xor(io_theta_in_4_3, d_4) @[Theta.scala 221:38]
    node _T_64 = xor(io_theta_in_4_4, d_4) @[Theta.scala 222:38]
    io_theta_out_0_0 <= _T_40 @[Theta.scala 194:20]
    io_theta_out_1_0 <= _T_45 @[Theta.scala 200:20]
    io_theta_out_2_0 <= _T_50 @[Theta.scala 206:20]
    io_theta_out_3_0 <= _T_55 @[Theta.scala 212:20]
    io_theta_out_4_0 <= _T_60 @[Theta.scala 218:20]
    io_theta_out_0_1 <= _T_41 @[Theta.scala 195:20]
    io_theta_out_1_1 <= _T_46 @[Theta.scala 201:20]
    io_theta_out_2_1 <= _T_51 @[Theta.scala 207:20]
    io_theta_out_3_1 <= _T_56 @[Theta.scala 213:20]
    io_theta_out_4_1 <= _T_61 @[Theta.scala 219:20]
    io_theta_out_0_2 <= _T_42 @[Theta.scala 196:20]
    io_theta_out_1_2 <= _T_47 @[Theta.scala 202:20]
    io_theta_out_2_2 <= _T_52 @[Theta.scala 208:20]
    io_theta_out_3_2 <= _T_57 @[Theta.scala 214:20]
    io_theta_out_4_2 <= _T_62 @[Theta.scala 220:20]
    io_theta_out_0_3 <= _T_43 @[Theta.scala 197:20]
    io_theta_out_1_3 <= _T_48 @[Theta.scala 203:20]
    io_theta_out_2_3 <= _T_53 @[Theta.scala 209:20]
    io_theta_out_3_3 <= _T_58 @[Theta.scala 215:20]
    io_theta_out_4_3 <= _T_63 @[Theta.scala 221:20]
    io_theta_out_0_4 <= _T_44 @[Theta.scala 198:20]
    io_theta_out_1_4 <= _T_49 @[Theta.scala 204:20]
    io_theta_out_2_4 <= _T_54 @[Theta.scala 210:20]
    io_theta_out_3_4 <= _T_59 @[Theta.scala 216:20]
    io_theta_out_4_4 <= _T_64 @[Theta.scala 222:20]