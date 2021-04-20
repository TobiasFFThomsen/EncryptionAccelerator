circuit THETA :
  module THETA :
    input clock : Clock
    input reset : UInt<1>
    input io_theta_in_0_0 : UInt<64>
    input io_theta_in_0_1 : UInt<64>
    input io_theta_in_0_2 : UInt<64>
    input io_theta_in_0_3 : UInt<64>
    input io_theta_in_0_4 : UInt<64>
    input io_theta_in_1_0 : UInt<64>
    input io_theta_in_1_1 : UInt<64>
    input io_theta_in_1_2 : UInt<64>
    input io_theta_in_1_3 : UInt<64>
    input io_theta_in_1_4 : UInt<64>
    input io_theta_in_2_0 : UInt<64>
    input io_theta_in_2_1 : UInt<64>
    input io_theta_in_2_2 : UInt<64>
    input io_theta_in_2_3 : UInt<64>
    input io_theta_in_2_4 : UInt<64>
    input io_theta_in_3_0 : UInt<64>
    input io_theta_in_3_1 : UInt<64>
    input io_theta_in_3_2 : UInt<64>
    input io_theta_in_3_3 : UInt<64>
    input io_theta_in_3_4 : UInt<64>
    input io_theta_in_4_0 : UInt<64>
    input io_theta_in_4_1 : UInt<64>
    input io_theta_in_4_2 : UInt<64>
    input io_theta_in_4_3 : UInt<64>
    input io_theta_in_4_4 : UInt<64>
    output io_theta_out_0_0 : UInt<64>
    output io_theta_out_0_1 : UInt<64>
    output io_theta_out_0_2 : UInt<64>
    output io_theta_out_0_3 : UInt<64>
    output io_theta_out_0_4 : UInt<64>
    output io_theta_out_1_0 : UInt<64>
    output io_theta_out_1_1 : UInt<64>
    output io_theta_out_1_2 : UInt<64>
    output io_theta_out_1_3 : UInt<64>
    output io_theta_out_1_4 : UInt<64>
    output io_theta_out_2_0 : UInt<64>
    output io_theta_out_2_1 : UInt<64>
    output io_theta_out_2_2 : UInt<64>
    output io_theta_out_2_3 : UInt<64>
    output io_theta_out_2_4 : UInt<64>
    output io_theta_out_3_0 : UInt<64>
    output io_theta_out_3_1 : UInt<64>
    output io_theta_out_3_2 : UInt<64>
    output io_theta_out_3_3 : UInt<64>
    output io_theta_out_3_4 : UInt<64>
    output io_theta_out_4_0 : UInt<64>
    output io_theta_out_4_1 : UInt<64>
    output io_theta_out_4_2 : UInt<64>
    output io_theta_out_4_3 : UInt<64>
    output io_theta_out_4_4 : UInt<64>

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[THETA.scala 20:30]
    node _T_1 = xor(_T, io_theta_in_0_2) @[THETA.scala 20:48]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[THETA.scala 20:66]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[THETA.scala 20:84]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[THETA.scala 20:30]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[THETA.scala 20:48]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[THETA.scala 20:66]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[THETA.scala 20:84]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[THETA.scala 20:30]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[THETA.scala 20:48]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[THETA.scala 20:66]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[THETA.scala 20:84]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[THETA.scala 20:30]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[THETA.scala 20:48]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[THETA.scala 20:66]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[THETA.scala 20:84]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[THETA.scala 20:30]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[THETA.scala 20:48]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[THETA.scala 20:66]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[THETA.scala 20:84]
    node c_1 = _T_7 @[THETA.scala 16:15 THETA.scala 20:10]
    node _T_20 = shl(c_1, 1) @[THETA.scala 25:43]
    node _T_21 = shr(c_1, 63) @[THETA.scala 25:72]
    node _T_22 = or(_T_20, _T_21) @[THETA.scala 25:47]
    node c_4 = _T_19 @[THETA.scala 16:15 THETA.scala 20:10]
    node rotation_0 = bits(_T_22, 53, 0) @[THETA.scala 23:22 THETA.scala 25:17]
    node _T_23 = xor(c_4, rotation_0) @[THETA.scala 26:36]
    node c_2 = _T_11 @[THETA.scala 16:15 THETA.scala 20:10]
    node _T_24 = shl(c_2, 1) @[THETA.scala 25:43]
    node _T_25 = shr(c_2, 63) @[THETA.scala 25:72]
    node _T_26 = or(_T_24, _T_25) @[THETA.scala 25:47]
    node c_0 = _T_3 @[THETA.scala 16:15 THETA.scala 20:10]
    node rotation_1 = bits(_T_26, 53, 0) @[THETA.scala 23:22 THETA.scala 25:17]
    node _T_27 = xor(c_0, rotation_1) @[THETA.scala 26:36]
    node c_3 = _T_15 @[THETA.scala 16:15 THETA.scala 20:10]
    node _T_28 = shl(c_3, 1) @[THETA.scala 25:43]
    node _T_29 = shr(c_3, 63) @[THETA.scala 25:72]
    node _T_30 = or(_T_28, _T_29) @[THETA.scala 25:47]
    node rotation_2 = bits(_T_30, 53, 0) @[THETA.scala 23:22 THETA.scala 25:17]
    node _T_31 = xor(c_1, rotation_2) @[THETA.scala 26:36]
    node _T_32 = shl(c_4, 1) @[THETA.scala 25:43]
    node _T_33 = shr(c_4, 63) @[THETA.scala 25:72]
    node _T_34 = or(_T_32, _T_33) @[THETA.scala 25:47]
    node rotation_3 = bits(_T_34, 53, 0) @[THETA.scala 23:22 THETA.scala 25:17]
    node _T_35 = xor(c_2, rotation_3) @[THETA.scala 26:36]
    node _T_36 = shl(c_0, 1) @[THETA.scala 25:43]
    node _T_37 = shr(c_0, 63) @[THETA.scala 25:72]
    node _T_38 = or(_T_36, _T_37) @[THETA.scala 25:47]
    node rotation_4 = bits(_T_38, 53, 0) @[THETA.scala 23:22 THETA.scala 25:17]
    node _T_39 = xor(c_3, rotation_4) @[THETA.scala 26:36]
    node d_0 = _T_23 @[THETA.scala 17:15 THETA.scala 26:10]
    node _T_40 = xor(io_theta_in_0_0, d_0) @[THETA.scala 31:48]
    node _T_41 = xor(io_theta_in_0_1, d_0) @[THETA.scala 31:48]
    node _T_42 = xor(io_theta_in_0_2, d_0) @[THETA.scala 31:48]
    node _T_43 = xor(io_theta_in_0_3, d_0) @[THETA.scala 31:48]
    node _T_44 = xor(io_theta_in_0_4, d_0) @[THETA.scala 31:48]
    node d_1 = _T_27 @[THETA.scala 17:15 THETA.scala 26:10]
    node _T_45 = xor(io_theta_in_1_0, d_1) @[THETA.scala 31:48]
    node _T_46 = xor(io_theta_in_1_1, d_1) @[THETA.scala 31:48]
    node _T_47 = xor(io_theta_in_1_2, d_1) @[THETA.scala 31:48]
    node _T_48 = xor(io_theta_in_1_3, d_1) @[THETA.scala 31:48]
    node _T_49 = xor(io_theta_in_1_4, d_1) @[THETA.scala 31:48]
    node d_2 = _T_31 @[THETA.scala 17:15 THETA.scala 26:10]
    node _T_50 = xor(io_theta_in_2_0, d_2) @[THETA.scala 31:48]
    node _T_51 = xor(io_theta_in_2_1, d_2) @[THETA.scala 31:48]
    node _T_52 = xor(io_theta_in_2_2, d_2) @[THETA.scala 31:48]
    node _T_53 = xor(io_theta_in_2_3, d_2) @[THETA.scala 31:48]
    node _T_54 = xor(io_theta_in_2_4, d_2) @[THETA.scala 31:48]
    node d_3 = _T_35 @[THETA.scala 17:15 THETA.scala 26:10]
    node _T_55 = xor(io_theta_in_3_0, d_3) @[THETA.scala 31:48]
    node _T_56 = xor(io_theta_in_3_1, d_3) @[THETA.scala 31:48]
    node _T_57 = xor(io_theta_in_3_2, d_3) @[THETA.scala 31:48]
    node _T_58 = xor(io_theta_in_3_3, d_3) @[THETA.scala 31:48]
    node _T_59 = xor(io_theta_in_3_4, d_3) @[THETA.scala 31:48]
    node d_4 = _T_39 @[THETA.scala 17:15 THETA.scala 26:10]
    node _T_60 = xor(io_theta_in_4_0, d_4) @[THETA.scala 31:48]
    node _T_61 = xor(io_theta_in_4_1, d_4) @[THETA.scala 31:48]
    node _T_62 = xor(io_theta_in_4_2, d_4) @[THETA.scala 31:48]
    node _T_63 = xor(io_theta_in_4_3, d_4) @[THETA.scala 31:48]
    node _T_64 = xor(io_theta_in_4_4, d_4) @[THETA.scala 31:48]
    io_theta_out_0_0 <= _T_40 @[THETA.scala 31:28]
    io_theta_out_0_1 <= _T_41 @[THETA.scala 31:28]
    io_theta_out_0_2 <= _T_42 @[THETA.scala 31:28]
    io_theta_out_0_3 <= _T_43 @[THETA.scala 31:28]
    io_theta_out_0_4 <= _T_44 @[THETA.scala 31:28]
    io_theta_out_1_0 <= _T_45 @[THETA.scala 31:28]
    io_theta_out_1_1 <= _T_46 @[THETA.scala 31:28]
    io_theta_out_1_2 <= _T_47 @[THETA.scala 31:28]
    io_theta_out_1_3 <= _T_48 @[THETA.scala 31:28]
    io_theta_out_1_4 <= _T_49 @[THETA.scala 31:28]
    io_theta_out_2_0 <= _T_50 @[THETA.scala 31:28]
    io_theta_out_2_1 <= _T_51 @[THETA.scala 31:28]
    io_theta_out_2_2 <= _T_52 @[THETA.scala 31:28]
    io_theta_out_2_3 <= _T_53 @[THETA.scala 31:28]
    io_theta_out_2_4 <= _T_54 @[THETA.scala 31:28]
    io_theta_out_3_0 <= _T_55 @[THETA.scala 31:28]
    io_theta_out_3_1 <= _T_56 @[THETA.scala 31:28]
    io_theta_out_3_2 <= _T_57 @[THETA.scala 31:28]
    io_theta_out_3_3 <= _T_58 @[THETA.scala 31:28]
    io_theta_out_3_4 <= _T_59 @[THETA.scala 31:28]
    io_theta_out_4_0 <= _T_60 @[THETA.scala 31:28]
    io_theta_out_4_1 <= _T_61 @[THETA.scala 31:28]
    io_theta_out_4_2 <= _T_62 @[THETA.scala 31:28]
    io_theta_out_4_3 <= _T_63 @[THETA.scala 31:28]
    io_theta_out_4_4 <= _T_64 @[THETA.scala 31:28]