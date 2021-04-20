;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit theta : 
  module theta : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[25], theta_out : UInt<64>[25], flip cond : UInt<1>}
    
    when io.cond : @[theta.scala 10:16]
      skip @[theta.scala 10:16]
    
