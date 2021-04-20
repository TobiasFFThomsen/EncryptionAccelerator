circuit Round :
  module Round :
    input clock : Clock
    input reset : UInt<1>
    input io_round_in_0_0 : SInt<64>
    input io_round_in_0_1 : SInt<64>
    input io_round_in_0_2 : SInt<64>
    input io_round_in_0_3 : SInt<64>
    input io_round_in_0_4 : SInt<64>
    input io_round_in_1_0 : SInt<64>
    input io_round_in_1_1 : SInt<64>
    input io_round_in_1_2 : SInt<64>
    input io_round_in_1_3 : SInt<64>
    input io_round_in_1_4 : SInt<64>
    input io_round_in_2_0 : SInt<64>
    input io_round_in_2_1 : SInt<64>
    input io_round_in_2_2 : SInt<64>
    input io_round_in_2_3 : SInt<64>
    input io_round_in_2_4 : SInt<64>
    input io_round_in_3_0 : SInt<64>
    input io_round_in_3_1 : SInt<64>
    input io_round_in_3_2 : SInt<64>
    input io_round_in_3_3 : SInt<64>
    input io_round_in_3_4 : SInt<64>
    input io_round_in_4_0 : SInt<64>
    input io_round_in_4_1 : SInt<64>
    input io_round_in_4_2 : SInt<64>
    input io_round_in_4_3 : SInt<64>
    input io_round_in_4_4 : SInt<64>
    output io_round_out_0_0 : SInt<64>
    output io_round_out_0_1 : SInt<64>
    output io_round_out_0_2 : SInt<64>
    output io_round_out_0_3 : SInt<64>
    output io_round_out_0_4 : SInt<64>
    output io_round_out_1_0 : SInt<64>
    output io_round_out_1_1 : SInt<64>
    output io_round_out_1_2 : SInt<64>
    output io_round_out_1_3 : SInt<64>
    output io_round_out_1_4 : SInt<64>
    output io_round_out_2_0 : SInt<64>
    output io_round_out_2_1 : SInt<64>
    output io_round_out_2_2 : SInt<64>
    output io_round_out_2_3 : SInt<64>
    output io_round_out_2_4 : SInt<64>
    output io_round_out_3_0 : SInt<64>
    output io_round_out_3_1 : SInt<64>
    output io_round_out_3_2 : SInt<64>
    output io_round_out_3_3 : SInt<64>
    output io_round_out_3_4 : SInt<64>
    output io_round_out_4_0 : SInt<64>
    output io_round_out_4_1 : SInt<64>
    output io_round_out_4_2 : SInt<64>
    output io_round_out_4_3 : SInt<64>
    output io_round_out_4_4 : SInt<64>
    output io_theta_c_0 : SInt<64>
    output io_theta_c_1 : SInt<64>
    output io_theta_c_2 : SInt<64>
    output io_theta_c_3 : SInt<64>
    output io_theta_c_4 : SInt<64>
    output io_theta_d_0 : SInt<64>
    output io_theta_d_1 : SInt<64>
    output io_theta_d_2 : SInt<64>
    output io_theta_d_3 : SInt<64>
    output io_theta_d_4 : SInt<64>
    output io_rotation1Out_0 : SInt<64>
    output io_rotation1Out_1 : SInt<64>
    output io_rotation1Out_2 : SInt<64>
    output io_rotation1Out_3 : SInt<64>
    output io_rotation1Out_4 : SInt<64>
    output io_rotation2Out_0 : SInt<64>
    output io_rotation2Out_1 : SInt<64>
    output io_rotation2Out_2 : SInt<64>
    output io_rotation2Out_3 : SInt<64>
    output io_rotation2Out_4 : SInt<64>
    output io_rotationResultsOut_0 : SInt<64>
    output io_rotationResultsOut_1 : SInt<64>
    output io_rotationResultsOut_2 : SInt<64>
    output io_rotationResultsOut_3 : SInt<64>
    output io_rotationResultsOut_4 : SInt<64>
    output io_testingOut_0 : SInt<64>
    output io_testingOut_1 : SInt<64>
    output io_testingOut_2 : SInt<64>
    output io_testingOut_3 : SInt<64>
    output io_testingOut_4 : SInt<64>

    node _T = xor(io_round_in_0_0, io_round_in_0_1) @[Round.scala 36:30]
    node _T_1 = asSInt(_T) @[Round.scala 36:30]
    node _T_2 = xor(_T_1, io_round_in_0_2) @[Round.scala 36:48]
    node _T_3 = asSInt(_T_2) @[Round.scala 36:48]
    node _T_4 = xor(_T_3, io_round_in_0_3) @[Round.scala 36:66]
    node _T_5 = asSInt(_T_4) @[Round.scala 36:66]
    node _T_6 = xor(_T_5, io_round_in_0_4) @[Round.scala 36:84]
    node _T_7 = asSInt(_T_6) @[Round.scala 36:84]
    node _T_8 = xor(io_round_in_1_0, io_round_in_1_1) @[Round.scala 36:30]
    node _T_9 = asSInt(_T_8) @[Round.scala 36:30]
    node _T_10 = xor(_T_9, io_round_in_1_2) @[Round.scala 36:48]
    node _T_11 = asSInt(_T_10) @[Round.scala 36:48]
    node _T_12 = xor(_T_11, io_round_in_1_3) @[Round.scala 36:66]
    node _T_13 = asSInt(_T_12) @[Round.scala 36:66]
    node _T_14 = xor(_T_13, io_round_in_1_4) @[Round.scala 36:84]
    node _T_15 = asSInt(_T_14) @[Round.scala 36:84]
    node _T_16 = xor(io_round_in_2_0, io_round_in_2_1) @[Round.scala 36:30]
    node _T_17 = asSInt(_T_16) @[Round.scala 36:30]
    node _T_18 = xor(_T_17, io_round_in_2_2) @[Round.scala 36:48]
    node _T_19 = asSInt(_T_18) @[Round.scala 36:48]
    node _T_20 = xor(_T_19, io_round_in_2_3) @[Round.scala 36:66]
    node _T_21 = asSInt(_T_20) @[Round.scala 36:66]
    node _T_22 = xor(_T_21, io_round_in_2_4) @[Round.scala 36:84]
    node _T_23 = asSInt(_T_22) @[Round.scala 36:84]
    node _T_24 = xor(io_round_in_3_0, io_round_in_3_1) @[Round.scala 36:30]
    node _T_25 = asSInt(_T_24) @[Round.scala 36:30]
    node _T_26 = xor(_T_25, io_round_in_3_2) @[Round.scala 36:48]
    node _T_27 = asSInt(_T_26) @[Round.scala 36:48]
    node _T_28 = xor(_T_27, io_round_in_3_3) @[Round.scala 36:66]
    node _T_29 = asSInt(_T_28) @[Round.scala 36:66]
    node _T_30 = xor(_T_29, io_round_in_3_4) @[Round.scala 36:84]
    node _T_31 = asSInt(_T_30) @[Round.scala 36:84]
    node _T_32 = xor(io_round_in_4_0, io_round_in_4_1) @[Round.scala 36:30]
    node _T_33 = asSInt(_T_32) @[Round.scala 36:30]
    node _T_34 = xor(_T_33, io_round_in_4_2) @[Round.scala 36:48]
    node _T_35 = asSInt(_T_34) @[Round.scala 36:48]
    node _T_36 = xor(_T_35, io_round_in_4_3) @[Round.scala 36:66]
    node _T_37 = asSInt(_T_36) @[Round.scala 36:66]
    node _T_38 = xor(_T_37, io_round_in_4_4) @[Round.scala 36:84]
    node _T_39 = asSInt(_T_38) @[Round.scala 36:84]
    node c_1 = _T_15 @[Round.scala 32:15 Round.scala 36:10]
    node _T_40 = shl(c_1, 1) @[Round.scala 59:37]
    node _T_41 = shr(c_1, 63) @[Round.scala 61:37]
    node rotation1_0 = asSInt(bits(_T_40, 63, 0)) @[Round.scala 40:23 Round.scala 59:18]
    node rotation2_0 = pad(_T_41, 64) @[Round.scala 41:23 Round.scala 61:18]
    node _T_42 = or(rotation1_0, rotation2_0) @[Round.scala 63:40]
    node _T_43 = asSInt(_T_42) @[Round.scala 63:40]
    node c_4 = _T_39 @[Round.scala 32:15 Round.scala 36:10]
    node rotation_result_0 = _T_43 @[Round.scala 42:29 Round.scala 63:24]
    node _T_44 = xor(c_4, rotation_result_0) @[Round.scala 66:29]
    node _T_45 = asSInt(_T_44) @[Round.scala 66:29]
    node c_2 = _T_23 @[Round.scala 32:15 Round.scala 36:10]
    node _T_46 = shl(c_2, 1) @[Round.scala 59:37]
    node _T_47 = shr(c_2, 63) @[Round.scala 61:37]
    node rotation1_1 = asSInt(bits(_T_46, 63, 0)) @[Round.scala 40:23 Round.scala 59:18]
    node rotation2_1 = pad(_T_47, 64) @[Round.scala 41:23 Round.scala 61:18]
    node _T_48 = or(rotation1_1, rotation2_1) @[Round.scala 63:40]
    node _T_49 = asSInt(_T_48) @[Round.scala 63:40]
    node c_0 = _T_7 @[Round.scala 32:15 Round.scala 36:10]
    node rotation_result_1 = _T_49 @[Round.scala 42:29 Round.scala 63:24]
    node _T_50 = xor(c_0, rotation_result_1) @[Round.scala 66:29]
    node _T_51 = asSInt(_T_50) @[Round.scala 66:29]
    node c_3 = _T_31 @[Round.scala 32:15 Round.scala 36:10]
    node _T_52 = shl(c_3, 1) @[Round.scala 59:37]
    node _T_53 = shr(c_3, 63) @[Round.scala 61:37]
    node rotation1_2 = asSInt(bits(_T_52, 63, 0)) @[Round.scala 40:23 Round.scala 59:18]
    node rotation2_2 = pad(_T_53, 64) @[Round.scala 41:23 Round.scala 61:18]
    node _T_54 = or(rotation1_2, rotation2_2) @[Round.scala 63:40]
    node _T_55 = asSInt(_T_54) @[Round.scala 63:40]
    node rotation_result_2 = _T_55 @[Round.scala 42:29 Round.scala 63:24]
    node _T_56 = xor(c_1, rotation_result_2) @[Round.scala 66:29]
    node _T_57 = asSInt(_T_56) @[Round.scala 66:29]
    node _T_58 = shl(c_4, 1) @[Round.scala 59:37]
    node _T_59 = shr(c_4, 63) @[Round.scala 61:37]
    node rotation1_3 = asSInt(bits(_T_58, 63, 0)) @[Round.scala 40:23 Round.scala 59:18]
    node rotation2_3 = pad(_T_59, 64) @[Round.scala 41:23 Round.scala 61:18]
    node _T_60 = or(rotation1_3, rotation2_3) @[Round.scala 63:40]
    node _T_61 = asSInt(_T_60) @[Round.scala 63:40]
    node rotation_result_3 = _T_61 @[Round.scala 42:29 Round.scala 63:24]
    node _T_62 = xor(c_2, rotation_result_3) @[Round.scala 66:29]
    node _T_63 = asSInt(_T_62) @[Round.scala 66:29]
    node _T_64 = shl(c_0, 1) @[Round.scala 59:37]
    node _T_65 = shr(c_0, 63) @[Round.scala 61:37]
    node rotation1_4 = asSInt(bits(_T_64, 63, 0)) @[Round.scala 40:23 Round.scala 59:18]
    node rotation2_4 = pad(_T_65, 64) @[Round.scala 41:23 Round.scala 61:18]
    node _T_66 = or(rotation1_4, rotation2_4) @[Round.scala 63:40]
    node _T_67 = asSInt(_T_66) @[Round.scala 63:40]
    node rotation_result_4 = _T_67 @[Round.scala 42:29 Round.scala 63:24]
    node _T_68 = xor(c_3, rotation_result_4) @[Round.scala 66:29]
    node _T_69 = asSInt(_T_68) @[Round.scala 66:29]
    node d_0 = _T_45 @[Round.scala 33:15 Round.scala 66:10]
    node _T_70 = xor(io_round_in_0_0, d_0) @[Round.scala 71:48]
    node _T_71 = asSInt(_T_70) @[Round.scala 71:48]
    node _T_72 = xor(io_round_in_0_1, d_0) @[Round.scala 71:48]
    node _T_73 = asSInt(_T_72) @[Round.scala 71:48]
    node _T_74 = xor(io_round_in_0_2, d_0) @[Round.scala 71:48]
    node _T_75 = asSInt(_T_74) @[Round.scala 71:48]
    node _T_76 = xor(io_round_in_0_3, d_0) @[Round.scala 71:48]
    node _T_77 = asSInt(_T_76) @[Round.scala 71:48]
    node _T_78 = xor(io_round_in_0_4, d_0) @[Round.scala 71:48]
    node _T_79 = asSInt(_T_78) @[Round.scala 71:48]
    node d_1 = _T_51 @[Round.scala 33:15 Round.scala 66:10]
    node _T_80 = xor(io_round_in_1_0, d_1) @[Round.scala 71:48]
    node _T_81 = asSInt(_T_80) @[Round.scala 71:48]
    node _T_82 = xor(io_round_in_1_1, d_1) @[Round.scala 71:48]
    node _T_83 = asSInt(_T_82) @[Round.scala 71:48]
    node _T_84 = xor(io_round_in_1_2, d_1) @[Round.scala 71:48]
    node _T_85 = asSInt(_T_84) @[Round.scala 71:48]
    node _T_86 = xor(io_round_in_1_3, d_1) @[Round.scala 71:48]
    node _T_87 = asSInt(_T_86) @[Round.scala 71:48]
    node _T_88 = xor(io_round_in_1_4, d_1) @[Round.scala 71:48]
    node _T_89 = asSInt(_T_88) @[Round.scala 71:48]
    node d_2 = _T_57 @[Round.scala 33:15 Round.scala 66:10]
    node _T_90 = xor(io_round_in_2_0, d_2) @[Round.scala 71:48]
    node _T_91 = asSInt(_T_90) @[Round.scala 71:48]
    node _T_92 = xor(io_round_in_2_1, d_2) @[Round.scala 71:48]
    node _T_93 = asSInt(_T_92) @[Round.scala 71:48]
    node _T_94 = xor(io_round_in_2_2, d_2) @[Round.scala 71:48]
    node _T_95 = asSInt(_T_94) @[Round.scala 71:48]
    node _T_96 = xor(io_round_in_2_3, d_2) @[Round.scala 71:48]
    node _T_97 = asSInt(_T_96) @[Round.scala 71:48]
    node _T_98 = xor(io_round_in_2_4, d_2) @[Round.scala 71:48]
    node _T_99 = asSInt(_T_98) @[Round.scala 71:48]
    node d_3 = _T_63 @[Round.scala 33:15 Round.scala 66:10]
    node _T_100 = xor(io_round_in_3_0, d_3) @[Round.scala 71:48]
    node _T_101 = asSInt(_T_100) @[Round.scala 71:48]
    node _T_102 = xor(io_round_in_3_1, d_3) @[Round.scala 71:48]
    node _T_103 = asSInt(_T_102) @[Round.scala 71:48]
    node _T_104 = xor(io_round_in_3_2, d_3) @[Round.scala 71:48]
    node _T_105 = asSInt(_T_104) @[Round.scala 71:48]
    node _T_106 = xor(io_round_in_3_3, d_3) @[Round.scala 71:48]
    node _T_107 = asSInt(_T_106) @[Round.scala 71:48]
    node _T_108 = xor(io_round_in_3_4, d_3) @[Round.scala 71:48]
    node _T_109 = asSInt(_T_108) @[Round.scala 71:48]
    node d_4 = _T_69 @[Round.scala 33:15 Round.scala 66:10]
    node _T_110 = xor(io_round_in_4_0, d_4) @[Round.scala 71:48]
    node _T_111 = asSInt(_T_110) @[Round.scala 71:48]
    node _T_112 = xor(io_round_in_4_1, d_4) @[Round.scala 71:48]
    node _T_113 = asSInt(_T_112) @[Round.scala 71:48]
    node _T_114 = xor(io_round_in_4_2, d_4) @[Round.scala 71:48]
    node _T_115 = asSInt(_T_114) @[Round.scala 71:48]
    node _T_116 = xor(io_round_in_4_3, d_4) @[Round.scala 71:48]
    node _T_117 = asSInt(_T_116) @[Round.scala 71:48]
    node _T_118 = xor(io_round_in_4_4, d_4) @[Round.scala 71:48]
    node _T_119 = asSInt(_T_118) @[Round.scala 71:48]
    io_round_out_0_0 <= _T_71 @[Round.scala 71:28]
    io_round_out_0_1 <= _T_73 @[Round.scala 71:28]
    io_round_out_0_2 <= _T_75 @[Round.scala 71:28]
    io_round_out_0_3 <= _T_77 @[Round.scala 71:28]
    io_round_out_0_4 <= _T_79 @[Round.scala 71:28]
    io_round_out_1_0 <= _T_81 @[Round.scala 71:28]
    io_round_out_1_1 <= _T_83 @[Round.scala 71:28]
    io_round_out_1_2 <= _T_85 @[Round.scala 71:28]
    io_round_out_1_3 <= _T_87 @[Round.scala 71:28]
    io_round_out_1_4 <= _T_89 @[Round.scala 71:28]
    io_round_out_2_0 <= _T_91 @[Round.scala 71:28]
    io_round_out_2_1 <= _T_93 @[Round.scala 71:28]
    io_round_out_2_2 <= _T_95 @[Round.scala 71:28]
    io_round_out_2_3 <= _T_97 @[Round.scala 71:28]
    io_round_out_2_4 <= _T_99 @[Round.scala 71:28]
    io_round_out_3_0 <= _T_101 @[Round.scala 71:28]
    io_round_out_3_1 <= _T_103 @[Round.scala 71:28]
    io_round_out_3_2 <= _T_105 @[Round.scala 71:28]
    io_round_out_3_3 <= _T_107 @[Round.scala 71:28]
    io_round_out_3_4 <= _T_109 @[Round.scala 71:28]
    io_round_out_4_0 <= _T_111 @[Round.scala 71:28]
    io_round_out_4_1 <= _T_113 @[Round.scala 71:28]
    io_round_out_4_2 <= _T_115 @[Round.scala 71:28]
    io_round_out_4_3 <= _T_117 @[Round.scala 71:28]
    io_round_out_4_4 <= _T_119 @[Round.scala 71:28]
    io_theta_c_0 <= c_0 @[Round.scala 74:14]
    io_theta_c_1 <= c_1 @[Round.scala 74:14]
    io_theta_c_2 <= c_2 @[Round.scala 74:14]
    io_theta_c_3 <= c_3 @[Round.scala 74:14]
    io_theta_c_4 <= c_4 @[Round.scala 74:14]
    io_theta_d_0 <= d_0 @[Round.scala 75:14]
    io_theta_d_1 <= d_1 @[Round.scala 75:14]
    io_theta_d_2 <= d_2 @[Round.scala 75:14]
    io_theta_d_3 <= d_3 @[Round.scala 75:14]
    io_theta_d_4 <= d_4 @[Round.scala 75:14]
    io_rotation1Out_0 <= rotation1_0 @[Round.scala 60:24]
    io_rotation1Out_1 <= rotation1_1 @[Round.scala 60:24]
    io_rotation1Out_2 <= rotation1_2 @[Round.scala 60:24]
    io_rotation1Out_3 <= rotation1_3 @[Round.scala 60:24]
    io_rotation1Out_4 <= rotation1_4 @[Round.scala 60:24]
    io_rotation2Out_0 <= rotation2_0 @[Round.scala 62:24]
    io_rotation2Out_1 <= rotation2_1 @[Round.scala 62:24]
    io_rotation2Out_2 <= rotation2_2 @[Round.scala 62:24]
    io_rotation2Out_3 <= rotation2_3 @[Round.scala 62:24]
    io_rotation2Out_4 <= rotation2_4 @[Round.scala 62:24]
    io_rotationResultsOut_0 <= rotation_result_0 @[Round.scala 64:30]
    io_rotationResultsOut_1 <= rotation_result_1 @[Round.scala 64:30]
    io_rotationResultsOut_2 <= rotation_result_2 @[Round.scala 64:30]
    io_rotationResultsOut_3 <= rotation_result_3 @[Round.scala 64:30]
    io_rotationResultsOut_4 <= rotation_result_4 @[Round.scala 64:30]
    io_testingOut_0 <= c_1 @[Round.scala 58:22]
    io_testingOut_1 <= c_2 @[Round.scala 58:22]
    io_testingOut_2 <= c_3 @[Round.scala 58:22]
    io_testingOut_3 <= c_4 @[Round.scala 58:22]
    io_testingOut_4 <= c_0 @[Round.scala 58:22]