;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit THETA : 
  module THETA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip cond_in : UInt<1>, cond_out : UInt<1>}
    
    io.cond_out <= UInt<1>("h00") @[THETA.scala 17:15]
    when io.cond_in : @[THETA.scala 19:19]
      io.cond_out <= UInt<1>("h01") @[THETA.scala 20:17]
      skip @[THETA.scala 19:19]
    
