;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit THETA : 
  module THETA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[5], theta_out : UInt<64>[5]}
    
    io.theta_out[0] <= io.theta_in[0] @[THETA.scala 12:19]
    io.theta_out[1] <= io.theta_in[0] @[THETA.scala 13:19]
    io.theta_out[2] <= io.theta_in[0] @[THETA.scala 14:19]
    io.theta_out[3] <= io.theta_in[0] @[THETA.scala 15:19]
    io.theta_out[4] <= io.theta_in[0] @[THETA.scala 16:19]
    
