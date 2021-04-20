circuit THETA :
  module THETA :
    input clock : Clock
    input reset : UInt<1>
    input io_theta_in_0 : UInt<64>
    input io_theta_in_1 : UInt<64>
    input io_theta_in_2 : UInt<64>
    output io_theta_out_0 : UInt<64>
    output io_theta_out_1 : UInt<64>
    output io_theta_out_2 : UInt<64>
    input io_cond_in : UInt<1>
    output io_cond_out : UInt<1>

    node _GEN_0 = mux(io_cond_in, UInt<1>("h1"), UInt<1>("h0")) @[THETA.scala 24:19 THETA.scala 25:17 THETA.scala 15:15]
    io_theta_out_0 <= _GEN_0
    io_theta_out_1 <= _GEN_0
    io_theta_out_2 <= _GEN_0
    io_cond_out <= _GEN_0