circuit THETA :
  module THETA :
    input clock : Clock
    input reset : UInt<1>
    input io_cond_in : UInt<1>
    output io_cond_out : UInt<1>

    node _GEN_0 = mux(io_cond_in, UInt<1>("h1"), UInt<1>("h0")) @[THETA.scala 19:19 THETA.scala 20:17 THETA.scala 17:15]
    io_cond_out <= _GEN_0
