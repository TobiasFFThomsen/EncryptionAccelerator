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