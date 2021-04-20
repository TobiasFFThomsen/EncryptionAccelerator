;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit THETA : 
  module THETA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[25], theta_out : UInt<64>[25], flip cond_in : UInt<1>}
    
    io.theta_out[0] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[1] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[2] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[3] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[4] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[5] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[6] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[7] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[8] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[9] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[10] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[11] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[12] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[13] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[14] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[15] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[16] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[17] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[18] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[19] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[20] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[21] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[22] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[23] <= UInt<1>("h00") @[THETA.scala 13:21]
    io.theta_out[24] <= UInt<1>("h00") @[THETA.scala 13:21]
    when io.cond_in : @[THETA.scala 15:19]
      node _T = xor(io.theta_in[5], io.theta_in[10]) @[THETA.scala 16:43]
      node _T_1 = xor(_T, io.theta_in[15]) @[THETA.scala 16:65]
      node _T_2 = xor(_T_1, io.theta_in[20]) @[THETA.scala 16:87]
      io.theta_out[0] <= _T_2 @[THETA.scala 16:21]
      skip @[THETA.scala 15:19]
    
