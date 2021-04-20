;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.11.12, sbtVersion: 1.3.10
circuit theta : 
  module theta : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip theta_in : UInt<64>[25], theta_out : UInt<64>[25], flip cond : UInt<1>}
    
    when io.cond : @[theta.scala 12:16]
      io.theta_out[0] <= io.theta_in[0] @[theta.scala 13:18]
      io.theta_out[1] <= io.theta_in[1] @[theta.scala 13:18]
      io.theta_out[2] <= io.theta_in[2] @[theta.scala 13:18]
      io.theta_out[3] <= io.theta_in[3] @[theta.scala 13:18]
      io.theta_out[4] <= io.theta_in[4] @[theta.scala 13:18]
      io.theta_out[5] <= io.theta_in[5] @[theta.scala 13:18]
      io.theta_out[6] <= io.theta_in[6] @[theta.scala 13:18]
      io.theta_out[7] <= io.theta_in[7] @[theta.scala 13:18]
      io.theta_out[8] <= io.theta_in[8] @[theta.scala 13:18]
      io.theta_out[9] <= io.theta_in[9] @[theta.scala 13:18]
      io.theta_out[10] <= io.theta_in[10] @[theta.scala 13:18]
      io.theta_out[11] <= io.theta_in[11] @[theta.scala 13:18]
      io.theta_out[12] <= io.theta_in[12] @[theta.scala 13:18]
      io.theta_out[13] <= io.theta_in[13] @[theta.scala 13:18]
      io.theta_out[14] <= io.theta_in[14] @[theta.scala 13:18]
      io.theta_out[15] <= io.theta_in[15] @[theta.scala 13:18]
      io.theta_out[16] <= io.theta_in[16] @[theta.scala 13:18]
      io.theta_out[17] <= io.theta_in[17] @[theta.scala 13:18]
      io.theta_out[18] <= io.theta_in[18] @[theta.scala 13:18]
      io.theta_out[19] <= io.theta_in[19] @[theta.scala 13:18]
      io.theta_out[20] <= io.theta_in[20] @[theta.scala 13:18]
      io.theta_out[21] <= io.theta_in[21] @[theta.scala 13:18]
      io.theta_out[22] <= io.theta_in[22] @[theta.scala 13:18]
      io.theta_out[23] <= io.theta_in[23] @[theta.scala 13:18]
      io.theta_out[24] <= io.theta_in[24] @[theta.scala 13:18]
      skip @[theta.scala 12:16]
    
