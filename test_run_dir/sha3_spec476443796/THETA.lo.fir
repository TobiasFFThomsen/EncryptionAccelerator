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

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[THETA.scala 22:30]
    node _T_1 = xor(_T, io_theta_in_0_2) @[THETA.scala 22:48]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[THETA.scala 22:66]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[THETA.scala 22:84]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[THETA.scala 22:30]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[THETA.scala 22:48]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[THETA.scala 22:66]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[THETA.scala 22:84]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[THETA.scala 22:30]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[THETA.scala 22:48]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[THETA.scala 22:66]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[THETA.scala 22:84]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[THETA.scala 22:30]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[THETA.scala 22:48]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[THETA.scala 22:66]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[THETA.scala 22:84]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[THETA.scala 22:30]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[THETA.scala 22:48]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[THETA.scala 22:66]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[THETA.scala 22:84]
    node c_0 = _T_3 @[THETA.scala 18:15 THETA.scala 22:10]
    node c_1 = _T_7 @[THETA.scala 18:15 THETA.scala 22:10]
    node c_2 = _T_11 @[THETA.scala 18:15 THETA.scala 22:10]
    node c_3 = _T_15 @[THETA.scala 18:15 THETA.scala 22:10]
    node c_4 = _T_19 @[THETA.scala 18:15 THETA.scala 22:10]
    io_theta_out_0_0 <= c_0 @[THETA.scala 34:26]
    io_theta_out_0_1 <= c_0 @[THETA.scala 34:26]
    io_theta_out_0_2 <= c_0 @[THETA.scala 34:26]
    io_theta_out_0_3 <= c_0 @[THETA.scala 34:26]
    io_theta_out_0_4 <= c_0 @[THETA.scala 34:26]
    io_theta_out_1_0 <= c_1 @[THETA.scala 34:26]
    io_theta_out_1_1 <= c_1 @[THETA.scala 34:26]
    io_theta_out_1_2 <= c_1 @[THETA.scala 34:26]
    io_theta_out_1_3 <= c_1 @[THETA.scala 34:26]
    io_theta_out_1_4 <= c_1 @[THETA.scala 34:26]
    io_theta_out_2_0 <= c_2 @[THETA.scala 34:26]
    io_theta_out_2_1 <= c_2 @[THETA.scala 34:26]
    io_theta_out_2_2 <= c_2 @[THETA.scala 34:26]
    io_theta_out_2_3 <= c_2 @[THETA.scala 34:26]
    io_theta_out_2_4 <= c_2 @[THETA.scala 34:26]
    io_theta_out_3_0 <= c_3 @[THETA.scala 34:26]
    io_theta_out_3_1 <= c_3 @[THETA.scala 34:26]
    io_theta_out_3_2 <= c_3 @[THETA.scala 34:26]
    io_theta_out_3_3 <= c_3 @[THETA.scala 34:26]
    io_theta_out_3_4 <= c_3 @[THETA.scala 34:26]
    io_theta_out_4_0 <= c_4 @[THETA.scala 34:26]
    io_theta_out_4_1 <= c_4 @[THETA.scala 34:26]
    io_theta_out_4_2 <= c_4 @[THETA.scala 34:26]
    io_theta_out_4_3 <= c_4 @[THETA.scala 34:26]
    io_theta_out_4_4 <= c_4 @[THETA.scala 34:26]