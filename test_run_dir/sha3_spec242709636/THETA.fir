;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit THETA : 
  module THETA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[5][5], theta_out : UInt<64>[5][5], flip cond_in : UInt<1>}
    
    wire intermediateResult : UInt<64> @[THETA.scala 10:32]
    when io.cond_in : @[THETA.scala 13:19]
      io.theta_out[0][0] <= io.theta_in[1][2] @[THETA.scala 14:24]
      skip @[THETA.scala 13:19]
    
