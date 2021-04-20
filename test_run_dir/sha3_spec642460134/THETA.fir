;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit THETA : 
  module THETA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[25], theta_out : UInt<64>[3], flip cond_in : UInt<1>, cond_out : UInt<1>}
    
    io.cond_out <= UInt<1>("h00") @[THETA.scala 14:15]
    when io.cond_in : @[THETA.scala 20:19]
      io.cond_out <= UInt<1>("h01") @[THETA.scala 21:17]
      skip @[THETA.scala 20:19]
    
