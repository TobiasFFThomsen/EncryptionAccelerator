circuit THETA :
  module THETA :
    input clock : Clock
    input reset : UInt<1>
    input io_theta_in_0 : UInt<64>
    input io_theta_in_1 : UInt<64>
    input io_theta_in_2 : UInt<64>
    input io_theta_in_3 : UInt<64>
    input io_theta_in_4 : UInt<64>
    output io_theta_out_0 : UInt<64>
    output io_theta_out_1 : UInt<64>
    output io_theta_out_2 : UInt<64>
    output io_theta_out_3 : UInt<64>
    output io_theta_out_4 : UInt<64>

    io_theta_out_0 <= io_theta_in_0 @[THETA.scala 12:19]
    io_theta_out_1 <= io_theta_in_0 @[THETA.scala 13:19]
    io_theta_out_2 <= io_theta_in_0 @[THETA.scala 14:19]
    io_theta_out_3 <= io_theta_in_0 @[THETA.scala 15:19]
    io_theta_out_4 <= io_theta_in_0 @[THETA.scala 16:19]