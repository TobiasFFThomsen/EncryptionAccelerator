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
    output io_theta_c_0 : UInt<64>
    output io_theta_c_1 : UInt<64>
    output io_theta_c_2 : UInt<64>
    output io_theta_c_3 : UInt<64>
    output io_theta_c_4 : UInt<64>
    output io_theta_d_0 : UInt<64>
    output io_theta_d_1 : UInt<64>
    output io_theta_d_2 : UInt<64>
    output io_theta_d_3 : UInt<64>
    output io_theta_d_4 : UInt<64>
    output io_first_c_index_0 : UInt<64>
    output io_first_c_index_1 : UInt<64>
    output io_first_c_index_2 : UInt<64>
    output io_first_c_index_3 : UInt<64>
    output io_first_c_index_4 : UInt<64>
    output io_last_c_index_0 : UInt<64>
    output io_last_c_index_1 : UInt<64>
    output io_last_c_index_2 : UInt<64>
    output io_last_c_index_3 : UInt<64>
    output io_last_c_index_4 : UInt<64>

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[Theta.scala 136:25]
    node _T_1 = xor(_T, io_theta_in_0_2) @[Theta.scala 136:41]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[Theta.scala 136:57]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[Theta.scala 136:73]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[Theta.scala 137:25]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[Theta.scala 137:41]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[Theta.scala 137:57]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[Theta.scala 137:73]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[Theta.scala 138:25]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[Theta.scala 138:41]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[Theta.scala 138:57]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[Theta.scala 138:73]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[Theta.scala 139:25]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[Theta.scala 139:41]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[Theta.scala 139:57]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[Theta.scala 139:73]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[Theta.scala 140:25]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[Theta.scala 140:41]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[Theta.scala 140:57]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[Theta.scala 140:73]
    node c_1 = _T_7 @[Theta.scala 118:17 Theta.scala 137:7]
    node _T_20 = shl(c_1, 1) @[Theta.scala 169:25]
    node _T_21 = shr(c_1, 63) @[Theta.scala 170:25]
    node c_2 = _T_11 @[Theta.scala 119:17 Theta.scala 138:7]
    node _T_22 = shl(c_2, 1) @[Theta.scala 172:25]
    node _T_23 = shr(c_2, 63) @[Theta.scala 173:25]
    node c_3 = _T_15 @[Theta.scala 120:17 Theta.scala 139:7]
    node _T_24 = shl(c_3, 1) @[Theta.scala 175:25]
    node _T_25 = shr(c_3, 63) @[Theta.scala 176:25]
    node c_4 = _T_19 @[Theta.scala 121:17 Theta.scala 140:7]
    node _T_26 = shl(c_4, 1) @[Theta.scala 178:25]
    node _T_27 = shr(c_4, 63) @[Theta.scala 179:25]
    node c_0 = _T_3 @[Theta.scala 117:17 Theta.scala 136:7]
    node _T_28 = shl(c_0, 1) @[Theta.scala 181:25]
    node _T_29 = shr(c_0, 63) @[Theta.scala 182:25]
    node rotation_0_lhs = bits(_T_20, 63, 0) @[Theta.scala 152:28 Theta.scala 169:18]
    node rotation_0_rhs = pad(_T_21, 64) @[Theta.scala 153:28 Theta.scala 170:18]
    node _T_30 = or(rotation_0_lhs, rotation_0_rhs) @[Theta.scala 184:39]
    node rotation_1_lhs = bits(_T_22, 63, 0) @[Theta.scala 154:28 Theta.scala 172:18]
    node rotation_1_rhs = pad(_T_23, 64) @[Theta.scala 155:28 Theta.scala 173:18]
    node _T_31 = or(rotation_1_lhs, rotation_1_rhs) @[Theta.scala 185:39]
    node rotation_2_lhs = bits(_T_24, 63, 0) @[Theta.scala 156:28 Theta.scala 175:18]
    node rotation_2_rhs = pad(_T_25, 64) @[Theta.scala 157:28 Theta.scala 176:18]
    node _T_32 = or(rotation_2_lhs, rotation_2_rhs) @[Theta.scala 186:39]
    node rotation_3_lhs = bits(_T_26, 63, 0) @[Theta.scala 158:28 Theta.scala 178:18]
    node rotation_3_rhs = pad(_T_27, 64) @[Theta.scala 159:28 Theta.scala 179:18]
    node _T_33 = or(rotation_3_lhs, rotation_3_rhs) @[Theta.scala 187:39]
    node rotation_4_lhs = bits(_T_28, 63, 0) @[Theta.scala 160:28 Theta.scala 181:18]
    node rotation_4_rhs = pad(_T_29, 64) @[Theta.scala 161:28 Theta.scala 182:18]
    node _T_34 = or(rotation_4_lhs, rotation_4_rhs) @[Theta.scala 188:39]
    node rotation_result_0 = _T_30 @[Theta.scala 166:31 Theta.scala 184:21]
    node _T_35 = xor(c_4, rotation_result_0) @[Theta.scala 190:14]
    node rotation_result_1 = _T_31 @[Theta.scala 162:31 Theta.scala 185:21]
    node _T_36 = xor(c_0, rotation_result_1) @[Theta.scala 191:14]
    node rotation_result_2 = _T_32 @[Theta.scala 163:31 Theta.scala 186:21]
    node _T_37 = xor(c_1, rotation_result_2) @[Theta.scala 192:14]
    node rotation_result_3 = _T_33 @[Theta.scala 164:31 Theta.scala 187:21]
    node _T_38 = xor(c_2, rotation_result_3) @[Theta.scala 193:14]
    node rotation_result_4 = _T_34 @[Theta.scala 165:31 Theta.scala 188:21]
    node _T_39 = xor(c_3, rotation_result_4) @[Theta.scala 194:14]
    node d_0 = _T_35 @[Theta.scala 123:17 Theta.scala 190:7]
    node _T_40 = xor(io_theta_in_0_0, d_0) @[Theta.scala 197:38]
    node _T_41 = xor(io_theta_in_0_0, d_0) @[Theta.scala 198:38]
    node _T_42 = xor(io_theta_in_0_0, d_0) @[Theta.scala 199:38]
    node _T_43 = xor(io_theta_in_0_0, d_0) @[Theta.scala 200:38]
    node _T_44 = xor(io_theta_in_0_0, d_0) @[Theta.scala 201:38]
    node d_1 = _T_36 @[Theta.scala 124:17 Theta.scala 191:7]
    node _T_45 = xor(io_theta_in_1_0, d_1) @[Theta.scala 203:38]
    node _T_46 = xor(io_theta_in_1_1, d_1) @[Theta.scala 204:38]
    node _T_47 = xor(io_theta_in_1_2, d_1) @[Theta.scala 205:38]
    node _T_48 = xor(io_theta_in_1_3, d_1) @[Theta.scala 206:38]
    node _T_49 = xor(io_theta_in_1_4, d_1) @[Theta.scala 207:38]
    node d_2 = _T_37 @[Theta.scala 125:17 Theta.scala 192:7]
    node _T_50 = xor(io_theta_in_2_0, d_2) @[Theta.scala 209:38]
    node _T_51 = xor(io_theta_in_2_1, d_2) @[Theta.scala 210:38]
    node _T_52 = xor(io_theta_in_2_2, d_2) @[Theta.scala 211:38]
    node _T_53 = xor(io_theta_in_2_3, d_2) @[Theta.scala 212:38]
    node _T_54 = xor(io_theta_in_2_4, d_2) @[Theta.scala 213:38]
    node d_3 = _T_38 @[Theta.scala 126:17 Theta.scala 193:7]
    node _T_55 = xor(io_theta_in_3_0, d_3) @[Theta.scala 215:38]
    node _T_56 = xor(io_theta_in_3_1, d_3) @[Theta.scala 216:38]
    node _T_57 = xor(io_theta_in_3_2, d_3) @[Theta.scala 217:38]
    node _T_58 = xor(io_theta_in_3_3, d_3) @[Theta.scala 218:38]
    node _T_59 = xor(io_theta_in_3_4, d_3) @[Theta.scala 219:38]
    node d_4 = _T_39 @[Theta.scala 127:17 Theta.scala 194:7]
    node _T_60 = xor(io_theta_in_4_0, d_4) @[Theta.scala 221:38]
    node _T_61 = xor(io_theta_in_4_1, d_4) @[Theta.scala 222:38]
    node _T_62 = xor(io_theta_in_4_2, d_4) @[Theta.scala 223:38]
    node _T_63 = xor(io_theta_in_4_3, d_4) @[Theta.scala 224:38]
    node _T_64 = xor(io_theta_in_4_4, d_4) @[Theta.scala 225:38]
    io_theta_out_0_0 <= _T_40 @[Theta.scala 197:20]
    io_theta_out_1_0 <= _T_45 @[Theta.scala 203:20]
    io_theta_out_2_0 <= _T_50 @[Theta.scala 209:20]
    io_theta_out_3_0 <= _T_55 @[Theta.scala 215:20]
    io_theta_out_4_0 <= _T_60 @[Theta.scala 221:20]
    io_theta_out_0_1 <= _T_41 @[Theta.scala 198:20]
    io_theta_out_1_1 <= _T_46 @[Theta.scala 204:20]
    io_theta_out_2_1 <= _T_51 @[Theta.scala 210:20]
    io_theta_out_3_1 <= _T_56 @[Theta.scala 216:20]
    io_theta_out_4_1 <= _T_61 @[Theta.scala 222:20]
    io_theta_out_0_2 <= _T_42 @[Theta.scala 199:20]
    io_theta_out_1_2 <= _T_47 @[Theta.scala 205:20]
    io_theta_out_2_2 <= _T_52 @[Theta.scala 211:20]
    io_theta_out_3_2 <= _T_57 @[Theta.scala 217:20]
    io_theta_out_4_2 <= _T_62 @[Theta.scala 223:20]
    io_theta_out_0_3 <= _T_43 @[Theta.scala 200:20]
    io_theta_out_1_3 <= _T_48 @[Theta.scala 206:20]
    io_theta_out_2_3 <= _T_53 @[Theta.scala 212:20]
    io_theta_out_3_3 <= _T_58 @[Theta.scala 218:20]
    io_theta_out_4_3 <= _T_63 @[Theta.scala 224:20]
    io_theta_out_0_4 <= _T_44 @[Theta.scala 201:20]
    io_theta_out_1_4 <= _T_49 @[Theta.scala 207:20]
    io_theta_out_2_4 <= _T_54 @[Theta.scala 213:20]
    io_theta_out_3_4 <= _T_59 @[Theta.scala 219:20]
    io_theta_out_4_4 <= _T_64 @[Theta.scala 225:20]
    io_theta_c_0 <= c_0 @[Theta.scala 228:16]
    io_theta_c_1 <= c_1 @[Theta.scala 229:16]
    io_theta_c_2 <= c_2 @[Theta.scala 230:16]
    io_theta_c_3 <= c_3 @[Theta.scala 231:16]
    io_theta_c_4 <= c_4 @[Theta.scala 232:16]
    io_theta_d_0 <= d_0 @[Theta.scala 235:16]
    io_theta_d_1 <= d_1 @[Theta.scala 236:16]
    io_theta_d_2 <= d_2 @[Theta.scala 237:16]
    io_theta_d_3 <= d_3 @[Theta.scala 238:16]
    io_theta_d_4 <= d_4 @[Theta.scala 239:16]
    io_first_c_index_0 <= UInt<3>("h4") @[Theta.scala 143:25]
    io_first_c_index_1 <= UInt<1>("h0") @[Theta.scala 143:25]
    io_first_c_index_2 <= UInt<1>("h1") @[Theta.scala 143:25]
    io_first_c_index_3 <= UInt<2>("h2") @[Theta.scala 143:25]
    io_first_c_index_4 <= UInt<2>("h3") @[Theta.scala 143:25]
    io_last_c_index_0 <= UInt<1>("h1") @[Theta.scala 144:25]
    io_last_c_index_1 <= UInt<2>("h2") @[Theta.scala 144:25]
    io_last_c_index_2 <= UInt<2>("h3") @[Theta.scala 144:25]
    io_last_c_index_3 <= UInt<3>("h4") @[Theta.scala 144:25]
    io_last_c_index_4 <= UInt<1>("h0") @[Theta.scala 144:25]