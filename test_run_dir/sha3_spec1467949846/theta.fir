;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit theta : 
  module theta : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<8>, theta_out : UInt<8>, flip cond : UInt<1>}
    
    when io.cond : @[theta.scala 16:16]
      io.theta_out <= io.theta_in @[theta.scala 17:18]
      skip @[theta.scala 16:16]
    
