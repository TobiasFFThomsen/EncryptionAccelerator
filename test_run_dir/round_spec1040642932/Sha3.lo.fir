circuit Sha3 :
  module Theta :
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
    output io_c_out_0 : UInt<64>
    output io_c_out_1 : UInt<64>
    output io_c_out_2 : UInt<64>
    output io_c_out_3 : UInt<64>
    output io_c_out_4 : UInt<64>
    output io_d_out_0 : UInt<64>
    output io_d_out_1 : UInt<64>
    output io_d_out_2 : UInt<64>
    output io_d_out_3 : UInt<64>
    output io_d_out_4 : UInt<64>

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[Theta.scala 38:30]
    node _T_1 = xor(_T, io_theta_in_0_2) @[Theta.scala 38:48]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[Theta.scala 38:66]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[Theta.scala 38:84]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[Theta.scala 38:30]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[Theta.scala 38:48]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[Theta.scala 38:66]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[Theta.scala 38:84]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[Theta.scala 38:30]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[Theta.scala 38:48]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[Theta.scala 38:66]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[Theta.scala 38:84]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[Theta.scala 38:30]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[Theta.scala 38:48]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[Theta.scala 38:66]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[Theta.scala 38:84]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[Theta.scala 38:30]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[Theta.scala 38:48]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[Theta.scala 38:66]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[Theta.scala 38:84]
    node c_1 = _T_7 @[Theta.scala 34:15 Theta.scala 38:10]
    node _T_20 = shl(c_1, 1) @[Theta.scala 44:44]
    node _T_21 = shr(c_1, 63) @[Theta.scala 45:44]
    node rotation1_0 = bits(_T_20, 63, 0) @[Theta.scala 15:23 Theta.scala 44:25]
    node rotation2_0 = pad(_T_21, 64) @[Theta.scala 16:23 Theta.scala 45:25]
    node _T_22 = or(rotation1_0, rotation2_0) @[Theta.scala 46:41]
    node c_4 = _T_19 @[Theta.scala 34:15 Theta.scala 38:10]
    node rotation_result_0 = _T_22 @[Theta.scala 17:29 Theta.scala 46:25]
    node _T_23 = xor(c_4, rotation_result_0) @[Theta.scala 47:30]
    node c_2 = _T_11 @[Theta.scala 34:15 Theta.scala 38:10]
    node _T_24 = shl(c_2, 1) @[Theta.scala 44:44]
    node _T_25 = shr(c_2, 63) @[Theta.scala 45:44]
    node rotation1_1 = bits(_T_24, 63, 0) @[Theta.scala 15:23 Theta.scala 44:25]
    node rotation2_1 = pad(_T_25, 64) @[Theta.scala 16:23 Theta.scala 45:25]
    node _T_26 = or(rotation1_1, rotation2_1) @[Theta.scala 46:41]
    node c_0 = _T_3 @[Theta.scala 34:15 Theta.scala 38:10]
    node rotation_result_1 = _T_26 @[Theta.scala 17:29 Theta.scala 46:25]
    node _T_27 = xor(c_0, rotation_result_1) @[Theta.scala 47:30]
    node c_3 = _T_15 @[Theta.scala 34:15 Theta.scala 38:10]
    node _T_28 = shl(c_3, 1) @[Theta.scala 44:44]
    node _T_29 = shr(c_3, 63) @[Theta.scala 45:44]
    node rotation1_2 = bits(_T_28, 63, 0) @[Theta.scala 15:23 Theta.scala 44:25]
    node rotation2_2 = pad(_T_29, 64) @[Theta.scala 16:23 Theta.scala 45:25]
    node _T_30 = or(rotation1_2, rotation2_2) @[Theta.scala 46:41]
    node rotation_result_2 = _T_30 @[Theta.scala 17:29 Theta.scala 46:25]
    node _T_31 = xor(c_1, rotation_result_2) @[Theta.scala 47:30]
    node _T_32 = shl(c_4, 1) @[Theta.scala 44:44]
    node _T_33 = shr(c_4, 63) @[Theta.scala 45:44]
    node rotation1_3 = bits(_T_32, 63, 0) @[Theta.scala 15:23 Theta.scala 44:25]
    node rotation2_3 = pad(_T_33, 64) @[Theta.scala 16:23 Theta.scala 45:25]
    node _T_34 = or(rotation1_3, rotation2_3) @[Theta.scala 46:41]
    node rotation_result_3 = _T_34 @[Theta.scala 17:29 Theta.scala 46:25]
    node _T_35 = xor(c_2, rotation_result_3) @[Theta.scala 47:30]
    node _T_36 = shl(c_0, 1) @[Theta.scala 44:44]
    node _T_37 = shr(c_0, 63) @[Theta.scala 45:44]
    node rotation1_4 = bits(_T_36, 63, 0) @[Theta.scala 15:23 Theta.scala 44:25]
    node rotation2_4 = pad(_T_37, 64) @[Theta.scala 16:23 Theta.scala 45:25]
    node _T_38 = or(rotation1_4, rotation2_4) @[Theta.scala 46:41]
    node rotation_result_4 = _T_38 @[Theta.scala 17:29 Theta.scala 46:25]
    node _T_39 = xor(c_3, rotation_result_4) @[Theta.scala 47:30]
    node d_0 = _T_23 @[Theta.scala 35:15 Theta.scala 47:11]
    node _T_40 = xor(io_theta_in_0_0, d_0) @[Theta.scala 53:38]
    node _T_41 = xor(io_theta_in_0_1, d_0) @[Theta.scala 53:38]
    node _T_42 = xor(io_theta_in_0_2, d_0) @[Theta.scala 53:38]
    node _T_43 = xor(io_theta_in_0_3, d_0) @[Theta.scala 53:38]
    node _T_44 = xor(io_theta_in_0_4, d_0) @[Theta.scala 53:38]
    node d_1 = _T_27 @[Theta.scala 35:15 Theta.scala 47:11]
    node _T_45 = xor(io_theta_in_1_0, d_1) @[Theta.scala 53:38]
    node _T_46 = xor(io_theta_in_1_1, d_1) @[Theta.scala 53:38]
    node _T_47 = xor(io_theta_in_1_2, d_1) @[Theta.scala 53:38]
    node _T_48 = xor(io_theta_in_1_3, d_1) @[Theta.scala 53:38]
    node _T_49 = xor(io_theta_in_1_4, d_1) @[Theta.scala 53:38]
    node d_2 = _T_31 @[Theta.scala 35:15 Theta.scala 47:11]
    node _T_50 = xor(io_theta_in_2_0, d_2) @[Theta.scala 53:38]
    node _T_51 = xor(io_theta_in_2_1, d_2) @[Theta.scala 53:38]
    node _T_52 = xor(io_theta_in_2_2, d_2) @[Theta.scala 53:38]
    node _T_53 = xor(io_theta_in_2_3, d_2) @[Theta.scala 53:38]
    node _T_54 = xor(io_theta_in_2_4, d_2) @[Theta.scala 53:38]
    node d_3 = _T_35 @[Theta.scala 35:15 Theta.scala 47:11]
    node _T_55 = xor(io_theta_in_3_0, d_3) @[Theta.scala 53:38]
    node _T_56 = xor(io_theta_in_3_1, d_3) @[Theta.scala 53:38]
    node _T_57 = xor(io_theta_in_3_2, d_3) @[Theta.scala 53:38]
    node _T_58 = xor(io_theta_in_3_3, d_3) @[Theta.scala 53:38]
    node _T_59 = xor(io_theta_in_3_4, d_3) @[Theta.scala 53:38]
    node d_4 = _T_39 @[Theta.scala 35:15 Theta.scala 47:11]
    node _T_60 = xor(io_theta_in_4_0, d_4) @[Theta.scala 53:38]
    node _T_61 = xor(io_theta_in_4_1, d_4) @[Theta.scala 53:38]
    node _T_62 = xor(io_theta_in_4_2, d_4) @[Theta.scala 53:38]
    node _T_63 = xor(io_theta_in_4_3, d_4) @[Theta.scala 53:38]
    node _T_64 = xor(io_theta_in_4_4, d_4) @[Theta.scala 53:38]
    node st_0_0 = _T_40 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_0_1 = _T_41 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_0_2 = _T_42 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_0_3 = _T_43 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_0_4 = _T_44 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_1_0 = _T_45 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_1_1 = _T_46 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_1_2 = _T_47 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_1_3 = _T_48 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_1_4 = _T_49 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_2_0 = _T_50 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_2_1 = _T_51 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_2_2 = _T_52 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_2_3 = _T_53 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_2_4 = _T_54 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_3_0 = _T_55 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_3_1 = _T_56 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_3_2 = _T_57 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_3_3 = _T_58 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_3_4 = _T_59 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_4_0 = _T_60 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_4_1 = _T_61 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_4_2 = _T_62 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_4_3 = _T_63 @[Theta.scala 12:17 Theta.scala 53:18]
    node st_4_4 = _T_64 @[Theta.scala 12:17 Theta.scala 53:18]
    io_theta_out_0_0 <= st_0_0 @[Theta.scala 55:16]
    io_theta_out_0_1 <= st_0_1 @[Theta.scala 55:16]
    io_theta_out_0_2 <= st_0_2 @[Theta.scala 55:16]
    io_theta_out_0_3 <= st_0_3 @[Theta.scala 55:16]
    io_theta_out_0_4 <= st_0_4 @[Theta.scala 55:16]
    io_theta_out_1_0 <= st_1_0 @[Theta.scala 55:16]
    io_theta_out_1_1 <= st_1_1 @[Theta.scala 55:16]
    io_theta_out_1_2 <= st_1_2 @[Theta.scala 55:16]
    io_theta_out_1_3 <= st_1_3 @[Theta.scala 55:16]
    io_theta_out_1_4 <= st_1_4 @[Theta.scala 55:16]
    io_theta_out_2_0 <= st_2_0 @[Theta.scala 55:16]
    io_theta_out_2_1 <= st_2_1 @[Theta.scala 55:16]
    io_theta_out_2_2 <= st_2_2 @[Theta.scala 55:16]
    io_theta_out_2_3 <= st_2_3 @[Theta.scala 55:16]
    io_theta_out_2_4 <= st_2_4 @[Theta.scala 55:16]
    io_theta_out_3_0 <= st_3_0 @[Theta.scala 55:16]
    io_theta_out_3_1 <= st_3_1 @[Theta.scala 55:16]
    io_theta_out_3_2 <= st_3_2 @[Theta.scala 55:16]
    io_theta_out_3_3 <= st_3_3 @[Theta.scala 55:16]
    io_theta_out_3_4 <= st_3_4 @[Theta.scala 55:16]
    io_theta_out_4_0 <= st_4_0 @[Theta.scala 55:16]
    io_theta_out_4_1 <= st_4_1 @[Theta.scala 55:16]
    io_theta_out_4_2 <= st_4_2 @[Theta.scala 55:16]
    io_theta_out_4_3 <= st_4_3 @[Theta.scala 55:16]
    io_theta_out_4_4 <= st_4_4 @[Theta.scala 55:16]
    io_c_out_0 <= c_0 @[Theta.scala 57:12]
    io_c_out_1 <= c_1 @[Theta.scala 57:12]
    io_c_out_2 <= c_2 @[Theta.scala 57:12]
    io_c_out_3 <= c_3 @[Theta.scala 57:12]
    io_c_out_4 <= c_4 @[Theta.scala 57:12]
    io_d_out_0 <= d_0 @[Theta.scala 56:12]
    io_d_out_1 <= d_1 @[Theta.scala 56:12]
    io_d_out_2 <= d_2 @[Theta.scala 56:12]
    io_d_out_3 <= d_3 @[Theta.scala 56:12]
    io_d_out_4 <= d_4 @[Theta.scala 56:12]

  module RhoPi :
    input clock : Clock
    input reset : UInt<1>
    input io_rhoPi_in_0_0 : UInt<64>
    input io_rhoPi_in_0_1 : UInt<64>
    input io_rhoPi_in_0_2 : UInt<64>
    input io_rhoPi_in_0_3 : UInt<64>
    input io_rhoPi_in_0_4 : UInt<64>
    input io_rhoPi_in_1_0 : UInt<64>
    input io_rhoPi_in_1_1 : UInt<64>
    input io_rhoPi_in_1_2 : UInt<64>
    input io_rhoPi_in_1_3 : UInt<64>
    input io_rhoPi_in_1_4 : UInt<64>
    input io_rhoPi_in_2_0 : UInt<64>
    input io_rhoPi_in_2_1 : UInt<64>
    input io_rhoPi_in_2_2 : UInt<64>
    input io_rhoPi_in_2_3 : UInt<64>
    input io_rhoPi_in_2_4 : UInt<64>
    input io_rhoPi_in_3_0 : UInt<64>
    input io_rhoPi_in_3_1 : UInt<64>
    input io_rhoPi_in_3_2 : UInt<64>
    input io_rhoPi_in_3_3 : UInt<64>
    input io_rhoPi_in_3_4 : UInt<64>
    input io_rhoPi_in_4_0 : UInt<64>
    input io_rhoPi_in_4_1 : UInt<64>
    input io_rhoPi_in_4_2 : UInt<64>
    input io_rhoPi_in_4_3 : UInt<64>
    input io_rhoPi_in_4_4 : UInt<64>
    output io_rhoPi_out_0_0 : UInt<64>
    output io_rhoPi_out_0_1 : UInt<64>
    output io_rhoPi_out_0_2 : UInt<64>
    output io_rhoPi_out_0_3 : UInt<64>
    output io_rhoPi_out_0_4 : UInt<64>
    output io_rhoPi_out_1_0 : UInt<64>
    output io_rhoPi_out_1_1 : UInt<64>
    output io_rhoPi_out_1_2 : UInt<64>
    output io_rhoPi_out_1_3 : UInt<64>
    output io_rhoPi_out_1_4 : UInt<64>
    output io_rhoPi_out_2_0 : UInt<64>
    output io_rhoPi_out_2_1 : UInt<64>
    output io_rhoPi_out_2_2 : UInt<64>
    output io_rhoPi_out_2_3 : UInt<64>
    output io_rhoPi_out_2_4 : UInt<64>
    output io_rhoPi_out_3_0 : UInt<64>
    output io_rhoPi_out_3_1 : UInt<64>
    output io_rhoPi_out_3_2 : UInt<64>
    output io_rhoPi_out_3_3 : UInt<64>
    output io_rhoPi_out_3_4 : UInt<64>
    output io_rhoPi_out_4_0 : UInt<64>
    output io_rhoPi_out_4_1 : UInt<64>
    output io_rhoPi_out_4_2 : UInt<64>
    output io_rhoPi_out_4_3 : UInt<64>
    output io_rhoPi_out_4_4 : UInt<64>

    node r_0_0 = pad(UInt<1>("h0"), 19) @[RhoPi.scala 9:17 RhoPi.scala 10:11]
    node _T = dshl(io_rhoPi_in_0_0, r_0_0) @[RhoPi.scala 46:49]
    node _T_1 = sub(UInt<7>("h40"), r_0_0) @[RhoPi.scala 47:57]
    node _T_2 = tail(_T_1, 1) @[RhoPi.scala 47:57]
    node _T_3 = dshr(io_rhoPi_in_0_0, _T_2) @[RhoPi.scala 47:49]
    node rotationWire_1_0_0 = bits(_T, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_0_0 = _T_3 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_4 = or(rotationWire_1_0_0, rotationWire_2_0_0) @[RhoPi.scala 48:73]
    node r_0_1 = pad(UInt<6>("h24"), 19) @[RhoPi.scala 9:17 RhoPi.scala 11:11]
    node _T_5 = dshl(io_rhoPi_in_0_1, r_0_1) @[RhoPi.scala 46:49]
    node _T_6 = sub(UInt<7>("h40"), r_0_1) @[RhoPi.scala 47:57]
    node _T_7 = tail(_T_6, 1) @[RhoPi.scala 47:57]
    node _T_8 = dshr(io_rhoPi_in_0_1, _T_7) @[RhoPi.scala 47:49]
    node rotationWire_1_0_1 = bits(_T_5, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_0_1 = _T_8 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_9 = or(rotationWire_1_0_1, rotationWire_2_0_1) @[RhoPi.scala 48:73]
    node r_0_2 = pad(UInt<2>("h3"), 19) @[RhoPi.scala 9:17 RhoPi.scala 12:11]
    node _T_10 = dshl(io_rhoPi_in_0_2, r_0_2) @[RhoPi.scala 46:49]
    node _T_11 = sub(UInt<7>("h40"), r_0_2) @[RhoPi.scala 47:57]
    node _T_12 = tail(_T_11, 1) @[RhoPi.scala 47:57]
    node _T_13 = dshr(io_rhoPi_in_0_2, _T_12) @[RhoPi.scala 47:49]
    node rotationWire_1_0_2 = bits(_T_10, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_0_2 = _T_13 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_14 = or(rotationWire_1_0_2, rotationWire_2_0_2) @[RhoPi.scala 48:73]
    node r_0_3 = pad(UInt<6>("h29"), 19) @[RhoPi.scala 9:17 RhoPi.scala 13:11]
    node _T_15 = dshl(io_rhoPi_in_0_3, r_0_3) @[RhoPi.scala 46:49]
    node _T_16 = sub(UInt<7>("h40"), r_0_3) @[RhoPi.scala 47:57]
    node _T_17 = tail(_T_16, 1) @[RhoPi.scala 47:57]
    node _T_18 = dshr(io_rhoPi_in_0_3, _T_17) @[RhoPi.scala 47:49]
    node rotationWire_1_0_3 = bits(_T_15, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_0_3 = _T_18 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_19 = or(rotationWire_1_0_3, rotationWire_2_0_3) @[RhoPi.scala 48:73]
    node r_0_4 = pad(UInt<5>("h12"), 19) @[RhoPi.scala 9:17 RhoPi.scala 14:11]
    node _T_20 = dshl(io_rhoPi_in_0_4, r_0_4) @[RhoPi.scala 46:49]
    node _T_21 = sub(UInt<7>("h40"), r_0_4) @[RhoPi.scala 47:57]
    node _T_22 = tail(_T_21, 1) @[RhoPi.scala 47:57]
    node _T_23 = dshr(io_rhoPi_in_0_4, _T_22) @[RhoPi.scala 47:49]
    node rotationWire_1_0_4 = bits(_T_20, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_0_4 = _T_23 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_24 = or(rotationWire_1_0_4, rotationWire_2_0_4) @[RhoPi.scala 48:73]
    node r_1_0 = pad(UInt<1>("h1"), 19) @[RhoPi.scala 9:17 RhoPi.scala 16:11]
    node _T_25 = dshl(io_rhoPi_in_1_0, r_1_0) @[RhoPi.scala 46:49]
    node _T_26 = sub(UInt<7>("h40"), r_1_0) @[RhoPi.scala 47:57]
    node _T_27 = tail(_T_26, 1) @[RhoPi.scala 47:57]
    node _T_28 = dshr(io_rhoPi_in_1_0, _T_27) @[RhoPi.scala 47:49]
    node rotationWire_1_1_0 = bits(_T_25, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_1_0 = _T_28 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_29 = or(rotationWire_1_1_0, rotationWire_2_1_0) @[RhoPi.scala 48:73]
    node r_1_1 = pad(UInt<6>("h2c"), 19) @[RhoPi.scala 9:17 RhoPi.scala 17:11]
    node _T_30 = dshl(io_rhoPi_in_1_1, r_1_1) @[RhoPi.scala 46:49]
    node _T_31 = sub(UInt<7>("h40"), r_1_1) @[RhoPi.scala 47:57]
    node _T_32 = tail(_T_31, 1) @[RhoPi.scala 47:57]
    node _T_33 = dshr(io_rhoPi_in_1_1, _T_32) @[RhoPi.scala 47:49]
    node rotationWire_1_1_1 = bits(_T_30, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_1_1 = _T_33 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_34 = or(rotationWire_1_1_1, rotationWire_2_1_1) @[RhoPi.scala 48:73]
    node r_1_2 = pad(UInt<4>("ha"), 19) @[RhoPi.scala 9:17 RhoPi.scala 18:11]
    node _T_35 = dshl(io_rhoPi_in_1_2, r_1_2) @[RhoPi.scala 46:49]
    node _T_36 = sub(UInt<7>("h40"), r_1_2) @[RhoPi.scala 47:57]
    node _T_37 = tail(_T_36, 1) @[RhoPi.scala 47:57]
    node _T_38 = dshr(io_rhoPi_in_1_2, _T_37) @[RhoPi.scala 47:49]
    node rotationWire_1_1_2 = bits(_T_35, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_1_2 = _T_38 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_39 = or(rotationWire_1_1_2, rotationWire_2_1_2) @[RhoPi.scala 48:73]
    node r_1_3 = pad(UInt<6>("h2d"), 19) @[RhoPi.scala 9:17 RhoPi.scala 19:11]
    node _T_40 = dshl(io_rhoPi_in_1_3, r_1_3) @[RhoPi.scala 46:49]
    node _T_41 = sub(UInt<7>("h40"), r_1_3) @[RhoPi.scala 47:57]
    node _T_42 = tail(_T_41, 1) @[RhoPi.scala 47:57]
    node _T_43 = dshr(io_rhoPi_in_1_3, _T_42) @[RhoPi.scala 47:49]
    node rotationWire_1_1_3 = bits(_T_40, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_1_3 = _T_43 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_44 = or(rotationWire_1_1_3, rotationWire_2_1_3) @[RhoPi.scala 48:73]
    node r_1_4 = pad(UInt<2>("h2"), 19) @[RhoPi.scala 9:17 RhoPi.scala 20:11]
    node _T_45 = dshl(io_rhoPi_in_1_4, r_1_4) @[RhoPi.scala 46:49]
    node _T_46 = sub(UInt<7>("h40"), r_1_4) @[RhoPi.scala 47:57]
    node _T_47 = tail(_T_46, 1) @[RhoPi.scala 47:57]
    node _T_48 = dshr(io_rhoPi_in_1_4, _T_47) @[RhoPi.scala 47:49]
    node rotationWire_1_1_4 = bits(_T_45, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_1_4 = _T_48 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_49 = or(rotationWire_1_1_4, rotationWire_2_1_4) @[RhoPi.scala 48:73]
    node r_2_0 = pad(UInt<6>("h3e"), 19) @[RhoPi.scala 9:17 RhoPi.scala 22:11]
    node _T_50 = dshl(io_rhoPi_in_2_0, r_2_0) @[RhoPi.scala 46:49]
    node _T_51 = sub(UInt<7>("h40"), r_2_0) @[RhoPi.scala 47:57]
    node _T_52 = tail(_T_51, 1) @[RhoPi.scala 47:57]
    node _T_53 = dshr(io_rhoPi_in_2_0, _T_52) @[RhoPi.scala 47:49]
    node rotationWire_1_2_0 = bits(_T_50, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_2_0 = _T_53 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_54 = or(rotationWire_1_2_0, rotationWire_2_2_0) @[RhoPi.scala 48:73]
    node r_2_1 = pad(UInt<3>("h6"), 19) @[RhoPi.scala 9:17 RhoPi.scala 23:11]
    node _T_55 = dshl(io_rhoPi_in_2_1, r_2_1) @[RhoPi.scala 46:49]
    node _T_56 = sub(UInt<7>("h40"), r_2_1) @[RhoPi.scala 47:57]
    node _T_57 = tail(_T_56, 1) @[RhoPi.scala 47:57]
    node _T_58 = dshr(io_rhoPi_in_2_1, _T_57) @[RhoPi.scala 47:49]
    node rotationWire_1_2_1 = bits(_T_55, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_2_1 = _T_58 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_59 = or(rotationWire_1_2_1, rotationWire_2_2_1) @[RhoPi.scala 48:73]
    node r_2_2 = pad(UInt<6>("h2b"), 19) @[RhoPi.scala 9:17 RhoPi.scala 24:11]
    node _T_60 = dshl(io_rhoPi_in_2_2, r_2_2) @[RhoPi.scala 46:49]
    node _T_61 = sub(UInt<7>("h40"), r_2_2) @[RhoPi.scala 47:57]
    node _T_62 = tail(_T_61, 1) @[RhoPi.scala 47:57]
    node _T_63 = dshr(io_rhoPi_in_2_2, _T_62) @[RhoPi.scala 47:49]
    node rotationWire_1_2_2 = bits(_T_60, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_2_2 = _T_63 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_64 = or(rotationWire_1_2_2, rotationWire_2_2_2) @[RhoPi.scala 48:73]
    node r_2_3 = pad(UInt<4>("hf"), 19) @[RhoPi.scala 9:17 RhoPi.scala 25:11]
    node _T_65 = dshl(io_rhoPi_in_2_3, r_2_3) @[RhoPi.scala 46:49]
    node _T_66 = sub(UInt<7>("h40"), r_2_3) @[RhoPi.scala 47:57]
    node _T_67 = tail(_T_66, 1) @[RhoPi.scala 47:57]
    node _T_68 = dshr(io_rhoPi_in_2_3, _T_67) @[RhoPi.scala 47:49]
    node rotationWire_1_2_3 = bits(_T_65, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_2_3 = _T_68 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_69 = or(rotationWire_1_2_3, rotationWire_2_2_3) @[RhoPi.scala 48:73]
    node r_2_4 = pad(UInt<6>("h3d"), 19) @[RhoPi.scala 9:17 RhoPi.scala 26:11]
    node _T_70 = dshl(io_rhoPi_in_2_4, r_2_4) @[RhoPi.scala 46:49]
    node _T_71 = sub(UInt<7>("h40"), r_2_4) @[RhoPi.scala 47:57]
    node _T_72 = tail(_T_71, 1) @[RhoPi.scala 47:57]
    node _T_73 = dshr(io_rhoPi_in_2_4, _T_72) @[RhoPi.scala 47:49]
    node rotationWire_1_2_4 = bits(_T_70, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_2_4 = _T_73 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_74 = or(rotationWire_1_2_4, rotationWire_2_2_4) @[RhoPi.scala 48:73]
    node r_3_0 = pad(UInt<5>("h1c"), 19) @[RhoPi.scala 9:17 RhoPi.scala 28:11]
    node _T_75 = dshl(io_rhoPi_in_3_0, r_3_0) @[RhoPi.scala 46:49]
    node _T_76 = sub(UInt<7>("h40"), r_3_0) @[RhoPi.scala 47:57]
    node _T_77 = tail(_T_76, 1) @[RhoPi.scala 47:57]
    node _T_78 = dshr(io_rhoPi_in_3_0, _T_77) @[RhoPi.scala 47:49]
    node rotationWire_1_3_0 = bits(_T_75, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_3_0 = _T_78 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_79 = or(rotationWire_1_3_0, rotationWire_2_3_0) @[RhoPi.scala 48:73]
    node r_3_1 = pad(UInt<6>("h37"), 19) @[RhoPi.scala 9:17 RhoPi.scala 29:11]
    node _T_80 = dshl(io_rhoPi_in_3_1, r_3_1) @[RhoPi.scala 46:49]
    node _T_81 = sub(UInt<7>("h40"), r_3_1) @[RhoPi.scala 47:57]
    node _T_82 = tail(_T_81, 1) @[RhoPi.scala 47:57]
    node _T_83 = dshr(io_rhoPi_in_3_1, _T_82) @[RhoPi.scala 47:49]
    node rotationWire_1_3_1 = bits(_T_80, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_3_1 = _T_83 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_84 = or(rotationWire_1_3_1, rotationWire_2_3_1) @[RhoPi.scala 48:73]
    node r_3_2 = pad(UInt<5>("h19"), 19) @[RhoPi.scala 9:17 RhoPi.scala 30:11]
    node _T_85 = dshl(io_rhoPi_in_3_2, r_3_2) @[RhoPi.scala 46:49]
    node _T_86 = sub(UInt<7>("h40"), r_3_2) @[RhoPi.scala 47:57]
    node _T_87 = tail(_T_86, 1) @[RhoPi.scala 47:57]
    node _T_88 = dshr(io_rhoPi_in_3_2, _T_87) @[RhoPi.scala 47:49]
    node rotationWire_1_3_2 = bits(_T_85, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_3_2 = _T_88 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_89 = or(rotationWire_1_3_2, rotationWire_2_3_2) @[RhoPi.scala 48:73]
    node r_3_3 = pad(UInt<5>("h15"), 19) @[RhoPi.scala 9:17 RhoPi.scala 31:11]
    node _T_90 = dshl(io_rhoPi_in_3_3, r_3_3) @[RhoPi.scala 46:49]
    node _T_91 = sub(UInt<7>("h40"), r_3_3) @[RhoPi.scala 47:57]
    node _T_92 = tail(_T_91, 1) @[RhoPi.scala 47:57]
    node _T_93 = dshr(io_rhoPi_in_3_3, _T_92) @[RhoPi.scala 47:49]
    node rotationWire_1_3_3 = bits(_T_90, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_3_3 = _T_93 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_94 = or(rotationWire_1_3_3, rotationWire_2_3_3) @[RhoPi.scala 48:73]
    node r_3_4 = pad(UInt<6>("h38"), 19) @[RhoPi.scala 9:17 RhoPi.scala 32:11]
    node _T_95 = dshl(io_rhoPi_in_3_4, r_3_4) @[RhoPi.scala 46:49]
    node _T_96 = sub(UInt<7>("h40"), r_3_4) @[RhoPi.scala 47:57]
    node _T_97 = tail(_T_96, 1) @[RhoPi.scala 47:57]
    node _T_98 = dshr(io_rhoPi_in_3_4, _T_97) @[RhoPi.scala 47:49]
    node rotationWire_1_3_4 = bits(_T_95, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_3_4 = _T_98 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_99 = or(rotationWire_1_3_4, rotationWire_2_3_4) @[RhoPi.scala 48:73]
    node r_4_0 = pad(UInt<5>("h1b"), 19) @[RhoPi.scala 9:17 RhoPi.scala 34:11]
    node _T_100 = dshl(io_rhoPi_in_4_0, r_4_0) @[RhoPi.scala 46:49]
    node _T_101 = sub(UInt<7>("h40"), r_4_0) @[RhoPi.scala 47:57]
    node _T_102 = tail(_T_101, 1) @[RhoPi.scala 47:57]
    node _T_103 = dshr(io_rhoPi_in_4_0, _T_102) @[RhoPi.scala 47:49]
    node rotationWire_1_4_0 = bits(_T_100, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_4_0 = _T_103 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_104 = or(rotationWire_1_4_0, rotationWire_2_4_0) @[RhoPi.scala 48:73]
    node r_4_1 = pad(UInt<5>("h14"), 19) @[RhoPi.scala 9:17 RhoPi.scala 35:11]
    node _T_105 = dshl(io_rhoPi_in_4_1, r_4_1) @[RhoPi.scala 46:49]
    node _T_106 = sub(UInt<7>("h40"), r_4_1) @[RhoPi.scala 47:57]
    node _T_107 = tail(_T_106, 1) @[RhoPi.scala 47:57]
    node _T_108 = dshr(io_rhoPi_in_4_1, _T_107) @[RhoPi.scala 47:49]
    node rotationWire_1_4_1 = bits(_T_105, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_4_1 = _T_108 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_109 = or(rotationWire_1_4_1, rotationWire_2_4_1) @[RhoPi.scala 48:73]
    node r_4_2 = pad(UInt<6>("h27"), 19) @[RhoPi.scala 9:17 RhoPi.scala 36:11]
    node _T_110 = dshl(io_rhoPi_in_4_2, r_4_2) @[RhoPi.scala 46:49]
    node _T_111 = sub(UInt<7>("h40"), r_4_2) @[RhoPi.scala 47:57]
    node _T_112 = tail(_T_111, 1) @[RhoPi.scala 47:57]
    node _T_113 = dshr(io_rhoPi_in_4_2, _T_112) @[RhoPi.scala 47:49]
    node rotationWire_1_4_2 = bits(_T_110, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_4_2 = _T_113 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_114 = or(rotationWire_1_4_2, rotationWire_2_4_2) @[RhoPi.scala 48:73]
    node r_4_3 = pad(UInt<4>("h8"), 19) @[RhoPi.scala 9:17 RhoPi.scala 37:11]
    node _T_115 = dshl(io_rhoPi_in_4_3, r_4_3) @[RhoPi.scala 46:49]
    node _T_116 = sub(UInt<7>("h40"), r_4_3) @[RhoPi.scala 47:57]
    node _T_117 = tail(_T_116, 1) @[RhoPi.scala 47:57]
    node _T_118 = dshr(io_rhoPi_in_4_3, _T_117) @[RhoPi.scala 47:49]
    node rotationWire_1_4_3 = bits(_T_115, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_4_3 = _T_118 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_119 = or(rotationWire_1_4_3, rotationWire_2_4_3) @[RhoPi.scala 48:73]
    node r_4_4 = pad(UInt<4>("he"), 19) @[RhoPi.scala 9:17 RhoPi.scala 38:11]
    node _T_120 = dshl(io_rhoPi_in_4_4, r_4_4) @[RhoPi.scala 46:49]
    node _T_121 = sub(UInt<7>("h40"), r_4_4) @[RhoPi.scala 47:57]
    node _T_122 = tail(_T_121, 1) @[RhoPi.scala 47:57]
    node _T_123 = dshr(io_rhoPi_in_4_4, _T_122) @[RhoPi.scala 47:49]
    node rotationWire_1_4_4 = bits(_T_120, 63, 0) @[RhoPi.scala 41:28 RhoPi.scala 46:28]
    node rotationWire_2_4_4 = _T_123 @[RhoPi.scala 42:28 RhoPi.scala 47:28]
    node _T_124 = or(rotationWire_1_4_4, rotationWire_2_4_4) @[RhoPi.scala 48:73]
    io_rhoPi_out_0_0 <= _T_4 @[RhoPi.scala 48:49]
    io_rhoPi_out_0_1 <= _T_79 @[RhoPi.scala 48:49]
    io_rhoPi_out_0_2 <= _T_29 @[RhoPi.scala 48:49]
    io_rhoPi_out_0_3 <= _T_104 @[RhoPi.scala 48:49]
    io_rhoPi_out_0_4 <= _T_54 @[RhoPi.scala 48:49]
    io_rhoPi_out_1_0 <= _T_34 @[RhoPi.scala 48:49]
    io_rhoPi_out_1_1 <= _T_109 @[RhoPi.scala 48:49]
    io_rhoPi_out_1_2 <= _T_59 @[RhoPi.scala 48:49]
    io_rhoPi_out_1_3 <= _T_9 @[RhoPi.scala 48:49]
    io_rhoPi_out_1_4 <= _T_84 @[RhoPi.scala 48:49]
    io_rhoPi_out_2_0 <= _T_64 @[RhoPi.scala 48:49]
    io_rhoPi_out_2_1 <= _T_14 @[RhoPi.scala 48:49]
    io_rhoPi_out_2_2 <= _T_89 @[RhoPi.scala 48:49]
    io_rhoPi_out_2_3 <= _T_39 @[RhoPi.scala 48:49]
    io_rhoPi_out_2_4 <= _T_114 @[RhoPi.scala 48:49]
    io_rhoPi_out_3_0 <= _T_94 @[RhoPi.scala 48:49]
    io_rhoPi_out_3_1 <= _T_44 @[RhoPi.scala 48:49]
    io_rhoPi_out_3_2 <= _T_119 @[RhoPi.scala 48:49]
    io_rhoPi_out_3_3 <= _T_69 @[RhoPi.scala 48:49]
    io_rhoPi_out_3_4 <= _T_19 @[RhoPi.scala 48:49]
    io_rhoPi_out_4_0 <= _T_124 @[RhoPi.scala 48:49]
    io_rhoPi_out_4_1 <= _T_74 @[RhoPi.scala 48:49]
    io_rhoPi_out_4_2 <= _T_24 @[RhoPi.scala 48:49]
    io_rhoPi_out_4_3 <= _T_99 @[RhoPi.scala 48:49]
    io_rhoPi_out_4_4 <= _T_49 @[RhoPi.scala 48:49]

  module Chi :
    input clock : Clock
    input reset : UInt<1>
    input io_chi_in_0_0 : UInt<64>
    input io_chi_in_0_1 : UInt<64>
    input io_chi_in_0_2 : UInt<64>
    input io_chi_in_0_3 : UInt<64>
    input io_chi_in_0_4 : UInt<64>
    input io_chi_in_1_0 : UInt<64>
    input io_chi_in_1_1 : UInt<64>
    input io_chi_in_1_2 : UInt<64>
    input io_chi_in_1_3 : UInt<64>
    input io_chi_in_1_4 : UInt<64>
    input io_chi_in_2_0 : UInt<64>
    input io_chi_in_2_1 : UInt<64>
    input io_chi_in_2_2 : UInt<64>
    input io_chi_in_2_3 : UInt<64>
    input io_chi_in_2_4 : UInt<64>
    input io_chi_in_3_0 : UInt<64>
    input io_chi_in_3_1 : UInt<64>
    input io_chi_in_3_2 : UInt<64>
    input io_chi_in_3_3 : UInt<64>
    input io_chi_in_3_4 : UInt<64>
    input io_chi_in_4_0 : UInt<64>
    input io_chi_in_4_1 : UInt<64>
    input io_chi_in_4_2 : UInt<64>
    input io_chi_in_4_3 : UInt<64>
    input io_chi_in_4_4 : UInt<64>
    output io_chi_out_0_0 : UInt<64>
    output io_chi_out_0_1 : UInt<64>
    output io_chi_out_0_2 : UInt<64>
    output io_chi_out_0_3 : UInt<64>
    output io_chi_out_0_4 : UInt<64>
    output io_chi_out_1_0 : UInt<64>
    output io_chi_out_1_1 : UInt<64>
    output io_chi_out_1_2 : UInt<64>
    output io_chi_out_1_3 : UInt<64>
    output io_chi_out_1_4 : UInt<64>
    output io_chi_out_2_0 : UInt<64>
    output io_chi_out_2_1 : UInt<64>
    output io_chi_out_2_2 : UInt<64>
    output io_chi_out_2_3 : UInt<64>
    output io_chi_out_2_4 : UInt<64>
    output io_chi_out_3_0 : UInt<64>
    output io_chi_out_3_1 : UInt<64>
    output io_chi_out_3_2 : UInt<64>
    output io_chi_out_3_3 : UInt<64>
    output io_chi_out_3_4 : UInt<64>
    output io_chi_out_4_0 : UInt<64>
    output io_chi_out_4_1 : UInt<64>
    output io_chi_out_4_2 : UInt<64>
    output io_chi_out_4_3 : UInt<64>
    output io_chi_out_4_4 : UInt<64>

    node _T = not(io_chi_in_1_0) @[Chi.scala 16:29]
    node chi_not_wire_0_0 = _T @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_1 = and(chi_not_wire_0_0, io_chi_in_2_0) @[Chi.scala 17:45]
    node chi_b_wire_0_0 = io_chi_in_0_0 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_0_0 = _T_1 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_2 = xor(chi_b_wire_0_0, chi_wire_0_0) @[Chi.scala 19:44]
    node _T_3 = not(io_chi_in_1_1) @[Chi.scala 16:29]
    node chi_not_wire_0_1 = _T_3 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_4 = and(chi_not_wire_0_1, io_chi_in_2_1) @[Chi.scala 17:45]
    node chi_b_wire_0_1 = io_chi_in_0_1 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_0_1 = _T_4 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_5 = xor(chi_b_wire_0_1, chi_wire_0_1) @[Chi.scala 19:44]
    node _T_6 = not(io_chi_in_1_2) @[Chi.scala 16:29]
    node chi_not_wire_0_2 = _T_6 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_7 = and(chi_not_wire_0_2, io_chi_in_2_2) @[Chi.scala 17:45]
    node chi_b_wire_0_2 = io_chi_in_0_2 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_0_2 = _T_7 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_8 = xor(chi_b_wire_0_2, chi_wire_0_2) @[Chi.scala 19:44]
    node _T_9 = not(io_chi_in_1_3) @[Chi.scala 16:29]
    node chi_not_wire_0_3 = _T_9 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_10 = and(chi_not_wire_0_3, io_chi_in_2_3) @[Chi.scala 17:45]
    node chi_b_wire_0_3 = io_chi_in_0_3 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_0_3 = _T_10 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_11 = xor(chi_b_wire_0_3, chi_wire_0_3) @[Chi.scala 19:44]
    node _T_12 = not(io_chi_in_1_4) @[Chi.scala 16:29]
    node chi_not_wire_0_4 = _T_12 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_13 = and(chi_not_wire_0_4, io_chi_in_2_4) @[Chi.scala 17:45]
    node chi_b_wire_0_4 = io_chi_in_0_4 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_0_4 = _T_13 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_14 = xor(chi_b_wire_0_4, chi_wire_0_4) @[Chi.scala 19:44]
    node _T_15 = not(io_chi_in_2_0) @[Chi.scala 16:29]
    node chi_not_wire_1_0 = _T_15 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_16 = and(chi_not_wire_1_0, io_chi_in_3_0) @[Chi.scala 17:45]
    node chi_b_wire_1_0 = io_chi_in_1_0 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_1_0 = _T_16 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_17 = xor(chi_b_wire_1_0, chi_wire_1_0) @[Chi.scala 19:44]
    node _T_18 = not(io_chi_in_2_1) @[Chi.scala 16:29]
    node chi_not_wire_1_1 = _T_18 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_19 = and(chi_not_wire_1_1, io_chi_in_3_1) @[Chi.scala 17:45]
    node chi_b_wire_1_1 = io_chi_in_1_1 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_1_1 = _T_19 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_20 = xor(chi_b_wire_1_1, chi_wire_1_1) @[Chi.scala 19:44]
    node _T_21 = not(io_chi_in_2_2) @[Chi.scala 16:29]
    node chi_not_wire_1_2 = _T_21 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_22 = and(chi_not_wire_1_2, io_chi_in_3_2) @[Chi.scala 17:45]
    node chi_b_wire_1_2 = io_chi_in_1_2 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_1_2 = _T_22 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_23 = xor(chi_b_wire_1_2, chi_wire_1_2) @[Chi.scala 19:44]
    node _T_24 = not(io_chi_in_2_3) @[Chi.scala 16:29]
    node chi_not_wire_1_3 = _T_24 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_25 = and(chi_not_wire_1_3, io_chi_in_3_3) @[Chi.scala 17:45]
    node chi_b_wire_1_3 = io_chi_in_1_3 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_1_3 = _T_25 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_26 = xor(chi_b_wire_1_3, chi_wire_1_3) @[Chi.scala 19:44]
    node _T_27 = not(io_chi_in_2_4) @[Chi.scala 16:29]
    node chi_not_wire_1_4 = _T_27 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_28 = and(chi_not_wire_1_4, io_chi_in_3_4) @[Chi.scala 17:45]
    node chi_b_wire_1_4 = io_chi_in_1_4 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_1_4 = _T_28 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_29 = xor(chi_b_wire_1_4, chi_wire_1_4) @[Chi.scala 19:44]
    node _T_30 = not(io_chi_in_3_0) @[Chi.scala 16:29]
    node chi_not_wire_2_0 = _T_30 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_31 = and(chi_not_wire_2_0, io_chi_in_4_0) @[Chi.scala 17:45]
    node chi_b_wire_2_0 = io_chi_in_2_0 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_2_0 = _T_31 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_32 = xor(chi_b_wire_2_0, chi_wire_2_0) @[Chi.scala 19:44]
    node _T_33 = not(io_chi_in_3_1) @[Chi.scala 16:29]
    node chi_not_wire_2_1 = _T_33 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_34 = and(chi_not_wire_2_1, io_chi_in_4_1) @[Chi.scala 17:45]
    node chi_b_wire_2_1 = io_chi_in_2_1 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_2_1 = _T_34 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_35 = xor(chi_b_wire_2_1, chi_wire_2_1) @[Chi.scala 19:44]
    node _T_36 = not(io_chi_in_3_2) @[Chi.scala 16:29]
    node chi_not_wire_2_2 = _T_36 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_37 = and(chi_not_wire_2_2, io_chi_in_4_2) @[Chi.scala 17:45]
    node chi_b_wire_2_2 = io_chi_in_2_2 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_2_2 = _T_37 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_38 = xor(chi_b_wire_2_2, chi_wire_2_2) @[Chi.scala 19:44]
    node _T_39 = not(io_chi_in_3_3) @[Chi.scala 16:29]
    node chi_not_wire_2_3 = _T_39 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_40 = and(chi_not_wire_2_3, io_chi_in_4_3) @[Chi.scala 17:45]
    node chi_b_wire_2_3 = io_chi_in_2_3 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_2_3 = _T_40 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_41 = xor(chi_b_wire_2_3, chi_wire_2_3) @[Chi.scala 19:44]
    node _T_42 = not(io_chi_in_3_4) @[Chi.scala 16:29]
    node chi_not_wire_2_4 = _T_42 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_43 = and(chi_not_wire_2_4, io_chi_in_4_4) @[Chi.scala 17:45]
    node chi_b_wire_2_4 = io_chi_in_2_4 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_2_4 = _T_43 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_44 = xor(chi_b_wire_2_4, chi_wire_2_4) @[Chi.scala 19:44]
    node _T_45 = not(io_chi_in_4_0) @[Chi.scala 16:29]
    node chi_not_wire_3_0 = _T_45 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_46 = and(chi_not_wire_3_0, io_chi_in_0_0) @[Chi.scala 17:45]
    node chi_b_wire_3_0 = io_chi_in_3_0 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_3_0 = _T_46 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_47 = xor(chi_b_wire_3_0, chi_wire_3_0) @[Chi.scala 19:44]
    node _T_48 = not(io_chi_in_4_1) @[Chi.scala 16:29]
    node chi_not_wire_3_1 = _T_48 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_49 = and(chi_not_wire_3_1, io_chi_in_0_1) @[Chi.scala 17:45]
    node chi_b_wire_3_1 = io_chi_in_3_1 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_3_1 = _T_49 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_50 = xor(chi_b_wire_3_1, chi_wire_3_1) @[Chi.scala 19:44]
    node _T_51 = not(io_chi_in_4_2) @[Chi.scala 16:29]
    node chi_not_wire_3_2 = _T_51 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_52 = and(chi_not_wire_3_2, io_chi_in_0_2) @[Chi.scala 17:45]
    node chi_b_wire_3_2 = io_chi_in_3_2 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_3_2 = _T_52 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_53 = xor(chi_b_wire_3_2, chi_wire_3_2) @[Chi.scala 19:44]
    node _T_54 = not(io_chi_in_4_3) @[Chi.scala 16:29]
    node chi_not_wire_3_3 = _T_54 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_55 = and(chi_not_wire_3_3, io_chi_in_0_3) @[Chi.scala 17:45]
    node chi_b_wire_3_3 = io_chi_in_3_3 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_3_3 = _T_55 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_56 = xor(chi_b_wire_3_3, chi_wire_3_3) @[Chi.scala 19:44]
    node _T_57 = not(io_chi_in_4_4) @[Chi.scala 16:29]
    node chi_not_wire_3_4 = _T_57 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_58 = and(chi_not_wire_3_4, io_chi_in_0_4) @[Chi.scala 17:45]
    node chi_b_wire_3_4 = io_chi_in_3_4 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_3_4 = _T_58 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_59 = xor(chi_b_wire_3_4, chi_wire_3_4) @[Chi.scala 19:44]
    node _T_60 = not(io_chi_in_0_0) @[Chi.scala 16:29]
    node chi_not_wire_4_0 = _T_60 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_61 = and(chi_not_wire_4_0, io_chi_in_1_0) @[Chi.scala 17:45]
    node chi_b_wire_4_0 = io_chi_in_4_0 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_4_0 = _T_61 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_62 = xor(chi_b_wire_4_0, chi_wire_4_0) @[Chi.scala 19:44]
    node _T_63 = not(io_chi_in_0_1) @[Chi.scala 16:29]
    node chi_not_wire_4_1 = _T_63 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_64 = and(chi_not_wire_4_1, io_chi_in_1_1) @[Chi.scala 17:45]
    node chi_b_wire_4_1 = io_chi_in_4_1 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_4_1 = _T_64 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_65 = xor(chi_b_wire_4_1, chi_wire_4_1) @[Chi.scala 19:44]
    node _T_66 = not(io_chi_in_0_2) @[Chi.scala 16:29]
    node chi_not_wire_4_2 = _T_66 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_67 = and(chi_not_wire_4_2, io_chi_in_1_2) @[Chi.scala 17:45]
    node chi_b_wire_4_2 = io_chi_in_4_2 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_4_2 = _T_67 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_68 = xor(chi_b_wire_4_2, chi_wire_4_2) @[Chi.scala 19:44]
    node _T_69 = not(io_chi_in_0_3) @[Chi.scala 16:29]
    node chi_not_wire_4_3 = _T_69 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_70 = and(chi_not_wire_4_3, io_chi_in_1_3) @[Chi.scala 17:45]
    node chi_b_wire_4_3 = io_chi_in_4_3 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_4_3 = _T_70 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_71 = xor(chi_b_wire_4_3, chi_wire_4_3) @[Chi.scala 19:44]
    node _T_72 = not(io_chi_in_0_4) @[Chi.scala 16:29]
    node chi_not_wire_4_4 = _T_72 @[Chi.scala 12:26 Chi.scala 16:26]
    node _T_73 = and(chi_not_wire_4_4, io_chi_in_1_4) @[Chi.scala 17:45]
    node chi_b_wire_4_4 = io_chi_in_4_4 @[Chi.scala 11:26 Chi.scala 18:24]
    node chi_wire_4_4 = _T_73 @[Chi.scala 10:26 Chi.scala 17:22]
    node _T_74 = xor(chi_b_wire_4_4, chi_wire_4_4) @[Chi.scala 19:44]
    io_chi_out_0_0 <= _T_2 @[Chi.scala 19:24]
    io_chi_out_0_1 <= _T_5 @[Chi.scala 19:24]
    io_chi_out_0_2 <= _T_8 @[Chi.scala 19:24]
    io_chi_out_0_3 <= _T_11 @[Chi.scala 19:24]
    io_chi_out_0_4 <= _T_14 @[Chi.scala 19:24]
    io_chi_out_1_0 <= _T_17 @[Chi.scala 19:24]
    io_chi_out_1_1 <= _T_20 @[Chi.scala 19:24]
    io_chi_out_1_2 <= _T_23 @[Chi.scala 19:24]
    io_chi_out_1_3 <= _T_26 @[Chi.scala 19:24]
    io_chi_out_1_4 <= _T_29 @[Chi.scala 19:24]
    io_chi_out_2_0 <= _T_32 @[Chi.scala 19:24]
    io_chi_out_2_1 <= _T_35 @[Chi.scala 19:24]
    io_chi_out_2_2 <= _T_38 @[Chi.scala 19:24]
    io_chi_out_2_3 <= _T_41 @[Chi.scala 19:24]
    io_chi_out_2_4 <= _T_44 @[Chi.scala 19:24]
    io_chi_out_3_0 <= _T_47 @[Chi.scala 19:24]
    io_chi_out_3_1 <= _T_50 @[Chi.scala 19:24]
    io_chi_out_3_2 <= _T_53 @[Chi.scala 19:24]
    io_chi_out_3_3 <= _T_56 @[Chi.scala 19:24]
    io_chi_out_3_4 <= _T_59 @[Chi.scala 19:24]
    io_chi_out_4_0 <= _T_62 @[Chi.scala 19:24]
    io_chi_out_4_1 <= _T_65 @[Chi.scala 19:24]
    io_chi_out_4_2 <= _T_68 @[Chi.scala 19:24]
    io_chi_out_4_3 <= _T_71 @[Chi.scala 19:24]
    io_chi_out_4_4 <= _T_74 @[Chi.scala 19:24]

  module Iota :
    input clock : Clock
    input reset : UInt<1>
    input io_iota_in : UInt<64>
    input io_iota_round : UInt<64>
    output io_iota_out : UInt<64>
    output io_iota_xor_val : UInt<64>

    node _T = bits(io_iota_round, 4, 0)
    node RC_0 = pad(UInt<1>("h1"), 64) @[Iota.scala 12:17 Iota.scala 13:11]
    node _GEN_0 = validif(eq(UInt<1>("h0"), _T), RC_0) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_1 = pad(UInt<16>("h8082"), 64) @[Iota.scala 12:17 Iota.scala 14:11]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _T), RC_1, _GEN_0) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_2 = UInt<64>("h800000000000808a") @[Iota.scala 12:17 Iota.scala 15:11]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _T), RC_2, _GEN_1) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_3 = UInt<64>("h8000000080008000") @[Iota.scala 12:17 Iota.scala 16:11]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _T), RC_3, _GEN_2) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_4 = pad(UInt<16>("h808b"), 64) @[Iota.scala 12:17 Iota.scala 17:11]
    node _GEN_4 = mux(eq(UInt<3>("h4"), _T), RC_4, _GEN_3) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_5 = pad(UInt<32>("h80000001"), 64) @[Iota.scala 12:17 Iota.scala 18:11]
    node _GEN_5 = mux(eq(UInt<3>("h5"), _T), RC_5, _GEN_4) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_6 = UInt<64>("h8000000080008081") @[Iota.scala 12:17 Iota.scala 19:11]
    node _GEN_6 = mux(eq(UInt<3>("h6"), _T), RC_6, _GEN_5) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_7 = UInt<64>("h8000000000008009") @[Iota.scala 12:17 Iota.scala 20:11]
    node _GEN_7 = mux(eq(UInt<3>("h7"), _T), RC_7, _GEN_6) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_8 = pad(UInt<8>("h8a"), 64) @[Iota.scala 12:17 Iota.scala 21:11]
    node _GEN_8 = mux(eq(UInt<4>("h8"), _T), RC_8, _GEN_7) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_9 = pad(UInt<8>("h88"), 64) @[Iota.scala 12:17 Iota.scala 22:11]
    node _GEN_9 = mux(eq(UInt<4>("h9"), _T), RC_9, _GEN_8) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_10 = pad(UInt<32>("h80008009"), 64) @[Iota.scala 12:17 Iota.scala 23:11]
    node _GEN_10 = mux(eq(UInt<4>("ha"), _T), RC_10, _GEN_9) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_11 = pad(UInt<32>("h8000000a"), 64) @[Iota.scala 12:17 Iota.scala 24:11]
    node _GEN_11 = mux(eq(UInt<4>("hb"), _T), RC_11, _GEN_10) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_12 = pad(UInt<32>("h8000808b"), 64) @[Iota.scala 12:17 Iota.scala 25:11]
    node _GEN_12 = mux(eq(UInt<4>("hc"), _T), RC_12, _GEN_11) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_13 = UInt<64>("h800000000000008b") @[Iota.scala 12:17 Iota.scala 26:11]
    node _GEN_13 = mux(eq(UInt<4>("hd"), _T), RC_13, _GEN_12) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_14 = UInt<64>("h8000000000008089") @[Iota.scala 12:17 Iota.scala 27:11]
    node _GEN_14 = mux(eq(UInt<4>("he"), _T), RC_14, _GEN_13) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_15 = UInt<64>("h8000000000008003") @[Iota.scala 12:17 Iota.scala 28:11]
    node _GEN_15 = mux(eq(UInt<4>("hf"), _T), RC_15, _GEN_14) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_16 = UInt<64>("h8000000000008002") @[Iota.scala 12:17 Iota.scala 29:11]
    node _GEN_16 = mux(eq(UInt<5>("h10"), _T), RC_16, _GEN_15) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_17 = UInt<64>("h8000000000000080") @[Iota.scala 12:17 Iota.scala 30:11]
    node _GEN_17 = mux(eq(UInt<5>("h11"), _T), RC_17, _GEN_16) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_18 = pad(UInt<16>("h800a"), 64) @[Iota.scala 12:17 Iota.scala 31:11]
    node _GEN_18 = mux(eq(UInt<5>("h12"), _T), RC_18, _GEN_17) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_19 = UInt<64>("h800000008000000a") @[Iota.scala 12:17 Iota.scala 32:11]
    node _GEN_19 = mux(eq(UInt<5>("h13"), _T), RC_19, _GEN_18) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_20 = UInt<64>("h8000000080008081") @[Iota.scala 12:17 Iota.scala 33:11]
    node _GEN_20 = mux(eq(UInt<5>("h14"), _T), RC_20, _GEN_19) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_21 = UInt<64>("h8000000000008080") @[Iota.scala 12:17 Iota.scala 34:11]
    node _GEN_21 = mux(eq(UInt<5>("h15"), _T), RC_21, _GEN_20) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_22 = pad(UInt<32>("h80000001"), 64) @[Iota.scala 12:17 Iota.scala 35:11]
    node _GEN_22 = mux(eq(UInt<5>("h16"), _T), RC_22, _GEN_21) @[Iota.scala 38:19 Iota.scala 38:19]
    node RC_23 = UInt<64>("h8000000080008008") @[Iota.scala 12:17 Iota.scala 36:11]
    node _GEN_23 = mux(eq(UInt<5>("h17"), _T), RC_23, _GEN_22) @[Iota.scala 38:19 Iota.scala 38:19]
    node _T_1 = bits(io_iota_round, 4, 0)
    node _GEN_24 = validif(eq(UInt<1>("h0"), _T_1), RC_0) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_25 = mux(eq(UInt<1>("h1"), _T_1), RC_1, _GEN_24) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_26 = mux(eq(UInt<2>("h2"), _T_1), RC_2, _GEN_25) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_27 = mux(eq(UInt<2>("h3"), _T_1), RC_3, _GEN_26) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_28 = mux(eq(UInt<3>("h4"), _T_1), RC_4, _GEN_27) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_29 = mux(eq(UInt<3>("h5"), _T_1), RC_5, _GEN_28) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_30 = mux(eq(UInt<3>("h6"), _T_1), RC_6, _GEN_29) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_31 = mux(eq(UInt<3>("h7"), _T_1), RC_7, _GEN_30) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_32 = mux(eq(UInt<4>("h8"), _T_1), RC_8, _GEN_31) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_33 = mux(eq(UInt<4>("h9"), _T_1), RC_9, _GEN_32) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_34 = mux(eq(UInt<4>("ha"), _T_1), RC_10, _GEN_33) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_35 = mux(eq(UInt<4>("hb"), _T_1), RC_11, _GEN_34) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_36 = mux(eq(UInt<4>("hc"), _T_1), RC_12, _GEN_35) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_37 = mux(eq(UInt<4>("hd"), _T_1), RC_13, _GEN_36) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_38 = mux(eq(UInt<4>("he"), _T_1), RC_14, _GEN_37) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_39 = mux(eq(UInt<4>("hf"), _T_1), RC_15, _GEN_38) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_40 = mux(eq(UInt<5>("h10"), _T_1), RC_16, _GEN_39) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_41 = mux(eq(UInt<5>("h11"), _T_1), RC_17, _GEN_40) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_42 = mux(eq(UInt<5>("h12"), _T_1), RC_18, _GEN_41) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_43 = mux(eq(UInt<5>("h13"), _T_1), RC_19, _GEN_42) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_44 = mux(eq(UInt<5>("h14"), _T_1), RC_20, _GEN_43) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_45 = mux(eq(UInt<5>("h15"), _T_1), RC_21, _GEN_44) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_46 = mux(eq(UInt<5>("h16"), _T_1), RC_22, _GEN_45) @[Iota.scala 40:28 Iota.scala 40:28]
    node _GEN_47 = mux(eq(UInt<5>("h17"), _T_1), RC_23, _GEN_46) @[Iota.scala 40:28 Iota.scala 40:28]
    node _RC_T_1 = _GEN_47 @[Iota.scala 40:28]
    node _T_2 = xor(io_iota_in, _RC_T_1) @[Iota.scala 40:28]
    node _RC_T = _GEN_23 @[Iota.scala 38:19]
    io_iota_out <= _T_2 @[Iota.scala 40:15]
    io_iota_xor_val <= _RC_T @[Iota.scala 38:19]

  module Round :
    input clock : Clock
    input reset : UInt<1>
    input io_round_in_0_0 : UInt<64>
    input io_round_in_0_1 : UInt<64>
    input io_round_in_0_2 : UInt<64>
    input io_round_in_0_3 : UInt<64>
    input io_round_in_0_4 : UInt<64>
    input io_round_in_1_0 : UInt<64>
    input io_round_in_1_1 : UInt<64>
    input io_round_in_1_2 : UInt<64>
    input io_round_in_1_3 : UInt<64>
    input io_round_in_1_4 : UInt<64>
    input io_round_in_2_0 : UInt<64>
    input io_round_in_2_1 : UInt<64>
    input io_round_in_2_2 : UInt<64>
    input io_round_in_2_3 : UInt<64>
    input io_round_in_2_4 : UInt<64>
    input io_round_in_3_0 : UInt<64>
    input io_round_in_3_1 : UInt<64>
    input io_round_in_3_2 : UInt<64>
    input io_round_in_3_3 : UInt<64>
    input io_round_in_3_4 : UInt<64>
    input io_round_in_4_0 : UInt<64>
    input io_round_in_4_1 : UInt<64>
    input io_round_in_4_2 : UInt<64>
    input io_round_in_4_3 : UInt<64>
    input io_round_in_4_4 : UInt<64>
    output io_round_out_0_0 : UInt<64>
    output io_round_out_0_1 : UInt<64>
    output io_round_out_0_2 : UInt<64>
    output io_round_out_0_3 : UInt<64>
    output io_round_out_0_4 : UInt<64>
    output io_round_out_1_0 : UInt<64>
    output io_round_out_1_1 : UInt<64>
    output io_round_out_1_2 : UInt<64>
    output io_round_out_1_3 : UInt<64>
    output io_round_out_1_4 : UInt<64>
    output io_round_out_2_0 : UInt<64>
    output io_round_out_2_1 : UInt<64>
    output io_round_out_2_2 : UInt<64>
    output io_round_out_2_3 : UInt<64>
    output io_round_out_2_4 : UInt<64>
    output io_round_out_3_0 : UInt<64>
    output io_round_out_3_1 : UInt<64>
    output io_round_out_3_2 : UInt<64>
    output io_round_out_3_3 : UInt<64>
    output io_round_out_3_4 : UInt<64>
    output io_round_out_4_0 : UInt<64>
    output io_round_out_4_1 : UInt<64>
    output io_round_out_4_2 : UInt<64>
    output io_round_out_4_3 : UInt<64>
    output io_round_out_4_4 : UInt<64>
    input io_R_iota_round : UInt<64>
    output io_R_theta_out_0_0 : UInt<64>
    output io_R_theta_out_0_1 : UInt<64>
    output io_R_theta_out_0_2 : UInt<64>
    output io_R_theta_out_0_3 : UInt<64>
    output io_R_theta_out_0_4 : UInt<64>
    output io_R_theta_out_1_0 : UInt<64>
    output io_R_theta_out_1_1 : UInt<64>
    output io_R_theta_out_1_2 : UInt<64>
    output io_R_theta_out_1_3 : UInt<64>
    output io_R_theta_out_1_4 : UInt<64>
    output io_R_theta_out_2_0 : UInt<64>
    output io_R_theta_out_2_1 : UInt<64>
    output io_R_theta_out_2_2 : UInt<64>
    output io_R_theta_out_2_3 : UInt<64>
    output io_R_theta_out_2_4 : UInt<64>
    output io_R_theta_out_3_0 : UInt<64>
    output io_R_theta_out_3_1 : UInt<64>
    output io_R_theta_out_3_2 : UInt<64>
    output io_R_theta_out_3_3 : UInt<64>
    output io_R_theta_out_3_4 : UInt<64>
    output io_R_theta_out_4_0 : UInt<64>
    output io_R_theta_out_4_1 : UInt<64>
    output io_R_theta_out_4_2 : UInt<64>
    output io_R_theta_out_4_3 : UInt<64>
    output io_R_theta_out_4_4 : UInt<64>
    output io_R_rhoPi_out_0_0 : UInt<64>
    output io_R_rhoPi_out_0_1 : UInt<64>
    output io_R_rhoPi_out_0_2 : UInt<64>
    output io_R_rhoPi_out_0_3 : UInt<64>
    output io_R_rhoPi_out_0_4 : UInt<64>
    output io_R_rhoPi_out_1_0 : UInt<64>
    output io_R_rhoPi_out_1_1 : UInt<64>
    output io_R_rhoPi_out_1_2 : UInt<64>
    output io_R_rhoPi_out_1_3 : UInt<64>
    output io_R_rhoPi_out_1_4 : UInt<64>
    output io_R_rhoPi_out_2_0 : UInt<64>
    output io_R_rhoPi_out_2_1 : UInt<64>
    output io_R_rhoPi_out_2_2 : UInt<64>
    output io_R_rhoPi_out_2_3 : UInt<64>
    output io_R_rhoPi_out_2_4 : UInt<64>
    output io_R_rhoPi_out_3_0 : UInt<64>
    output io_R_rhoPi_out_3_1 : UInt<64>
    output io_R_rhoPi_out_3_2 : UInt<64>
    output io_R_rhoPi_out_3_3 : UInt<64>
    output io_R_rhoPi_out_3_4 : UInt<64>
    output io_R_rhoPi_out_4_0 : UInt<64>
    output io_R_rhoPi_out_4_1 : UInt<64>
    output io_R_rhoPi_out_4_2 : UInt<64>
    output io_R_rhoPi_out_4_3 : UInt<64>
    output io_R_rhoPi_out_4_4 : UInt<64>
    output io_R_chi_out_0_0 : UInt<64>
    output io_R_chi_out_0_1 : UInt<64>
    output io_R_chi_out_0_2 : UInt<64>
    output io_R_chi_out_0_3 : UInt<64>
    output io_R_chi_out_0_4 : UInt<64>
    output io_R_chi_out_1_0 : UInt<64>
    output io_R_chi_out_1_1 : UInt<64>
    output io_R_chi_out_1_2 : UInt<64>
    output io_R_chi_out_1_3 : UInt<64>
    output io_R_chi_out_1_4 : UInt<64>
    output io_R_chi_out_2_0 : UInt<64>
    output io_R_chi_out_2_1 : UInt<64>
    output io_R_chi_out_2_2 : UInt<64>
    output io_R_chi_out_2_3 : UInt<64>
    output io_R_chi_out_2_4 : UInt<64>
    output io_R_chi_out_3_0 : UInt<64>
    output io_R_chi_out_3_1 : UInt<64>
    output io_R_chi_out_3_2 : UInt<64>
    output io_R_chi_out_3_3 : UInt<64>
    output io_R_chi_out_3_4 : UInt<64>
    output io_R_chi_out_4_0 : UInt<64>
    output io_R_chi_out_4_1 : UInt<64>
    output io_R_chi_out_4_2 : UInt<64>
    output io_R_chi_out_4_3 : UInt<64>
    output io_R_chi_out_4_4 : UInt<64>
    output io_R_iota_out : UInt<64>
    output io_R_theta_d_out_0 : UInt<64>
    output io_R_theta_d_out_1 : UInt<64>
    output io_R_theta_d_out_2 : UInt<64>
    output io_R_theta_d_out_3 : UInt<64>
    output io_R_theta_d_out_4 : UInt<64>
    output io_R_theta_c_out_0 : UInt<64>
    output io_R_theta_c_out_1 : UInt<64>
    output io_R_theta_c_out_2 : UInt<64>
    output io_R_theta_c_out_3 : UInt<64>
    output io_R_theta_c_out_4 : UInt<64>
    output io_R_iota_xor_val_out : UInt<64>

    inst theta of Theta @[Round.scala 17:23]
    inst rhoPi of RhoPi @[Round.scala 18:23]
    inst chi of Chi @[Round.scala 19:23]
    inst iota of Iota @[Round.scala 20:23]
    io_round_out_0_0 <= iota.io_iota_out @[Round.scala 29:27]
    io_round_out_0_1 <= chi.io_chi_out_0_1 @[Round.scala 43:28]
    io_round_out_0_2 <= chi.io_chi_out_0_2 @[Round.scala 43:28]
    io_round_out_0_3 <= chi.io_chi_out_0_3 @[Round.scala 43:28]
    io_round_out_0_4 <= chi.io_chi_out_0_4 @[Round.scala 43:28]
    io_round_out_1_0 <= chi.io_chi_out_1_0 @[Round.scala 43:28]
    io_round_out_1_1 <= chi.io_chi_out_1_1 @[Round.scala 43:28]
    io_round_out_1_2 <= chi.io_chi_out_1_2 @[Round.scala 43:28]
    io_round_out_1_3 <= chi.io_chi_out_1_3 @[Round.scala 43:28]
    io_round_out_1_4 <= chi.io_chi_out_1_4 @[Round.scala 43:28]
    io_round_out_2_0 <= chi.io_chi_out_2_0 @[Round.scala 43:28]
    io_round_out_2_1 <= chi.io_chi_out_2_1 @[Round.scala 43:28]
    io_round_out_2_2 <= chi.io_chi_out_2_2 @[Round.scala 43:28]
    io_round_out_2_3 <= chi.io_chi_out_2_3 @[Round.scala 43:28]
    io_round_out_2_4 <= chi.io_chi_out_2_4 @[Round.scala 43:28]
    io_round_out_3_0 <= chi.io_chi_out_3_0 @[Round.scala 43:28]
    io_round_out_3_1 <= chi.io_chi_out_3_1 @[Round.scala 43:28]
    io_round_out_3_2 <= chi.io_chi_out_3_2 @[Round.scala 43:28]
    io_round_out_3_3 <= chi.io_chi_out_3_3 @[Round.scala 43:28]
    io_round_out_3_4 <= chi.io_chi_out_3_4 @[Round.scala 43:28]
    io_round_out_4_0 <= chi.io_chi_out_4_0 @[Round.scala 43:28]
    io_round_out_4_1 <= chi.io_chi_out_4_1 @[Round.scala 43:28]
    io_round_out_4_2 <= chi.io_chi_out_4_2 @[Round.scala 43:28]
    io_round_out_4_3 <= chi.io_chi_out_4_3 @[Round.scala 43:28]
    io_round_out_4_4 <= chi.io_chi_out_4_4 @[Round.scala 43:28]
    io_R_theta_out_0_0 <= theta.io_theta_out_0_0 @[Round.scala 31:27]
    io_R_theta_out_0_1 <= theta.io_theta_out_0_1 @[Round.scala 31:27]
    io_R_theta_out_0_2 <= theta.io_theta_out_0_2 @[Round.scala 31:27]
    io_R_theta_out_0_3 <= theta.io_theta_out_0_3 @[Round.scala 31:27]
    io_R_theta_out_0_4 <= theta.io_theta_out_0_4 @[Round.scala 31:27]
    io_R_theta_out_1_0 <= theta.io_theta_out_1_0 @[Round.scala 31:27]
    io_R_theta_out_1_1 <= theta.io_theta_out_1_1 @[Round.scala 31:27]
    io_R_theta_out_1_2 <= theta.io_theta_out_1_2 @[Round.scala 31:27]
    io_R_theta_out_1_3 <= theta.io_theta_out_1_3 @[Round.scala 31:27]
    io_R_theta_out_1_4 <= theta.io_theta_out_1_4 @[Round.scala 31:27]
    io_R_theta_out_2_0 <= theta.io_theta_out_2_0 @[Round.scala 31:27]
    io_R_theta_out_2_1 <= theta.io_theta_out_2_1 @[Round.scala 31:27]
    io_R_theta_out_2_2 <= theta.io_theta_out_2_2 @[Round.scala 31:27]
    io_R_theta_out_2_3 <= theta.io_theta_out_2_3 @[Round.scala 31:27]
    io_R_theta_out_2_4 <= theta.io_theta_out_2_4 @[Round.scala 31:27]
    io_R_theta_out_3_0 <= theta.io_theta_out_3_0 @[Round.scala 31:27]
    io_R_theta_out_3_1 <= theta.io_theta_out_3_1 @[Round.scala 31:27]
    io_R_theta_out_3_2 <= theta.io_theta_out_3_2 @[Round.scala 31:27]
    io_R_theta_out_3_3 <= theta.io_theta_out_3_3 @[Round.scala 31:27]
    io_R_theta_out_3_4 <= theta.io_theta_out_3_4 @[Round.scala 31:27]
    io_R_theta_out_4_0 <= theta.io_theta_out_4_0 @[Round.scala 31:27]
    io_R_theta_out_4_1 <= theta.io_theta_out_4_1 @[Round.scala 31:27]
    io_R_theta_out_4_2 <= theta.io_theta_out_4_2 @[Round.scala 31:27]
    io_R_theta_out_4_3 <= theta.io_theta_out_4_3 @[Round.scala 31:27]
    io_R_theta_out_4_4 <= theta.io_theta_out_4_4 @[Round.scala 31:27]
    io_R_rhoPi_out_0_0 <= rhoPi.io_rhoPi_out_0_0 @[Round.scala 32:27]
    io_R_rhoPi_out_0_1 <= rhoPi.io_rhoPi_out_0_1 @[Round.scala 32:27]
    io_R_rhoPi_out_0_2 <= rhoPi.io_rhoPi_out_0_2 @[Round.scala 32:27]
    io_R_rhoPi_out_0_3 <= rhoPi.io_rhoPi_out_0_3 @[Round.scala 32:27]
    io_R_rhoPi_out_0_4 <= rhoPi.io_rhoPi_out_0_4 @[Round.scala 32:27]
    io_R_rhoPi_out_1_0 <= rhoPi.io_rhoPi_out_1_0 @[Round.scala 32:27]
    io_R_rhoPi_out_1_1 <= rhoPi.io_rhoPi_out_1_1 @[Round.scala 32:27]
    io_R_rhoPi_out_1_2 <= rhoPi.io_rhoPi_out_1_2 @[Round.scala 32:27]
    io_R_rhoPi_out_1_3 <= rhoPi.io_rhoPi_out_1_3 @[Round.scala 32:27]
    io_R_rhoPi_out_1_4 <= rhoPi.io_rhoPi_out_1_4 @[Round.scala 32:27]
    io_R_rhoPi_out_2_0 <= rhoPi.io_rhoPi_out_2_0 @[Round.scala 32:27]
    io_R_rhoPi_out_2_1 <= rhoPi.io_rhoPi_out_2_1 @[Round.scala 32:27]
    io_R_rhoPi_out_2_2 <= rhoPi.io_rhoPi_out_2_2 @[Round.scala 32:27]
    io_R_rhoPi_out_2_3 <= rhoPi.io_rhoPi_out_2_3 @[Round.scala 32:27]
    io_R_rhoPi_out_2_4 <= rhoPi.io_rhoPi_out_2_4 @[Round.scala 32:27]
    io_R_rhoPi_out_3_0 <= rhoPi.io_rhoPi_out_3_0 @[Round.scala 32:27]
    io_R_rhoPi_out_3_1 <= rhoPi.io_rhoPi_out_3_1 @[Round.scala 32:27]
    io_R_rhoPi_out_3_2 <= rhoPi.io_rhoPi_out_3_2 @[Round.scala 32:27]
    io_R_rhoPi_out_3_3 <= rhoPi.io_rhoPi_out_3_3 @[Round.scala 32:27]
    io_R_rhoPi_out_3_4 <= rhoPi.io_rhoPi_out_3_4 @[Round.scala 32:27]
    io_R_rhoPi_out_4_0 <= rhoPi.io_rhoPi_out_4_0 @[Round.scala 32:27]
    io_R_rhoPi_out_4_1 <= rhoPi.io_rhoPi_out_4_1 @[Round.scala 32:27]
    io_R_rhoPi_out_4_2 <= rhoPi.io_rhoPi_out_4_2 @[Round.scala 32:27]
    io_R_rhoPi_out_4_3 <= rhoPi.io_rhoPi_out_4_3 @[Round.scala 32:27]
    io_R_rhoPi_out_4_4 <= rhoPi.io_rhoPi_out_4_4 @[Round.scala 32:27]
    io_R_chi_out_0_0 <= chi.io_chi_out_0_0 @[Round.scala 33:27]
    io_R_chi_out_0_1 <= chi.io_chi_out_0_1 @[Round.scala 33:27]
    io_R_chi_out_0_2 <= chi.io_chi_out_0_2 @[Round.scala 33:27]
    io_R_chi_out_0_3 <= chi.io_chi_out_0_3 @[Round.scala 33:27]
    io_R_chi_out_0_4 <= chi.io_chi_out_0_4 @[Round.scala 33:27]
    io_R_chi_out_1_0 <= chi.io_chi_out_1_0 @[Round.scala 33:27]
    io_R_chi_out_1_1 <= chi.io_chi_out_1_1 @[Round.scala 33:27]
    io_R_chi_out_1_2 <= chi.io_chi_out_1_2 @[Round.scala 33:27]
    io_R_chi_out_1_3 <= chi.io_chi_out_1_3 @[Round.scala 33:27]
    io_R_chi_out_1_4 <= chi.io_chi_out_1_4 @[Round.scala 33:27]
    io_R_chi_out_2_0 <= chi.io_chi_out_2_0 @[Round.scala 33:27]
    io_R_chi_out_2_1 <= chi.io_chi_out_2_1 @[Round.scala 33:27]
    io_R_chi_out_2_2 <= chi.io_chi_out_2_2 @[Round.scala 33:27]
    io_R_chi_out_2_3 <= chi.io_chi_out_2_3 @[Round.scala 33:27]
    io_R_chi_out_2_4 <= chi.io_chi_out_2_4 @[Round.scala 33:27]
    io_R_chi_out_3_0 <= chi.io_chi_out_3_0 @[Round.scala 33:27]
    io_R_chi_out_3_1 <= chi.io_chi_out_3_1 @[Round.scala 33:27]
    io_R_chi_out_3_2 <= chi.io_chi_out_3_2 @[Round.scala 33:27]
    io_R_chi_out_3_3 <= chi.io_chi_out_3_3 @[Round.scala 33:27]
    io_R_chi_out_3_4 <= chi.io_chi_out_3_4 @[Round.scala 33:27]
    io_R_chi_out_4_0 <= chi.io_chi_out_4_0 @[Round.scala 33:27]
    io_R_chi_out_4_1 <= chi.io_chi_out_4_1 @[Round.scala 33:27]
    io_R_chi_out_4_2 <= chi.io_chi_out_4_2 @[Round.scala 33:27]
    io_R_chi_out_4_3 <= chi.io_chi_out_4_3 @[Round.scala 33:27]
    io_R_chi_out_4_4 <= chi.io_chi_out_4_4 @[Round.scala 33:27]
    io_R_iota_out <= iota.io_iota_out @[Round.scala 34:27]
    io_R_theta_d_out_0 <= theta.io_d_out_0 @[Round.scala 37:27]
    io_R_theta_d_out_1 <= theta.io_d_out_1 @[Round.scala 37:27]
    io_R_theta_d_out_2 <= theta.io_d_out_2 @[Round.scala 37:27]
    io_R_theta_d_out_3 <= theta.io_d_out_3 @[Round.scala 37:27]
    io_R_theta_d_out_4 <= theta.io_d_out_4 @[Round.scala 37:27]
    io_R_theta_c_out_0 <= theta.io_c_out_0 @[Round.scala 36:27]
    io_R_theta_c_out_1 <= theta.io_c_out_1 @[Round.scala 36:27]
    io_R_theta_c_out_2 <= theta.io_c_out_2 @[Round.scala 36:27]
    io_R_theta_c_out_3 <= theta.io_c_out_3 @[Round.scala 36:27]
    io_R_theta_c_out_4 <= theta.io_c_out_4 @[Round.scala 36:27]
    io_R_iota_xor_val_out <= iota.io_iota_xor_val @[Round.scala 35:27]
    theta.clock <= clock
    theta.reset <= reset
    theta.io_theta_in_0_0 <= io_round_in_0_0 @[Round.scala 22:27]
    theta.io_theta_in_0_1 <= io_round_in_0_1 @[Round.scala 22:27]
    theta.io_theta_in_0_2 <= io_round_in_0_2 @[Round.scala 22:27]
    theta.io_theta_in_0_3 <= io_round_in_0_3 @[Round.scala 22:27]
    theta.io_theta_in_0_4 <= io_round_in_0_4 @[Round.scala 22:27]
    theta.io_theta_in_1_0 <= io_round_in_1_0 @[Round.scala 22:27]
    theta.io_theta_in_1_1 <= io_round_in_1_1 @[Round.scala 22:27]
    theta.io_theta_in_1_2 <= io_round_in_1_2 @[Round.scala 22:27]
    theta.io_theta_in_1_3 <= io_round_in_1_3 @[Round.scala 22:27]
    theta.io_theta_in_1_4 <= io_round_in_1_4 @[Round.scala 22:27]
    theta.io_theta_in_2_0 <= io_round_in_2_0 @[Round.scala 22:27]
    theta.io_theta_in_2_1 <= io_round_in_2_1 @[Round.scala 22:27]
    theta.io_theta_in_2_2 <= io_round_in_2_2 @[Round.scala 22:27]
    theta.io_theta_in_2_3 <= io_round_in_2_3 @[Round.scala 22:27]
    theta.io_theta_in_2_4 <= io_round_in_2_4 @[Round.scala 22:27]
    theta.io_theta_in_3_0 <= io_round_in_3_0 @[Round.scala 22:27]
    theta.io_theta_in_3_1 <= io_round_in_3_1 @[Round.scala 22:27]
    theta.io_theta_in_3_2 <= io_round_in_3_2 @[Round.scala 22:27]
    theta.io_theta_in_3_3 <= io_round_in_3_3 @[Round.scala 22:27]
    theta.io_theta_in_3_4 <= io_round_in_3_4 @[Round.scala 22:27]
    theta.io_theta_in_4_0 <= io_round_in_4_0 @[Round.scala 22:27]
    theta.io_theta_in_4_1 <= io_round_in_4_1 @[Round.scala 22:27]
    theta.io_theta_in_4_2 <= io_round_in_4_2 @[Round.scala 22:27]
    theta.io_theta_in_4_3 <= io_round_in_4_3 @[Round.scala 22:27]
    theta.io_theta_in_4_4 <= io_round_in_4_4 @[Round.scala 22:27]
    rhoPi.clock <= clock
    rhoPi.reset <= reset
    rhoPi.io_rhoPi_in_0_0 <= theta.io_theta_out_0_0 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_0_1 <= theta.io_theta_out_0_1 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_0_2 <= theta.io_theta_out_0_2 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_0_3 <= theta.io_theta_out_0_3 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_0_4 <= theta.io_theta_out_0_4 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_1_0 <= theta.io_theta_out_1_0 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_1_1 <= theta.io_theta_out_1_1 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_1_2 <= theta.io_theta_out_1_2 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_1_3 <= theta.io_theta_out_1_3 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_1_4 <= theta.io_theta_out_1_4 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_2_0 <= theta.io_theta_out_2_0 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_2_1 <= theta.io_theta_out_2_1 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_2_2 <= theta.io_theta_out_2_2 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_2_3 <= theta.io_theta_out_2_3 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_2_4 <= theta.io_theta_out_2_4 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_3_0 <= theta.io_theta_out_3_0 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_3_1 <= theta.io_theta_out_3_1 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_3_2 <= theta.io_theta_out_3_2 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_3_3 <= theta.io_theta_out_3_3 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_3_4 <= theta.io_theta_out_3_4 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_4_0 <= theta.io_theta_out_4_0 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_4_1 <= theta.io_theta_out_4_1 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_4_2 <= theta.io_theta_out_4_2 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_4_3 <= theta.io_theta_out_4_3 @[Round.scala 23:27]
    rhoPi.io_rhoPi_in_4_4 <= theta.io_theta_out_4_4 @[Round.scala 23:27]
    chi.clock <= clock
    chi.reset <= reset
    chi.io_chi_in_0_0 <= rhoPi.io_rhoPi_out_0_0 @[Round.scala 24:27]
    chi.io_chi_in_0_1 <= rhoPi.io_rhoPi_out_0_1 @[Round.scala 24:27]
    chi.io_chi_in_0_2 <= rhoPi.io_rhoPi_out_0_2 @[Round.scala 24:27]
    chi.io_chi_in_0_3 <= rhoPi.io_rhoPi_out_0_3 @[Round.scala 24:27]
    chi.io_chi_in_0_4 <= rhoPi.io_rhoPi_out_0_4 @[Round.scala 24:27]
    chi.io_chi_in_1_0 <= rhoPi.io_rhoPi_out_1_0 @[Round.scala 24:27]
    chi.io_chi_in_1_1 <= rhoPi.io_rhoPi_out_1_1 @[Round.scala 24:27]
    chi.io_chi_in_1_2 <= rhoPi.io_rhoPi_out_1_2 @[Round.scala 24:27]
    chi.io_chi_in_1_3 <= rhoPi.io_rhoPi_out_1_3 @[Round.scala 24:27]
    chi.io_chi_in_1_4 <= rhoPi.io_rhoPi_out_1_4 @[Round.scala 24:27]
    chi.io_chi_in_2_0 <= rhoPi.io_rhoPi_out_2_0 @[Round.scala 24:27]
    chi.io_chi_in_2_1 <= rhoPi.io_rhoPi_out_2_1 @[Round.scala 24:27]
    chi.io_chi_in_2_2 <= rhoPi.io_rhoPi_out_2_2 @[Round.scala 24:27]
    chi.io_chi_in_2_3 <= rhoPi.io_rhoPi_out_2_3 @[Round.scala 24:27]
    chi.io_chi_in_2_4 <= rhoPi.io_rhoPi_out_2_4 @[Round.scala 24:27]
    chi.io_chi_in_3_0 <= rhoPi.io_rhoPi_out_3_0 @[Round.scala 24:27]
    chi.io_chi_in_3_1 <= rhoPi.io_rhoPi_out_3_1 @[Round.scala 24:27]
    chi.io_chi_in_3_2 <= rhoPi.io_rhoPi_out_3_2 @[Round.scala 24:27]
    chi.io_chi_in_3_3 <= rhoPi.io_rhoPi_out_3_3 @[Round.scala 24:27]
    chi.io_chi_in_3_4 <= rhoPi.io_rhoPi_out_3_4 @[Round.scala 24:27]
    chi.io_chi_in_4_0 <= rhoPi.io_rhoPi_out_4_0 @[Round.scala 24:27]
    chi.io_chi_in_4_1 <= rhoPi.io_rhoPi_out_4_1 @[Round.scala 24:27]
    chi.io_chi_in_4_2 <= rhoPi.io_rhoPi_out_4_2 @[Round.scala 24:27]
    chi.io_chi_in_4_3 <= rhoPi.io_rhoPi_out_4_3 @[Round.scala 24:27]
    chi.io_chi_in_4_4 <= rhoPi.io_rhoPi_out_4_4 @[Round.scala 24:27]
    iota.clock <= clock
    iota.reset <= reset
    iota.io_iota_in <= chi.io_chi_out_0_0 @[Round.scala 25:27]
    iota.io_iota_round <= io_R_iota_round @[Round.scala 28:27]

  module Buffer :
    input clock : Clock
    input reset : UInt<1>
    input io_dataIn : UInt<32>
    output io_dataOut_0 : UInt<64>
    output io_dataOut_1 : UInt<64>
    output io_dataOut_2 : UInt<64>
    output io_dataOut_3 : UInt<64>
    output io_dataOut_4 : UInt<64>
    output io_dataOut_5 : UInt<64>
    output io_dataOut_6 : UInt<64>
    output io_dataOut_7 : UInt<64>
    output io_dataOut_8 : UInt<64>
    output io_data_32_out_0 : UInt<32>
    output io_data_32_out_1 : UInt<32>
    output io_data_32_out_2 : UInt<32>
    output io_data_32_out_3 : UInt<32>
    output io_data_32_out_4 : UInt<32>
    output io_data_32_out_5 : UInt<32>
    output io_data_32_out_6 : UInt<32>
    output io_data_32_out_7 : UInt<32>
    output io_data_32_out_8 : UInt<32>
    output io_data_32_out_9 : UInt<32>
    output io_data_32_out_10 : UInt<32>
    output io_data_32_out_11 : UInt<32>
    output io_data_32_out_12 : UInt<32>
    output io_data_32_out_13 : UInt<32>
    output io_data_32_out_14 : UInt<32>
    output io_data_32_out_15 : UInt<32>
    output io_data_32_out_16 : UInt<32>
    output io_data_32_out_17 : UInt<32>
    input io_enable : UInt<1>

    reg dataReg_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_0) @[Buffer.scala 13:24]
    reg dataReg_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_1) @[Buffer.scala 13:24]
    reg dataReg_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_2) @[Buffer.scala 13:24]
    reg dataReg_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_3) @[Buffer.scala 13:24]
    reg dataReg_4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_4) @[Buffer.scala 13:24]
    reg dataReg_5 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_5) @[Buffer.scala 13:24]
    reg dataReg_6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_6) @[Buffer.scala 13:24]
    reg dataReg_7 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_7) @[Buffer.scala 13:24]
    reg dataReg_8 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_8) @[Buffer.scala 13:24]
    reg dataReg_9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_9) @[Buffer.scala 13:24]
    reg dataReg_10 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_10) @[Buffer.scala 13:24]
    reg dataReg_11 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_11) @[Buffer.scala 13:24]
    reg dataReg_12 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_12) @[Buffer.scala 13:24]
    reg dataReg_13 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_13) @[Buffer.scala 13:24]
    reg dataReg_14 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_14) @[Buffer.scala 13:24]
    reg dataReg_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_15) @[Buffer.scala 13:24]
    reg dataReg_16 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_16) @[Buffer.scala 13:24]
    reg dataReg_17 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_17) @[Buffer.scala 13:24]
    node _GEN_0 = mux(io_enable, io_dataIn, dataReg_0) @[Buffer.scala 15:18 Buffer.scala 16:16 Buffer.scala 35:16]
    node _GEN_1 = mux(io_enable, dataReg_0, dataReg_1) @[Buffer.scala 15:18 Buffer.scala 17:16 Buffer.scala 36:16]
    node _GEN_2 = mux(io_enable, dataReg_1, dataReg_2) @[Buffer.scala 15:18 Buffer.scala 18:16 Buffer.scala 37:16]
    node _GEN_3 = mux(io_enable, dataReg_2, dataReg_3) @[Buffer.scala 15:18 Buffer.scala 19:16 Buffer.scala 38:16]
    node _GEN_4 = mux(io_enable, dataReg_3, dataReg_4) @[Buffer.scala 15:18 Buffer.scala 20:16 Buffer.scala 39:16]
    node _GEN_5 = mux(io_enable, dataReg_4, dataReg_5) @[Buffer.scala 15:18 Buffer.scala 21:16 Buffer.scala 40:16]
    node _GEN_6 = mux(io_enable, dataReg_5, dataReg_6) @[Buffer.scala 15:18 Buffer.scala 22:16 Buffer.scala 41:16]
    node _GEN_7 = mux(io_enable, dataReg_6, dataReg_7) @[Buffer.scala 15:18 Buffer.scala 23:16 Buffer.scala 42:16]
    node _GEN_8 = mux(io_enable, dataReg_7, dataReg_8) @[Buffer.scala 15:18 Buffer.scala 24:16 Buffer.scala 43:16]
    node _GEN_9 = mux(io_enable, dataReg_8, dataReg_9) @[Buffer.scala 15:18 Buffer.scala 25:16 Buffer.scala 44:16]
    node _GEN_10 = mux(io_enable, dataReg_9, dataReg_10) @[Buffer.scala 15:18 Buffer.scala 26:17 Buffer.scala 45:17]
    node _GEN_11 = mux(io_enable, dataReg_10, dataReg_11) @[Buffer.scala 15:18 Buffer.scala 27:17 Buffer.scala 46:17]
    node _GEN_12 = mux(io_enable, dataReg_11, dataReg_12) @[Buffer.scala 15:18 Buffer.scala 28:17 Buffer.scala 47:17]
    node _GEN_13 = mux(io_enable, dataReg_12, dataReg_13) @[Buffer.scala 15:18 Buffer.scala 29:17 Buffer.scala 48:17]
    node _GEN_14 = mux(io_enable, dataReg_13, dataReg_14) @[Buffer.scala 15:18 Buffer.scala 30:17 Buffer.scala 49:17]
    node _GEN_15 = mux(io_enable, dataReg_14, dataReg_15) @[Buffer.scala 15:18 Buffer.scala 31:17 Buffer.scala 50:17]
    node _GEN_16 = mux(io_enable, dataReg_14, dataReg_16) @[Buffer.scala 15:18 Buffer.scala 32:17 Buffer.scala 51:17]
    node _GEN_17 = mux(io_enable, dataReg_16, dataReg_17) @[Buffer.scala 15:18 Buffer.scala 33:17 Buffer.scala 52:17]
    node _T = cat(dataReg_0, dataReg_1) @[Cat.scala 30:58]
    node _T_1 = cat(dataReg_2, dataReg_3) @[Cat.scala 30:58]
    node _T_2 = cat(dataReg_4, dataReg_5) @[Cat.scala 30:58]
    node _T_3 = cat(dataReg_6, dataReg_7) @[Cat.scala 30:58]
    node _T_4 = cat(dataReg_8, dataReg_9) @[Cat.scala 30:58]
    node _T_5 = cat(dataReg_10, dataReg_11) @[Cat.scala 30:58]
    node _T_6 = cat(dataReg_12, dataReg_13) @[Cat.scala 30:58]
    node _T_7 = cat(dataReg_14, dataReg_15) @[Cat.scala 30:58]
    node _T_8 = cat(dataReg_16, dataReg_17) @[Cat.scala 30:58]
    node _WIRE_0 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_1 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_2 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_3 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_4 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_5 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_6 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_7 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_8 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_9 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_10 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_11 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_12 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_13 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_14 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_15 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_16 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    node _WIRE_17 = UInt<32>("h0") @[Buffer.scala 13:32 Buffer.scala 13:32]
    io_dataOut_0 <= _T @[Buffer.scala 55:17]
    io_dataOut_1 <= _T_1 @[Buffer.scala 56:17]
    io_dataOut_2 <= _T_2 @[Buffer.scala 57:17]
    io_dataOut_3 <= _T_3 @[Buffer.scala 58:17]
    io_dataOut_4 <= _T_4 @[Buffer.scala 59:17]
    io_dataOut_5 <= _T_5 @[Buffer.scala 60:17]
    io_dataOut_6 <= _T_6 @[Buffer.scala 61:17]
    io_dataOut_7 <= _T_7 @[Buffer.scala 62:17]
    io_dataOut_8 <= _T_8 @[Buffer.scala 63:17]
    io_data_32_out_0 <= dataReg_0 @[Buffer.scala 65:18]
    io_data_32_out_1 <= dataReg_1 @[Buffer.scala 65:18]
    io_data_32_out_2 <= dataReg_2 @[Buffer.scala 65:18]
    io_data_32_out_3 <= dataReg_3 @[Buffer.scala 65:18]
    io_data_32_out_4 <= dataReg_4 @[Buffer.scala 65:18]
    io_data_32_out_5 <= dataReg_5 @[Buffer.scala 65:18]
    io_data_32_out_6 <= dataReg_6 @[Buffer.scala 65:18]
    io_data_32_out_7 <= dataReg_7 @[Buffer.scala 65:18]
    io_data_32_out_8 <= dataReg_8 @[Buffer.scala 65:18]
    io_data_32_out_9 <= dataReg_9 @[Buffer.scala 65:18]
    io_data_32_out_10 <= dataReg_10 @[Buffer.scala 65:18]
    io_data_32_out_11 <= dataReg_11 @[Buffer.scala 65:18]
    io_data_32_out_12 <= dataReg_12 @[Buffer.scala 65:18]
    io_data_32_out_13 <= dataReg_13 @[Buffer.scala 65:18]
    io_data_32_out_14 <= dataReg_14 @[Buffer.scala 65:18]
    io_data_32_out_15 <= dataReg_15 @[Buffer.scala 65:18]
    io_data_32_out_16 <= dataReg_16 @[Buffer.scala 65:18]
    io_data_32_out_17 <= dataReg_17 @[Buffer.scala 65:18]
    dataReg_0 <= mux(reset, _WIRE_0, _GEN_0) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_1 <= mux(reset, _WIRE_1, _GEN_1) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_2 <= mux(reset, _WIRE_2, _GEN_2) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_3 <= mux(reset, _WIRE_3, _GEN_3) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_4 <= mux(reset, _WIRE_4, _GEN_4) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_5 <= mux(reset, _WIRE_5, _GEN_5) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_6 <= mux(reset, _WIRE_6, _GEN_6) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_7 <= mux(reset, _WIRE_7, _GEN_7) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_8 <= mux(reset, _WIRE_8, _GEN_8) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_9 <= mux(reset, _WIRE_9, _GEN_9) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_10 <= mux(reset, _WIRE_10, _GEN_10) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_11 <= mux(reset, _WIRE_11, _GEN_11) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_12 <= mux(reset, _WIRE_12, _GEN_12) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_13 <= mux(reset, _WIRE_13, _GEN_13) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_14 <= mux(reset, _WIRE_14, _GEN_14) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_15 <= mux(reset, _WIRE_15, _GEN_15) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_16 <= mux(reset, _WIRE_16, _GEN_16) @[Buffer.scala 13:24 Buffer.scala 13:24]
    dataReg_17 <= mux(reset, _WIRE_17, _GEN_17) @[Buffer.scala 13:24 Buffer.scala 13:24]

  module Sha3 :
    input clock : Clock
    input reset : UInt<1>
    input io_data_in : UInt<32>
    input io_c_in_0 : UInt<64>
    input io_c_in_1 : UInt<64>
    input io_c_in_2 : UInt<64>
    input io_c_in_3 : UInt<64>
    input io_c_in_4 : UInt<64>
    input io_c_in_5 : UInt<64>
    input io_c_in_6 : UInt<64>
    input io_c_in_7 : UInt<64>
    input io_c_in_8 : UInt<64>
    input io_c_in_9 : UInt<64>
    input io_c_in_10 : UInt<64>
    input io_c_in_11 : UInt<64>
    input io_c_in_12 : UInt<64>
    input io_c_in_13 : UInt<64>
    input io_c_in_14 : UInt<64>
    input io_c_in_15 : UInt<64>
    input io_buffer_ready : UInt<1>
    input io_enable_buffer : UInt<1>
    output io_result : UInt<512>
    output io_round_out_0_0 : UInt<64>
    output io_round_out_0_1 : UInt<64>
    output io_round_out_0_2 : UInt<64>
    output io_round_out_0_3 : UInt<64>
    output io_round_out_0_4 : UInt<64>
    output io_round_out_1_0 : UInt<64>
    output io_round_out_1_1 : UInt<64>
    output io_round_out_1_2 : UInt<64>
    output io_round_out_1_3 : UInt<64>
    output io_round_out_1_4 : UInt<64>
    output io_round_out_2_0 : UInt<64>
    output io_round_out_2_1 : UInt<64>
    output io_round_out_2_2 : UInt<64>
    output io_round_out_2_3 : UInt<64>
    output io_round_out_2_4 : UInt<64>
    output io_round_out_3_0 : UInt<64>
    output io_round_out_3_1 : UInt<64>
    output io_round_out_3_2 : UInt<64>
    output io_round_out_3_3 : UInt<64>
    output io_round_out_3_4 : UInt<64>
    output io_round_out_4_0 : UInt<64>
    output io_round_out_4_1 : UInt<64>
    output io_round_out_4_2 : UInt<64>
    output io_round_out_4_3 : UInt<64>
    output io_round_out_4_4 : UInt<64>
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
    output io_rhoPi_out_0_0 : UInt<64>
    output io_rhoPi_out_0_1 : UInt<64>
    output io_rhoPi_out_0_2 : UInt<64>
    output io_rhoPi_out_0_3 : UInt<64>
    output io_rhoPi_out_0_4 : UInt<64>
    output io_rhoPi_out_1_0 : UInt<64>
    output io_rhoPi_out_1_1 : UInt<64>
    output io_rhoPi_out_1_2 : UInt<64>
    output io_rhoPi_out_1_3 : UInt<64>
    output io_rhoPi_out_1_4 : UInt<64>
    output io_rhoPi_out_2_0 : UInt<64>
    output io_rhoPi_out_2_1 : UInt<64>
    output io_rhoPi_out_2_2 : UInt<64>
    output io_rhoPi_out_2_3 : UInt<64>
    output io_rhoPi_out_2_4 : UInt<64>
    output io_rhoPi_out_3_0 : UInt<64>
    output io_rhoPi_out_3_1 : UInt<64>
    output io_rhoPi_out_3_2 : UInt<64>
    output io_rhoPi_out_3_3 : UInt<64>
    output io_rhoPi_out_3_4 : UInt<64>
    output io_rhoPi_out_4_0 : UInt<64>
    output io_rhoPi_out_4_1 : UInt<64>
    output io_rhoPi_out_4_2 : UInt<64>
    output io_rhoPi_out_4_3 : UInt<64>
    output io_rhoPi_out_4_4 : UInt<64>
    output io_chi_out_0_0 : UInt<64>
    output io_chi_out_0_1 : UInt<64>
    output io_chi_out_0_2 : UInt<64>
    output io_chi_out_0_3 : UInt<64>
    output io_chi_out_0_4 : UInt<64>
    output io_chi_out_1_0 : UInt<64>
    output io_chi_out_1_1 : UInt<64>
    output io_chi_out_1_2 : UInt<64>
    output io_chi_out_1_3 : UInt<64>
    output io_chi_out_1_4 : UInt<64>
    output io_chi_out_2_0 : UInt<64>
    output io_chi_out_2_1 : UInt<64>
    output io_chi_out_2_2 : UInt<64>
    output io_chi_out_2_3 : UInt<64>
    output io_chi_out_2_4 : UInt<64>
    output io_chi_out_3_0 : UInt<64>
    output io_chi_out_3_1 : UInt<64>
    output io_chi_out_3_2 : UInt<64>
    output io_chi_out_3_3 : UInt<64>
    output io_chi_out_3_4 : UInt<64>
    output io_chi_out_4_0 : UInt<64>
    output io_chi_out_4_1 : UInt<64>
    output io_chi_out_4_2 : UInt<64>
    output io_chi_out_4_3 : UInt<64>
    output io_chi_out_4_4 : UInt<64>
    output io_iota_out : UInt<64>
    output io_iota_xor_val_out : UInt<64>
    output io_iota_round : UInt<64>
    output io_round_in_0_0 : UInt<64>
    output io_round_in_0_1 : UInt<64>
    output io_round_in_0_2 : UInt<64>
    output io_round_in_0_3 : UInt<64>
    output io_round_in_0_4 : UInt<64>
    output io_round_in_1_0 : UInt<64>
    output io_round_in_1_1 : UInt<64>
    output io_round_in_1_2 : UInt<64>
    output io_round_in_1_3 : UInt<64>
    output io_round_in_1_4 : UInt<64>
    output io_round_in_2_0 : UInt<64>
    output io_round_in_2_1 : UInt<64>
    output io_round_in_2_2 : UInt<64>
    output io_round_in_2_3 : UInt<64>
    output io_round_in_2_4 : UInt<64>
    output io_round_in_3_0 : UInt<64>
    output io_round_in_3_1 : UInt<64>
    output io_round_in_3_2 : UInt<64>
    output io_round_in_3_3 : UInt<64>
    output io_round_in_3_4 : UInt<64>
    output io_round_in_4_0 : UInt<64>
    output io_round_in_4_1 : UInt<64>
    output io_round_in_4_2 : UInt<64>
    output io_round_in_4_3 : UInt<64>
    output io_round_in_4_4 : UInt<64>
    output io_IObuffer_content_0 : UInt<64>
    output io_IObuffer_content_1 : UInt<64>
    output io_IObuffer_content_2 : UInt<64>
    output io_IObuffer_content_3 : UInt<64>
    output io_IObuffer_content_4 : UInt<64>
    output io_IObuffer_content_5 : UInt<64>
    output io_IObuffer_content_6 : UInt<64>
    output io_IObuffer_content_7 : UInt<64>
    output io_IObuffer_content_8 : UInt<64>
    output io_register_out_0_0 : UInt<64>
    output io_register_out_0_1 : UInt<64>
    output io_register_out_0_2 : UInt<64>
    output io_register_out_0_3 : UInt<64>
    output io_register_out_0_4 : UInt<64>
    output io_register_out_1_0 : UInt<64>
    output io_register_out_1_1 : UInt<64>
    output io_register_out_1_2 : UInt<64>
    output io_register_out_1_3 : UInt<64>
    output io_register_out_1_4 : UInt<64>
    output io_register_out_2_0 : UInt<64>
    output io_register_out_2_1 : UInt<64>
    output io_register_out_2_2 : UInt<64>
    output io_register_out_2_3 : UInt<64>
    output io_register_out_2_4 : UInt<64>
    output io_register_out_3_0 : UInt<64>
    output io_register_out_3_1 : UInt<64>
    output io_register_out_3_2 : UInt<64>
    output io_register_out_3_3 : UInt<64>
    output io_register_out_3_4 : UInt<64>
    output io_register_out_4_0 : UInt<64>
    output io_register_out_4_1 : UInt<64>
    output io_register_out_4_2 : UInt<64>
    output io_register_out_4_3 : UInt<64>
    output io_register_out_4_4 : UInt<64>

    inst round of Round @[Sha3.scala 34:24]
    inst buffer of Buffer @[Sha3.scala 35:24]
    reg stateReg_0_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_0_0) @[Sha3.scala 37:25]
    reg stateReg_0_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_0_1) @[Sha3.scala 37:25]
    reg stateReg_0_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_0_2) @[Sha3.scala 37:25]
    reg stateReg_0_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_0_3) @[Sha3.scala 37:25]
    reg stateReg_0_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_0_4) @[Sha3.scala 37:25]
    reg stateReg_1_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_1_0) @[Sha3.scala 37:25]
    reg stateReg_1_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_1_1) @[Sha3.scala 37:25]
    reg stateReg_1_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_1_2) @[Sha3.scala 37:25]
    reg stateReg_1_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_1_3) @[Sha3.scala 37:25]
    reg stateReg_1_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_1_4) @[Sha3.scala 37:25]
    reg stateReg_2_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_2_0) @[Sha3.scala 37:25]
    reg stateReg_2_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_2_1) @[Sha3.scala 37:25]
    reg stateReg_2_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_2_2) @[Sha3.scala 37:25]
    reg stateReg_2_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_2_3) @[Sha3.scala 37:25]
    reg stateReg_2_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_2_4) @[Sha3.scala 37:25]
    reg stateReg_3_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_3_0) @[Sha3.scala 37:25]
    reg stateReg_3_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_3_1) @[Sha3.scala 37:25]
    reg stateReg_3_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_3_2) @[Sha3.scala 37:25]
    reg stateReg_3_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_3_3) @[Sha3.scala 37:25]
    reg stateReg_3_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_3_4) @[Sha3.scala 37:25]
    reg stateReg_4_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_4_0) @[Sha3.scala 37:25]
    reg stateReg_4_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_4_1) @[Sha3.scala 37:25]
    reg stateReg_4_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_4_2) @[Sha3.scala 37:25]
    reg stateReg_4_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_4_3) @[Sha3.scala 37:25]
    reg stateReg_4_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), stateReg_4_4) @[Sha3.scala 37:25]
    reg next_state : UInt<2>, clock with :
      reset => (UInt<1>("h0"), next_state) @[Sha3.scala 42:30]
    reg xor_select : UInt<1>, clock with :
      reset => (UInt<1>("h0"), xor_select) @[Sha3.scala 43:30]
    reg iota_round : UInt<16>, clock with :
      reset => (UInt<1>("h0"), iota_round) @[Sha3.scala 44:30]
    node _T = eq(UInt<2>("h0"), next_state) @[Conditional.scala 37:30]
    node _GEN_0 = mux(io_buffer_ready, UInt<2>("h1"), UInt<2>("h0")) @[Sha3.scala 76:28 Sha3.scala 77:21 Sha3.scala 79:20]
    node _T_1 = eq(UInt<2>("h1"), next_state) @[Conditional.scala 37:30]
    node _T_2 = lt(iota_round, UInt<5>("h17")) @[Sha3.scala 85:23]
    node _T_3 = add(iota_round, UInt<1>("h1")) @[Sha3.scala 87:34]
    node _T_4 = tail(_T_3, 1) @[Sha3.scala 87:34]
    node _GEN_1 = mux(_T_2, UInt<2>("h1"), UInt<2>("h0")) @[Sha3.scala 85:30 Sha3.scala 86:20 Sha3.scala 90:20]
    node _GEN_2 = mux(_T_2, _T_4, iota_round) @[Sha3.scala 85:30 Sha3.scala 87:20 Sha3.scala 89:20]
    node _GEN_3 = mux(_T_1, UInt<1>("h0"), xor_select) @[Conditional.scala 39:67 Sha3.scala 83:18 Sha3.scala 43:30]
    node _GEN_4 = mux(_T_1, round.io_round_out_0_0, stateReg_0_0) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_5 = mux(_T_1, round.io_round_out_0_1, stateReg_0_1) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_6 = mux(_T_1, round.io_round_out_0_2, stateReg_0_2) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_7 = mux(_T_1, round.io_round_out_0_3, stateReg_0_3) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_8 = mux(_T_1, round.io_round_out_0_4, stateReg_0_4) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_9 = mux(_T_1, round.io_round_out_1_0, stateReg_1_0) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_10 = mux(_T_1, round.io_round_out_1_1, stateReg_1_1) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_11 = mux(_T_1, round.io_round_out_1_2, stateReg_1_2) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_12 = mux(_T_1, round.io_round_out_1_3, stateReg_1_3) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_13 = mux(_T_1, round.io_round_out_1_4, stateReg_1_4) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_14 = mux(_T_1, round.io_round_out_2_0, stateReg_2_0) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_15 = mux(_T_1, round.io_round_out_2_1, stateReg_2_1) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_16 = mux(_T_1, round.io_round_out_2_2, stateReg_2_2) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_17 = mux(_T_1, round.io_round_out_2_3, stateReg_2_3) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_18 = mux(_T_1, round.io_round_out_2_4, stateReg_2_4) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_19 = mux(_T_1, round.io_round_out_3_0, stateReg_3_0) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_20 = mux(_T_1, round.io_round_out_3_1, stateReg_3_1) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_21 = mux(_T_1, round.io_round_out_3_2, stateReg_3_2) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_22 = mux(_T_1, round.io_round_out_3_3, stateReg_3_3) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_23 = mux(_T_1, round.io_round_out_3_4, stateReg_3_4) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_24 = mux(_T_1, round.io_round_out_4_0, stateReg_4_0) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_25 = mux(_T_1, round.io_round_out_4_1, stateReg_4_1) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_26 = mux(_T_1, round.io_round_out_4_2, stateReg_4_2) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_27 = mux(_T_1, round.io_round_out_4_3, stateReg_4_3) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_28 = mux(_T_1, round.io_round_out_4_4, stateReg_4_4) @[Conditional.scala 39:67 Sha3.scala 84:18 Sha3.scala 37:25]
    node _GEN_29 = mux(_T_1, _GEN_1, next_state) @[Conditional.scala 39:67 Sha3.scala 42:30]
    node _GEN_30 = mux(_T_1, _GEN_2, iota_round) @[Conditional.scala 39:67 Sha3.scala 44:30]
    node _GEN_31 = mux(_T, UInt<1>("h1"), _GEN_3) @[Conditional.scala 40:58 Sha3.scala 74:18]
    node _GEN_32 = mux(_T, UInt<1>("h0"), _GEN_30) @[Conditional.scala 40:58 Sha3.scala 75:18]
    node _GEN_33 = mux(_T, _GEN_0, _GEN_29) @[Conditional.scala 40:58]
    node _GEN_34 = mux(_T, stateReg_0_0, _GEN_4) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_35 = mux(_T, stateReg_0_1, _GEN_5) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_36 = mux(_T, stateReg_0_2, _GEN_6) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_37 = mux(_T, stateReg_0_3, _GEN_7) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_38 = mux(_T, stateReg_0_4, _GEN_8) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_39 = mux(_T, stateReg_1_0, _GEN_9) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_40 = mux(_T, stateReg_1_1, _GEN_10) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_41 = mux(_T, stateReg_1_2, _GEN_11) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_42 = mux(_T, stateReg_1_3, _GEN_12) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_43 = mux(_T, stateReg_1_4, _GEN_13) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_44 = mux(_T, stateReg_2_0, _GEN_14) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_45 = mux(_T, stateReg_2_1, _GEN_15) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_46 = mux(_T, stateReg_2_2, _GEN_16) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_47 = mux(_T, stateReg_2_3, _GEN_17) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_48 = mux(_T, stateReg_2_4, _GEN_18) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_49 = mux(_T, stateReg_3_0, _GEN_19) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_50 = mux(_T, stateReg_3_1, _GEN_20) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_51 = mux(_T, stateReg_3_2, _GEN_21) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_52 = mux(_T, stateReg_3_3, _GEN_22) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_53 = mux(_T, stateReg_3_4, _GEN_23) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_54 = mux(_T, stateReg_4_0, _GEN_24) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_55 = mux(_T, stateReg_4_1, _GEN_25) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_56 = mux(_T, stateReg_4_2, _GEN_26) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_57 = mux(_T, stateReg_4_3, _GEN_27) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _GEN_58 = mux(_T, stateReg_4_4, _GEN_28) @[Conditional.scala 40:58 Sha3.scala 37:25]
    node _T_5 = xor(buffer.io_dataOut_8, stateReg_0_0) @[Sha3.scala 108:52]
    node _T_6 = xor(buffer.io_dataOut_7, stateReg_1_0) @[Sha3.scala 109:52]
    node _T_7 = xor(buffer.io_dataOut_6, stateReg_2_0) @[Sha3.scala 110:52]
    node _T_8 = xor(buffer.io_dataOut_5, stateReg_3_0) @[Sha3.scala 111:52]
    node _T_9 = xor(buffer.io_dataOut_4, stateReg_4_0) @[Sha3.scala 112:52]
    node _T_10 = xor(buffer.io_dataOut_3, stateReg_0_1) @[Sha3.scala 113:52]
    node _T_11 = xor(buffer.io_dataOut_2, stateReg_1_1) @[Sha3.scala 114:52]
    node _T_12 = xor(buffer.io_dataOut_1, stateReg_2_1) @[Sha3.scala 115:52]
    node _T_13 = xor(buffer.io_dataOut_0, stateReg_3_1) @[Sha3.scala 116:52]
    node _GEN_59 = mux(xor_select, _T_5, stateReg_0_0) @[Sha3.scala 107:19 Sha3.scala 108:29 Sha3.scala 118:29]
    node _GEN_60 = mux(xor_select, _T_6, stateReg_1_0) @[Sha3.scala 107:19 Sha3.scala 109:29 Sha3.scala 119:29]
    node _GEN_61 = mux(xor_select, _T_7, stateReg_2_0) @[Sha3.scala 107:19 Sha3.scala 110:29 Sha3.scala 120:29]
    node _GEN_62 = mux(xor_select, _T_8, stateReg_3_0) @[Sha3.scala 107:19 Sha3.scala 111:29 Sha3.scala 121:29]
    node _GEN_63 = mux(xor_select, _T_9, stateReg_4_0) @[Sha3.scala 107:19 Sha3.scala 112:29 Sha3.scala 122:29]
    node _GEN_64 = mux(xor_select, _T_10, stateReg_0_1) @[Sha3.scala 107:19 Sha3.scala 113:29 Sha3.scala 123:29]
    node _GEN_65 = mux(xor_select, _T_11, stateReg_1_1) @[Sha3.scala 107:19 Sha3.scala 114:29 Sha3.scala 124:29]
    node _GEN_66 = mux(xor_select, _T_12, stateReg_2_1) @[Sha3.scala 107:19 Sha3.scala 115:29 Sha3.scala 125:29]
    node _GEN_67 = mux(xor_select, _T_13, stateReg_3_1) @[Sha3.scala 107:19 Sha3.scala 116:29 Sha3.scala 126:29]
    node hi_hi_hi_hi_hi_hi = bits(stateReg_0_0, 7, 0) @[Sha3.scala 165:39]
    node hi_hi_hi_hi_hi_lo = bits(stateReg_0_0, 15, 8) @[Sha3.scala 166:39]
    node hi_hi_hi_hi_lo_hi = bits(stateReg_0_0, 23, 16) @[Sha3.scala 167:39]
    node hi_hi_hi_hi_lo_lo = bits(stateReg_0_0, 31, 24) @[Sha3.scala 168:39]
    node hi_hi_hi_lo_hi_hi = bits(stateReg_0_0, 39, 32) @[Sha3.scala 169:39]
    node hi_hi_hi_lo_hi_lo = bits(stateReg_0_0, 47, 40) @[Sha3.scala 170:39]
    node hi_hi_hi_lo_lo_hi = bits(stateReg_0_0, 55, 48) @[Sha3.scala 171:39]
    node hi_hi_hi_lo_lo_lo = bits(stateReg_0_0, 63, 56) @[Sha3.scala 172:39]
    node hi_hi_lo_hi_hi_hi = bits(stateReg_1_0, 7, 0) @[Sha3.scala 174:39]
    node hi_hi_lo_hi_hi_lo = bits(stateReg_1_0, 15, 8) @[Sha3.scala 175:39]
    node hi_hi_lo_hi_lo_hi = bits(stateReg_1_0, 23, 16) @[Sha3.scala 176:39]
    node hi_hi_lo_hi_lo_lo = bits(stateReg_1_0, 31, 24) @[Sha3.scala 177:39]
    node hi_hi_lo_lo_hi_hi = bits(stateReg_1_0, 39, 32) @[Sha3.scala 178:39]
    node hi_hi_lo_lo_hi_lo = bits(stateReg_1_0, 47, 40) @[Sha3.scala 179:39]
    node hi_hi_lo_lo_lo_hi = bits(stateReg_1_0, 55, 48) @[Sha3.scala 180:39]
    node hi_hi_lo_lo_lo_lo = bits(stateReg_1_0, 63, 56) @[Sha3.scala 181:39]
    node hi_lo_hi_hi_hi_hi = bits(stateReg_2_0, 7, 0) @[Sha3.scala 183:39]
    node hi_lo_hi_hi_hi_lo = bits(stateReg_2_0, 15, 8) @[Sha3.scala 184:39]
    node hi_lo_hi_hi_lo_hi = bits(stateReg_2_0, 23, 16) @[Sha3.scala 185:39]
    node hi_lo_hi_hi_lo_lo = bits(stateReg_2_0, 31, 24) @[Sha3.scala 186:39]
    node hi_lo_hi_lo_hi_hi = bits(stateReg_2_0, 39, 32) @[Sha3.scala 187:39]
    node hi_lo_hi_lo_hi_lo = bits(stateReg_2_0, 47, 40) @[Sha3.scala 188:39]
    node hi_lo_hi_lo_lo_hi = bits(stateReg_2_0, 55, 48) @[Sha3.scala 189:39]
    node hi_lo_hi_lo_lo_lo = bits(stateReg_2_0, 63, 56) @[Sha3.scala 190:39]
    node hi_lo_lo_hi_hi_hi = bits(stateReg_3_0, 7, 0) @[Sha3.scala 193:39]
    node hi_lo_lo_hi_hi_lo = bits(stateReg_3_0, 15, 8) @[Sha3.scala 194:39]
    node hi_lo_lo_hi_lo_hi = bits(stateReg_3_0, 23, 16) @[Sha3.scala 195:39]
    node hi_lo_lo_hi_lo_lo = bits(stateReg_3_0, 31, 24) @[Sha3.scala 196:39]
    node hi_lo_lo_lo_hi_hi = bits(stateReg_3_0, 39, 32) @[Sha3.scala 197:39]
    node hi_lo_lo_lo_hi_lo = bits(stateReg_3_0, 47, 40) @[Sha3.scala 198:39]
    node hi_lo_lo_lo_lo_hi = bits(stateReg_3_0, 55, 48) @[Sha3.scala 199:39]
    node hi_lo_lo_lo_lo_lo = bits(stateReg_3_0, 63, 56) @[Sha3.scala 200:39]
    node lo_hi_hi_hi_hi_hi = bits(stateReg_4_0, 7, 0) @[Sha3.scala 203:39]
    node lo_hi_hi_hi_hi_lo = bits(stateReg_4_0, 15, 8) @[Sha3.scala 204:39]
    node lo_hi_hi_hi_lo_hi = bits(stateReg_4_0, 23, 16) @[Sha3.scala 205:39]
    node lo_hi_hi_hi_lo_lo = bits(stateReg_4_0, 31, 24) @[Sha3.scala 206:39]
    node lo_hi_hi_lo_hi_hi = bits(stateReg_4_0, 39, 32) @[Sha3.scala 207:39]
    node lo_hi_hi_lo_hi_lo = bits(stateReg_4_0, 47, 40) @[Sha3.scala 208:39]
    node lo_hi_hi_lo_lo_hi = bits(stateReg_4_0, 55, 48) @[Sha3.scala 209:39]
    node lo_hi_hi_lo_lo_lo = bits(stateReg_4_0, 63, 56) @[Sha3.scala 210:39]
    node lo_hi_lo_hi_hi_hi = bits(stateReg_0_1, 7, 0) @[Sha3.scala 212:39]
    node lo_hi_lo_hi_hi_lo = bits(stateReg_0_1, 15, 8) @[Sha3.scala 213:39]
    node lo_hi_lo_hi_lo_hi = bits(stateReg_0_1, 23, 16) @[Sha3.scala 214:39]
    node lo_hi_lo_hi_lo_lo = bits(stateReg_0_1, 31, 24) @[Sha3.scala 215:39]
    node lo_hi_lo_lo_hi_hi = bits(stateReg_0_1, 39, 32) @[Sha3.scala 216:39]
    node lo_hi_lo_lo_hi_lo = bits(stateReg_0_1, 47, 40) @[Sha3.scala 217:39]
    node lo_hi_lo_lo_lo_hi = bits(stateReg_0_1, 55, 48) @[Sha3.scala 218:39]
    node lo_hi_lo_lo_lo_lo = bits(stateReg_0_1, 63, 56) @[Sha3.scala 219:39]
    node lo_lo_hi_hi_hi_hi = bits(stateReg_1_1, 7, 0) @[Sha3.scala 221:39]
    node lo_lo_hi_hi_hi_lo = bits(stateReg_1_1, 15, 8) @[Sha3.scala 222:39]
    node lo_lo_hi_hi_lo_hi = bits(stateReg_1_1, 23, 16) @[Sha3.scala 223:39]
    node lo_lo_hi_hi_lo_lo = bits(stateReg_1_1, 31, 24) @[Sha3.scala 224:39]
    node lo_lo_hi_lo_hi_hi = bits(stateReg_1_1, 39, 32) @[Sha3.scala 225:39]
    node lo_lo_hi_lo_hi_lo = bits(stateReg_1_1, 47, 40) @[Sha3.scala 226:39]
    node lo_lo_hi_lo_lo_hi = bits(stateReg_1_1, 55, 48) @[Sha3.scala 227:39]
    node lo_lo_hi_lo_lo_lo = bits(stateReg_1_1, 63, 56) @[Sha3.scala 228:39]
    node lo_lo_lo_hi_hi_hi = bits(stateReg_2_1, 7, 0) @[Sha3.scala 230:39]
    node lo_lo_lo_hi_hi_lo = bits(stateReg_2_1, 15, 8) @[Sha3.scala 231:39]
    node lo_lo_lo_hi_lo_hi = bits(stateReg_2_1, 23, 16) @[Sha3.scala 232:39]
    node lo_lo_lo_hi_lo_lo = bits(stateReg_2_1, 31, 24) @[Sha3.scala 233:39]
    node lo_lo_lo_lo_hi_hi = bits(stateReg_2_1, 39, 32) @[Sha3.scala 234:39]
    node lo_lo_lo_lo_hi_lo = bits(stateReg_2_1, 47, 40) @[Sha3.scala 235:39]
    node lo_lo_lo_lo_lo_hi = bits(stateReg_2_1, 55, 48) @[Sha3.scala 236:39]
    node lo_lo_lo_lo_lo_lo = bits(stateReg_2_1, 63, 56) @[Sha3.scala 237:39]
    node lo_lo_lo_lo_lo = cat(lo_lo_lo_lo_lo_hi, lo_lo_lo_lo_lo_lo) @[Cat.scala 30:58]
    node lo_lo_lo_lo_hi = cat(lo_lo_lo_lo_hi_hi, lo_lo_lo_lo_hi_lo) @[Cat.scala 30:58]
    node lo_lo_lo_lo = cat(lo_lo_lo_lo_hi, lo_lo_lo_lo_lo) @[Cat.scala 30:58]
    node lo_lo_lo_hi_lo = cat(lo_lo_lo_hi_lo_hi, lo_lo_lo_hi_lo_lo) @[Cat.scala 30:58]
    node lo_lo_lo_hi_hi = cat(lo_lo_lo_hi_hi_hi, lo_lo_lo_hi_hi_lo) @[Cat.scala 30:58]
    node lo_lo_lo_hi = cat(lo_lo_lo_hi_hi, lo_lo_lo_hi_lo) @[Cat.scala 30:58]
    node lo_lo_lo = cat(lo_lo_lo_hi, lo_lo_lo_lo) @[Cat.scala 30:58]
    node lo_lo_hi_lo_lo = cat(lo_lo_hi_lo_lo_hi, lo_lo_hi_lo_lo_lo) @[Cat.scala 30:58]
    node lo_lo_hi_lo_hi = cat(lo_lo_hi_lo_hi_hi, lo_lo_hi_lo_hi_lo) @[Cat.scala 30:58]
    node lo_lo_hi_lo = cat(lo_lo_hi_lo_hi, lo_lo_hi_lo_lo) @[Cat.scala 30:58]
    node lo_lo_hi_hi_lo = cat(lo_lo_hi_hi_lo_hi, lo_lo_hi_hi_lo_lo) @[Cat.scala 30:58]
    node lo_lo_hi_hi_hi = cat(lo_lo_hi_hi_hi_hi, lo_lo_hi_hi_hi_lo) @[Cat.scala 30:58]
    node lo_lo_hi_hi = cat(lo_lo_hi_hi_hi, lo_lo_hi_hi_lo) @[Cat.scala 30:58]
    node lo_lo_hi = cat(lo_lo_hi_hi, lo_lo_hi_lo) @[Cat.scala 30:58]
    node lo_lo = cat(lo_lo_hi, lo_lo_lo) @[Cat.scala 30:58]
    node lo_hi_lo_lo_lo = cat(lo_hi_lo_lo_lo_hi, lo_hi_lo_lo_lo_lo) @[Cat.scala 30:58]
    node lo_hi_lo_lo_hi = cat(lo_hi_lo_lo_hi_hi, lo_hi_lo_lo_hi_lo) @[Cat.scala 30:58]
    node lo_hi_lo_lo = cat(lo_hi_lo_lo_hi, lo_hi_lo_lo_lo) @[Cat.scala 30:58]
    node lo_hi_lo_hi_lo = cat(lo_hi_lo_hi_lo_hi, lo_hi_lo_hi_lo_lo) @[Cat.scala 30:58]
    node lo_hi_lo_hi_hi = cat(lo_hi_lo_hi_hi_hi, lo_hi_lo_hi_hi_lo) @[Cat.scala 30:58]
    node lo_hi_lo_hi = cat(lo_hi_lo_hi_hi, lo_hi_lo_hi_lo) @[Cat.scala 30:58]
    node lo_hi_lo = cat(lo_hi_lo_hi, lo_hi_lo_lo) @[Cat.scala 30:58]
    node lo_hi_hi_lo_lo = cat(lo_hi_hi_lo_lo_hi, lo_hi_hi_lo_lo_lo) @[Cat.scala 30:58]
    node lo_hi_hi_lo_hi = cat(lo_hi_hi_lo_hi_hi, lo_hi_hi_lo_hi_lo) @[Cat.scala 30:58]
    node lo_hi_hi_lo = cat(lo_hi_hi_lo_hi, lo_hi_hi_lo_lo) @[Cat.scala 30:58]
    node lo_hi_hi_hi_lo = cat(lo_hi_hi_hi_lo_hi, lo_hi_hi_hi_lo_lo) @[Cat.scala 30:58]
    node lo_hi_hi_hi_hi = cat(lo_hi_hi_hi_hi_hi, lo_hi_hi_hi_hi_lo) @[Cat.scala 30:58]
    node lo_hi_hi_hi = cat(lo_hi_hi_hi_hi, lo_hi_hi_hi_lo) @[Cat.scala 30:58]
    node lo_hi_hi = cat(lo_hi_hi_hi, lo_hi_hi_lo) @[Cat.scala 30:58]
    node lo_hi = cat(lo_hi_hi, lo_hi_lo) @[Cat.scala 30:58]
    node lo = cat(lo_hi, lo_lo) @[Cat.scala 30:58]
    node hi_lo_lo_lo_lo = cat(hi_lo_lo_lo_lo_hi, hi_lo_lo_lo_lo_lo) @[Cat.scala 30:58]
    node hi_lo_lo_lo_hi = cat(hi_lo_lo_lo_hi_hi, hi_lo_lo_lo_hi_lo) @[Cat.scala 30:58]
    node hi_lo_lo_lo = cat(hi_lo_lo_lo_hi, hi_lo_lo_lo_lo) @[Cat.scala 30:58]
    node hi_lo_lo_hi_lo = cat(hi_lo_lo_hi_lo_hi, hi_lo_lo_hi_lo_lo) @[Cat.scala 30:58]
    node hi_lo_lo_hi_hi = cat(hi_lo_lo_hi_hi_hi, hi_lo_lo_hi_hi_lo) @[Cat.scala 30:58]
    node hi_lo_lo_hi = cat(hi_lo_lo_hi_hi, hi_lo_lo_hi_lo) @[Cat.scala 30:58]
    node hi_lo_lo = cat(hi_lo_lo_hi, hi_lo_lo_lo) @[Cat.scala 30:58]
    node hi_lo_hi_lo_lo = cat(hi_lo_hi_lo_lo_hi, hi_lo_hi_lo_lo_lo) @[Cat.scala 30:58]
    node hi_lo_hi_lo_hi = cat(hi_lo_hi_lo_hi_hi, hi_lo_hi_lo_hi_lo) @[Cat.scala 30:58]
    node hi_lo_hi_lo = cat(hi_lo_hi_lo_hi, hi_lo_hi_lo_lo) @[Cat.scala 30:58]
    node hi_lo_hi_hi_lo = cat(hi_lo_hi_hi_lo_hi, hi_lo_hi_hi_lo_lo) @[Cat.scala 30:58]
    node hi_lo_hi_hi_hi = cat(hi_lo_hi_hi_hi_hi, hi_lo_hi_hi_hi_lo) @[Cat.scala 30:58]
    node hi_lo_hi_hi = cat(hi_lo_hi_hi_hi, hi_lo_hi_hi_lo) @[Cat.scala 30:58]
    node hi_lo_hi = cat(hi_lo_hi_hi, hi_lo_hi_lo) @[Cat.scala 30:58]
    node hi_lo = cat(hi_lo_hi, hi_lo_lo) @[Cat.scala 30:58]
    node hi_hi_lo_lo_lo = cat(hi_hi_lo_lo_lo_hi, hi_hi_lo_lo_lo_lo) @[Cat.scala 30:58]
    node hi_hi_lo_lo_hi = cat(hi_hi_lo_lo_hi_hi, hi_hi_lo_lo_hi_lo) @[Cat.scala 30:58]
    node hi_hi_lo_lo = cat(hi_hi_lo_lo_hi, hi_hi_lo_lo_lo) @[Cat.scala 30:58]
    node hi_hi_lo_hi_lo = cat(hi_hi_lo_hi_lo_hi, hi_hi_lo_hi_lo_lo) @[Cat.scala 30:58]
    node hi_hi_lo_hi_hi = cat(hi_hi_lo_hi_hi_hi, hi_hi_lo_hi_hi_lo) @[Cat.scala 30:58]
    node hi_hi_lo_hi = cat(hi_hi_lo_hi_hi, hi_hi_lo_hi_lo) @[Cat.scala 30:58]
    node hi_hi_lo = cat(hi_hi_lo_hi, hi_hi_lo_lo) @[Cat.scala 30:58]
    node hi_hi_hi_lo_lo = cat(hi_hi_hi_lo_lo_hi, hi_hi_hi_lo_lo_lo) @[Cat.scala 30:58]
    node hi_hi_hi_lo_hi = cat(hi_hi_hi_lo_hi_hi, hi_hi_hi_lo_hi_lo) @[Cat.scala 30:58]
    node hi_hi_hi_lo = cat(hi_hi_hi_lo_hi, hi_hi_hi_lo_lo) @[Cat.scala 30:58]
    node hi_hi_hi_hi_lo = cat(hi_hi_hi_hi_lo_hi, hi_hi_hi_hi_lo_lo) @[Cat.scala 30:58]
    node hi_hi_hi_hi_hi = cat(hi_hi_hi_hi_hi_hi, hi_hi_hi_hi_hi_lo) @[Cat.scala 30:58]
    node hi_hi_hi_hi = cat(hi_hi_hi_hi_hi, hi_hi_hi_hi_lo) @[Cat.scala 30:58]
    node hi_hi_hi = cat(hi_hi_hi_hi, hi_hi_hi_lo) @[Cat.scala 30:58]
    node hi_hi = cat(hi_hi_hi, hi_hi_lo) @[Cat.scala 30:58]
    node hi = cat(hi_hi, hi_lo) @[Cat.scala 30:58]
    node _T_14 = cat(hi, lo) @[Cat.scala 30:58]
    node _WIRE__0 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE__1 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE__2 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE__3 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE__4 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_1_0 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_1_1 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_1_2 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_1_3 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_1_4 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_2_0 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_2_1 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_2_2 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_2_3 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_2_4 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_3_0 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_3_1 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_3_2 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_3_3 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_3_4 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_4_0 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_4_1 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_4_2 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_4_3 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_4_4 = UInt<64>("h0") @[Sha3.scala 37:53 Sha3.scala 37:53]
    node _WIRE_5_0_0 = _WIRE__0 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_0_1 = _WIRE__1 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_0_2 = _WIRE__2 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_0_3 = _WIRE__3 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_0_4 = _WIRE__4 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_1_0 = _WIRE_1_0 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_1_1 = _WIRE_1_1 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_1_2 = _WIRE_1_2 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_1_3 = _WIRE_1_3 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_1_4 = _WIRE_1_4 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_2_0 = _WIRE_2_0 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_2_1 = _WIRE_2_1 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_2_2 = _WIRE_2_2 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_2_3 = _WIRE_2_3 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_2_4 = _WIRE_2_4 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_3_0 = _WIRE_3_0 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_3_1 = _WIRE_3_1 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_3_2 = _WIRE_3_2 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_3_3 = _WIRE_3_3 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_3_4 = _WIRE_3_4 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_4_0 = _WIRE_4_0 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_4_1 = _WIRE_4_1 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_4_2 = _WIRE_4_2 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_4_3 = _WIRE_4_3 @[Sha3.scala 37:33 Sha3.scala 37:33]
    node _WIRE_5_4_4 = _WIRE_4_4 @[Sha3.scala 37:33 Sha3.scala 37:33]
    io_result <= _T_14 @[Sha3.scala 164:13]
    io_round_out_0_0 <= round.io_round_out_0_0 @[Sha3.scala 67:26]
    io_round_out_0_1 <= round.io_round_out_0_1 @[Sha3.scala 67:26]
    io_round_out_0_2 <= round.io_round_out_0_2 @[Sha3.scala 67:26]
    io_round_out_0_3 <= round.io_round_out_0_3 @[Sha3.scala 67:26]
    io_round_out_0_4 <= round.io_round_out_0_4 @[Sha3.scala 67:26]
    io_round_out_1_0 <= round.io_round_out_1_0 @[Sha3.scala 67:26]
    io_round_out_1_1 <= round.io_round_out_1_1 @[Sha3.scala 67:26]
    io_round_out_1_2 <= round.io_round_out_1_2 @[Sha3.scala 67:26]
    io_round_out_1_3 <= round.io_round_out_1_3 @[Sha3.scala 67:26]
    io_round_out_1_4 <= round.io_round_out_1_4 @[Sha3.scala 67:26]
    io_round_out_2_0 <= round.io_round_out_2_0 @[Sha3.scala 67:26]
    io_round_out_2_1 <= round.io_round_out_2_1 @[Sha3.scala 67:26]
    io_round_out_2_2 <= round.io_round_out_2_2 @[Sha3.scala 67:26]
    io_round_out_2_3 <= round.io_round_out_2_3 @[Sha3.scala 67:26]
    io_round_out_2_4 <= round.io_round_out_2_4 @[Sha3.scala 67:26]
    io_round_out_3_0 <= round.io_round_out_3_0 @[Sha3.scala 67:26]
    io_round_out_3_1 <= round.io_round_out_3_1 @[Sha3.scala 67:26]
    io_round_out_3_2 <= round.io_round_out_3_2 @[Sha3.scala 67:26]
    io_round_out_3_3 <= round.io_round_out_3_3 @[Sha3.scala 67:26]
    io_round_out_3_4 <= round.io_round_out_3_4 @[Sha3.scala 67:26]
    io_round_out_4_0 <= round.io_round_out_4_0 @[Sha3.scala 67:26]
    io_round_out_4_1 <= round.io_round_out_4_1 @[Sha3.scala 67:26]
    io_round_out_4_2 <= round.io_round_out_4_2 @[Sha3.scala 67:26]
    io_round_out_4_3 <= round.io_round_out_4_3 @[Sha3.scala 67:26]
    io_round_out_4_4 <= round.io_round_out_4_4 @[Sha3.scala 67:26]
    io_theta_out_0_0 <= round.io_R_theta_out_0_0 @[Sha3.scala 54:19]
    io_theta_out_0_1 <= round.io_R_theta_out_0_1 @[Sha3.scala 54:19]
    io_theta_out_0_2 <= round.io_R_theta_out_0_2 @[Sha3.scala 54:19]
    io_theta_out_0_3 <= round.io_R_theta_out_0_3 @[Sha3.scala 54:19]
    io_theta_out_0_4 <= round.io_R_theta_out_0_4 @[Sha3.scala 54:19]
    io_theta_out_1_0 <= round.io_R_theta_out_1_0 @[Sha3.scala 54:19]
    io_theta_out_1_1 <= round.io_R_theta_out_1_1 @[Sha3.scala 54:19]
    io_theta_out_1_2 <= round.io_R_theta_out_1_2 @[Sha3.scala 54:19]
    io_theta_out_1_3 <= round.io_R_theta_out_1_3 @[Sha3.scala 54:19]
    io_theta_out_1_4 <= round.io_R_theta_out_1_4 @[Sha3.scala 54:19]
    io_theta_out_2_0 <= round.io_R_theta_out_2_0 @[Sha3.scala 54:19]
    io_theta_out_2_1 <= round.io_R_theta_out_2_1 @[Sha3.scala 54:19]
    io_theta_out_2_2 <= round.io_R_theta_out_2_2 @[Sha3.scala 54:19]
    io_theta_out_2_3 <= round.io_R_theta_out_2_3 @[Sha3.scala 54:19]
    io_theta_out_2_4 <= round.io_R_theta_out_2_4 @[Sha3.scala 54:19]
    io_theta_out_3_0 <= round.io_R_theta_out_3_0 @[Sha3.scala 54:19]
    io_theta_out_3_1 <= round.io_R_theta_out_3_1 @[Sha3.scala 54:19]
    io_theta_out_3_2 <= round.io_R_theta_out_3_2 @[Sha3.scala 54:19]
    io_theta_out_3_3 <= round.io_R_theta_out_3_3 @[Sha3.scala 54:19]
    io_theta_out_3_4 <= round.io_R_theta_out_3_4 @[Sha3.scala 54:19]
    io_theta_out_4_0 <= round.io_R_theta_out_4_0 @[Sha3.scala 54:19]
    io_theta_out_4_1 <= round.io_R_theta_out_4_1 @[Sha3.scala 54:19]
    io_theta_out_4_2 <= round.io_R_theta_out_4_2 @[Sha3.scala 54:19]
    io_theta_out_4_3 <= round.io_R_theta_out_4_3 @[Sha3.scala 54:19]
    io_theta_out_4_4 <= round.io_R_theta_out_4_4 @[Sha3.scala 54:19]
    io_theta_c_0 <= round.io_R_theta_c_out_0 @[Sha3.scala 53:19]
    io_theta_c_1 <= round.io_R_theta_c_out_1 @[Sha3.scala 53:19]
    io_theta_c_2 <= round.io_R_theta_c_out_2 @[Sha3.scala 53:19]
    io_theta_c_3 <= round.io_R_theta_c_out_3 @[Sha3.scala 53:19]
    io_theta_c_4 <= round.io_R_theta_c_out_4 @[Sha3.scala 53:19]
    io_theta_d_0 <= round.io_R_theta_d_out_0 @[Sha3.scala 52:19]
    io_theta_d_1 <= round.io_R_theta_d_out_1 @[Sha3.scala 52:19]
    io_theta_d_2 <= round.io_R_theta_d_out_2 @[Sha3.scala 52:19]
    io_theta_d_3 <= round.io_R_theta_d_out_3 @[Sha3.scala 52:19]
    io_theta_d_4 <= round.io_R_theta_d_out_4 @[Sha3.scala 52:19]
    io_rhoPi_out_0_0 <= round.io_R_rhoPi_out_0_0 @[Sha3.scala 55:19]
    io_rhoPi_out_0_1 <= round.io_R_rhoPi_out_0_1 @[Sha3.scala 55:19]
    io_rhoPi_out_0_2 <= round.io_R_rhoPi_out_0_2 @[Sha3.scala 55:19]
    io_rhoPi_out_0_3 <= round.io_R_rhoPi_out_0_3 @[Sha3.scala 55:19]
    io_rhoPi_out_0_4 <= round.io_R_rhoPi_out_0_4 @[Sha3.scala 55:19]
    io_rhoPi_out_1_0 <= round.io_R_rhoPi_out_1_0 @[Sha3.scala 55:19]
    io_rhoPi_out_1_1 <= round.io_R_rhoPi_out_1_1 @[Sha3.scala 55:19]
    io_rhoPi_out_1_2 <= round.io_R_rhoPi_out_1_2 @[Sha3.scala 55:19]
    io_rhoPi_out_1_3 <= round.io_R_rhoPi_out_1_3 @[Sha3.scala 55:19]
    io_rhoPi_out_1_4 <= round.io_R_rhoPi_out_1_4 @[Sha3.scala 55:19]
    io_rhoPi_out_2_0 <= round.io_R_rhoPi_out_2_0 @[Sha3.scala 55:19]
    io_rhoPi_out_2_1 <= round.io_R_rhoPi_out_2_1 @[Sha3.scala 55:19]
    io_rhoPi_out_2_2 <= round.io_R_rhoPi_out_2_2 @[Sha3.scala 55:19]
    io_rhoPi_out_2_3 <= round.io_R_rhoPi_out_2_3 @[Sha3.scala 55:19]
    io_rhoPi_out_2_4 <= round.io_R_rhoPi_out_2_4 @[Sha3.scala 55:19]
    io_rhoPi_out_3_0 <= round.io_R_rhoPi_out_3_0 @[Sha3.scala 55:19]
    io_rhoPi_out_3_1 <= round.io_R_rhoPi_out_3_1 @[Sha3.scala 55:19]
    io_rhoPi_out_3_2 <= round.io_R_rhoPi_out_3_2 @[Sha3.scala 55:19]
    io_rhoPi_out_3_3 <= round.io_R_rhoPi_out_3_3 @[Sha3.scala 55:19]
    io_rhoPi_out_3_4 <= round.io_R_rhoPi_out_3_4 @[Sha3.scala 55:19]
    io_rhoPi_out_4_0 <= round.io_R_rhoPi_out_4_0 @[Sha3.scala 55:19]
    io_rhoPi_out_4_1 <= round.io_R_rhoPi_out_4_1 @[Sha3.scala 55:19]
    io_rhoPi_out_4_2 <= round.io_R_rhoPi_out_4_2 @[Sha3.scala 55:19]
    io_rhoPi_out_4_3 <= round.io_R_rhoPi_out_4_3 @[Sha3.scala 55:19]
    io_rhoPi_out_4_4 <= round.io_R_rhoPi_out_4_4 @[Sha3.scala 55:19]
    io_chi_out_0_0 <= round.io_R_chi_out_0_0 @[Sha3.scala 56:19]
    io_chi_out_0_1 <= round.io_R_chi_out_0_1 @[Sha3.scala 56:19]
    io_chi_out_0_2 <= round.io_R_chi_out_0_2 @[Sha3.scala 56:19]
    io_chi_out_0_3 <= round.io_R_chi_out_0_3 @[Sha3.scala 56:19]
    io_chi_out_0_4 <= round.io_R_chi_out_0_4 @[Sha3.scala 56:19]
    io_chi_out_1_0 <= round.io_R_chi_out_1_0 @[Sha3.scala 56:19]
    io_chi_out_1_1 <= round.io_R_chi_out_1_1 @[Sha3.scala 56:19]
    io_chi_out_1_2 <= round.io_R_chi_out_1_2 @[Sha3.scala 56:19]
    io_chi_out_1_3 <= round.io_R_chi_out_1_3 @[Sha3.scala 56:19]
    io_chi_out_1_4 <= round.io_R_chi_out_1_4 @[Sha3.scala 56:19]
    io_chi_out_2_0 <= round.io_R_chi_out_2_0 @[Sha3.scala 56:19]
    io_chi_out_2_1 <= round.io_R_chi_out_2_1 @[Sha3.scala 56:19]
    io_chi_out_2_2 <= round.io_R_chi_out_2_2 @[Sha3.scala 56:19]
    io_chi_out_2_3 <= round.io_R_chi_out_2_3 @[Sha3.scala 56:19]
    io_chi_out_2_4 <= round.io_R_chi_out_2_4 @[Sha3.scala 56:19]
    io_chi_out_3_0 <= round.io_R_chi_out_3_0 @[Sha3.scala 56:19]
    io_chi_out_3_1 <= round.io_R_chi_out_3_1 @[Sha3.scala 56:19]
    io_chi_out_3_2 <= round.io_R_chi_out_3_2 @[Sha3.scala 56:19]
    io_chi_out_3_3 <= round.io_R_chi_out_3_3 @[Sha3.scala 56:19]
    io_chi_out_3_4 <= round.io_R_chi_out_3_4 @[Sha3.scala 56:19]
    io_chi_out_4_0 <= round.io_R_chi_out_4_0 @[Sha3.scala 56:19]
    io_chi_out_4_1 <= round.io_R_chi_out_4_1 @[Sha3.scala 56:19]
    io_chi_out_4_2 <= round.io_R_chi_out_4_2 @[Sha3.scala 56:19]
    io_chi_out_4_3 <= round.io_R_chi_out_4_3 @[Sha3.scala 56:19]
    io_chi_out_4_4 <= round.io_R_chi_out_4_4 @[Sha3.scala 56:19]
    io_iota_out <= round.io_R_iota_out @[Sha3.scala 57:19]
    io_iota_xor_val_out <= round.io_R_iota_xor_val_out @[Sha3.scala 60:23]
    io_iota_round <= round.io_R_iota_round @[Sha3.scala 61:23]
    io_round_in_0_0 <= round.io_round_in_0_0 @[Sha3.scala 58:19]
    io_round_in_0_1 <= round.io_round_in_0_1 @[Sha3.scala 58:19]
    io_round_in_0_2 <= round.io_round_in_0_2 @[Sha3.scala 58:19]
    io_round_in_0_3 <= round.io_round_in_0_3 @[Sha3.scala 58:19]
    io_round_in_0_4 <= round.io_round_in_0_4 @[Sha3.scala 58:19]
    io_round_in_1_0 <= round.io_round_in_1_0 @[Sha3.scala 58:19]
    io_round_in_1_1 <= round.io_round_in_1_1 @[Sha3.scala 58:19]
    io_round_in_1_2 <= round.io_round_in_1_2 @[Sha3.scala 58:19]
    io_round_in_1_3 <= round.io_round_in_1_3 @[Sha3.scala 58:19]
    io_round_in_1_4 <= round.io_round_in_1_4 @[Sha3.scala 58:19]
    io_round_in_2_0 <= round.io_round_in_2_0 @[Sha3.scala 58:19]
    io_round_in_2_1 <= round.io_round_in_2_1 @[Sha3.scala 58:19]
    io_round_in_2_2 <= round.io_round_in_2_2 @[Sha3.scala 58:19]
    io_round_in_2_3 <= round.io_round_in_2_3 @[Sha3.scala 58:19]
    io_round_in_2_4 <= round.io_round_in_2_4 @[Sha3.scala 58:19]
    io_round_in_3_0 <= round.io_round_in_3_0 @[Sha3.scala 58:19]
    io_round_in_3_1 <= round.io_round_in_3_1 @[Sha3.scala 58:19]
    io_round_in_3_2 <= round.io_round_in_3_2 @[Sha3.scala 58:19]
    io_round_in_3_3 <= round.io_round_in_3_3 @[Sha3.scala 58:19]
    io_round_in_3_4 <= round.io_round_in_3_4 @[Sha3.scala 58:19]
    io_round_in_4_0 <= round.io_round_in_4_0 @[Sha3.scala 58:19]
    io_round_in_4_1 <= round.io_round_in_4_1 @[Sha3.scala 58:19]
    io_round_in_4_2 <= round.io_round_in_4_2 @[Sha3.scala 58:19]
    io_round_in_4_3 <= round.io_round_in_4_3 @[Sha3.scala 58:19]
    io_round_in_4_4 <= round.io_round_in_4_4 @[Sha3.scala 58:19]
    io_IObuffer_content_0 <= buffer.io_dataOut_0 @[Sha3.scala 62:23]
    io_IObuffer_content_1 <= buffer.io_dataOut_1 @[Sha3.scala 62:23]
    io_IObuffer_content_2 <= buffer.io_dataOut_2 @[Sha3.scala 62:23]
    io_IObuffer_content_3 <= buffer.io_dataOut_3 @[Sha3.scala 62:23]
    io_IObuffer_content_4 <= buffer.io_dataOut_4 @[Sha3.scala 62:23]
    io_IObuffer_content_5 <= buffer.io_dataOut_5 @[Sha3.scala 62:23]
    io_IObuffer_content_6 <= buffer.io_dataOut_6 @[Sha3.scala 62:23]
    io_IObuffer_content_7 <= buffer.io_dataOut_7 @[Sha3.scala 62:23]
    io_IObuffer_content_8 <= buffer.io_dataOut_8 @[Sha3.scala 62:23]
    io_register_out_0_0 <= stateReg_0_0 @[Sha3.scala 59:19]
    io_register_out_0_1 <= stateReg_0_1 @[Sha3.scala 59:19]
    io_register_out_0_2 <= stateReg_0_2 @[Sha3.scala 59:19]
    io_register_out_0_3 <= stateReg_0_3 @[Sha3.scala 59:19]
    io_register_out_0_4 <= stateReg_0_4 @[Sha3.scala 59:19]
    io_register_out_1_0 <= stateReg_1_0 @[Sha3.scala 59:19]
    io_register_out_1_1 <= stateReg_1_1 @[Sha3.scala 59:19]
    io_register_out_1_2 <= stateReg_1_2 @[Sha3.scala 59:19]
    io_register_out_1_3 <= stateReg_1_3 @[Sha3.scala 59:19]
    io_register_out_1_4 <= stateReg_1_4 @[Sha3.scala 59:19]
    io_register_out_2_0 <= stateReg_2_0 @[Sha3.scala 59:19]
    io_register_out_2_1 <= stateReg_2_1 @[Sha3.scala 59:19]
    io_register_out_2_2 <= stateReg_2_2 @[Sha3.scala 59:19]
    io_register_out_2_3 <= stateReg_2_3 @[Sha3.scala 59:19]
    io_register_out_2_4 <= stateReg_2_4 @[Sha3.scala 59:19]
    io_register_out_3_0 <= stateReg_3_0 @[Sha3.scala 59:19]
    io_register_out_3_1 <= stateReg_3_1 @[Sha3.scala 59:19]
    io_register_out_3_2 <= stateReg_3_2 @[Sha3.scala 59:19]
    io_register_out_3_3 <= stateReg_3_3 @[Sha3.scala 59:19]
    io_register_out_3_4 <= stateReg_3_4 @[Sha3.scala 59:19]
    io_register_out_4_0 <= stateReg_4_0 @[Sha3.scala 59:19]
    io_register_out_4_1 <= stateReg_4_1 @[Sha3.scala 59:19]
    io_register_out_4_2 <= stateReg_4_2 @[Sha3.scala 59:19]
    io_register_out_4_3 <= stateReg_4_3 @[Sha3.scala 59:19]
    io_register_out_4_4 <= stateReg_4_4 @[Sha3.scala 59:19]
    round.clock <= clock
    round.reset <= reset
    round.io_round_in_0_0 <= _GEN_59
    round.io_round_in_0_1 <= _GEN_64
    round.io_round_in_0_2 <= stateReg_0_2 @[Sha3.scala 131:27]
    round.io_round_in_0_3 <= stateReg_0_3 @[Sha3.scala 136:27]
    round.io_round_in_0_4 <= stateReg_0_4 @[Sha3.scala 141:27]
    round.io_round_in_1_0 <= _GEN_60
    round.io_round_in_1_1 <= _GEN_65
    round.io_round_in_1_2 <= stateReg_1_2 @[Sha3.scala 132:27]
    round.io_round_in_1_3 <= stateReg_1_3 @[Sha3.scala 137:27]
    round.io_round_in_1_4 <= stateReg_1_4 @[Sha3.scala 142:27]
    round.io_round_in_2_0 <= _GEN_61
    round.io_round_in_2_1 <= _GEN_66
    round.io_round_in_2_2 <= stateReg_2_2 @[Sha3.scala 133:27]
    round.io_round_in_2_3 <= stateReg_2_3 @[Sha3.scala 138:27]
    round.io_round_in_2_4 <= stateReg_2_4 @[Sha3.scala 143:27]
    round.io_round_in_3_0 <= _GEN_62
    round.io_round_in_3_1 <= _GEN_67
    round.io_round_in_3_2 <= stateReg_3_2 @[Sha3.scala 134:27]
    round.io_round_in_3_3 <= stateReg_3_3 @[Sha3.scala 139:27]
    round.io_round_in_3_4 <= stateReg_3_4 @[Sha3.scala 144:27]
    round.io_round_in_4_0 <= _GEN_63
    round.io_round_in_4_1 <= stateReg_4_1 @[Sha3.scala 130:27]
    round.io_round_in_4_2 <= stateReg_4_2 @[Sha3.scala 135:27]
    round.io_round_in_4_3 <= stateReg_4_3 @[Sha3.scala 140:27]
    round.io_round_in_4_4 <= stateReg_4_4 @[Sha3.scala 145:27]
    round.io_R_iota_round <= iota_round @[Sha3.scala 100:25]
    buffer.clock <= clock
    buffer.reset <= reset
    buffer.io_dataIn <= io_data_in @[Sha3.scala 47:21]
    buffer.io_enable <= io_enable_buffer @[Sha3.scala 48:21]
    stateReg_0_0 <= mux(reset, _WIRE_5_0_0, _GEN_34) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_0_1 <= mux(reset, _WIRE_5_0_1, _GEN_35) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_0_2 <= mux(reset, _WIRE_5_0_2, _GEN_36) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_0_3 <= mux(reset, _WIRE_5_0_3, _GEN_37) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_0_4 <= mux(reset, _WIRE_5_0_4, _GEN_38) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_1_0 <= mux(reset, _WIRE_5_1_0, _GEN_39) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_1_1 <= mux(reset, _WIRE_5_1_1, _GEN_40) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_1_2 <= mux(reset, _WIRE_5_1_2, _GEN_41) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_1_3 <= mux(reset, _WIRE_5_1_3, _GEN_42) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_1_4 <= mux(reset, _WIRE_5_1_4, _GEN_43) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_2_0 <= mux(reset, _WIRE_5_2_0, _GEN_44) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_2_1 <= mux(reset, _WIRE_5_2_1, _GEN_45) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_2_2 <= mux(reset, _WIRE_5_2_2, _GEN_46) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_2_3 <= mux(reset, _WIRE_5_2_3, _GEN_47) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_2_4 <= mux(reset, _WIRE_5_2_4, _GEN_48) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_3_0 <= mux(reset, _WIRE_5_3_0, _GEN_49) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_3_1 <= mux(reset, _WIRE_5_3_1, _GEN_50) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_3_2 <= mux(reset, _WIRE_5_3_2, _GEN_51) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_3_3 <= mux(reset, _WIRE_5_3_3, _GEN_52) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_3_4 <= mux(reset, _WIRE_5_3_4, _GEN_53) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_4_0 <= mux(reset, _WIRE_5_4_0, _GEN_54) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_4_1 <= mux(reset, _WIRE_5_4_1, _GEN_55) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_4_2 <= mux(reset, _WIRE_5_4_2, _GEN_56) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_4_3 <= mux(reset, _WIRE_5_4_3, _GEN_57) @[Sha3.scala 37:25 Sha3.scala 37:25]
    stateReg_4_4 <= mux(reset, _WIRE_5_4_4, _GEN_58) @[Sha3.scala 37:25 Sha3.scala 37:25]
    next_state <= mux(reset, UInt<2>("h0"), _GEN_33) @[Sha3.scala 42:30 Sha3.scala 42:30]
    xor_select <= mux(reset, UInt<1>("h0"), _GEN_31) @[Sha3.scala 43:30 Sha3.scala 43:30]
    iota_round <= mux(reset, UInt<16>("h0"), _GEN_32) @[Sha3.scala 44:30 Sha3.scala 44:30]