;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit THETA : 
  module THETA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[3], theta_out : UInt<64>[3], flip cond_in : UInt<1>, cond_out : UInt<1>}
    
    io.cond_out <= UInt<1>("h00") @[THETA.scala 15:15]
    io.theta_out[0] <= UInt<1>("h00") @[THETA.scala 18:19]
    io.theta_out[1] <= UInt<1>("h00") @[THETA.scala 19:19]
    io.theta_out[2] <= UInt<1>("h00") @[THETA.scala 20:19]
    when io.cond_in : @[THETA.scala 24:19]
      io.cond_out <= UInt<1>("h01") @[THETA.scala 25:17]
      io.theta_out[0] <= UInt<1>("h01") @[THETA.scala 26:21]
      io.theta_out[1] <= UInt<1>("h01") @[THETA.scala 27:21]
      io.theta_out[2] <= UInt<1>("h01") @[THETA.scala 28:21]
      skip @[THETA.scala 24:19]
    
