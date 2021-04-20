circuit THETA :
  module THETA :
    input clock : Clock
    input reset : UInt<1>
    input io_theta_in_0 : UInt<64>
    input io_theta_in_1 : UInt<64>
    input io_theta_in_2 : UInt<64>
    input io_theta_in_3 : UInt<64>
    input io_theta_in_4 : UInt<64>
    input io_theta_in_5 : UInt<64>
    input io_theta_in_6 : UInt<64>
    input io_theta_in_7 : UInt<64>
    input io_theta_in_8 : UInt<64>
    input io_theta_in_9 : UInt<64>
    input io_theta_in_10 : UInt<64>
    input io_theta_in_11 : UInt<64>
    input io_theta_in_12 : UInt<64>
    input io_theta_in_13 : UInt<64>
    input io_theta_in_14 : UInt<64>
    input io_theta_in_15 : UInt<64>
    input io_theta_in_16 : UInt<64>
    input io_theta_in_17 : UInt<64>
    input io_theta_in_18 : UInt<64>
    input io_theta_in_19 : UInt<64>
    input io_theta_in_20 : UInt<64>
    input io_theta_in_21 : UInt<64>
    input io_theta_in_22 : UInt<64>
    input io_theta_in_23 : UInt<64>
    input io_theta_in_24 : UInt<64>
    output io_theta_out_0 : UInt<64>
    output io_theta_out_1 : UInt<64>
    output io_theta_out_2 : UInt<64>
    output io_theta_out_3 : UInt<64>
    output io_theta_out_4 : UInt<64>
    output io_theta_out_5 : UInt<64>
    output io_theta_out_6 : UInt<64>
    output io_theta_out_7 : UInt<64>
    output io_theta_out_8 : UInt<64>
    output io_theta_out_9 : UInt<64>
    output io_theta_out_10 : UInt<64>
    output io_theta_out_11 : UInt<64>
    output io_theta_out_12 : UInt<64>
    output io_theta_out_13 : UInt<64>
    output io_theta_out_14 : UInt<64>
    output io_theta_out_15 : UInt<64>
    output io_theta_out_16 : UInt<64>
    output io_theta_out_17 : UInt<64>
    output io_theta_out_18 : UInt<64>
    output io_theta_out_19 : UInt<64>
    output io_theta_out_20 : UInt<64>
    output io_theta_out_21 : UInt<64>
    output io_theta_out_22 : UInt<64>
    output io_theta_out_23 : UInt<64>
    output io_theta_out_24 : UInt<64>
    input io_cond_in : UInt<1>

    node _T = xor(io_theta_in_5, io_theta_in_10) @[THETA.scala 16:43]
    node _T_1 = xor(_T, io_theta_in_15) @[THETA.scala 16:65]
    node _T_2 = xor(_T_1, io_theta_in_20) @[THETA.scala 16:87]
    node _GEN_0 = mux(io_cond_in, _T_2, UInt<1>("h0")) @[THETA.scala 15:19 THETA.scala 16:21 THETA.scala 13:21]
    io_theta_out_0 <= _GEN_0
    io_theta_out_1 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_2 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_3 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_4 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_5 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_6 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_7 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_8 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_9 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_10 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_11 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_12 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_13 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_14 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_15 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_16 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_17 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_18 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_19 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_20 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_21 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_22 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_23 <= UInt<1>("h0") @[THETA.scala 13:21]
    io_theta_out_24 <= UInt<1>("h0") @[THETA.scala 13:21]