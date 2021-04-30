;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Buffer : 
  module Buffer : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip buffer_in : UInt<64>, flip enable : UInt<1>, buffer_out : UInt<64>}
    
    reg bufferReg_1 : UInt<64>, clock @[Buffer.scala 10:24]
    reg bufferReg_2 : UInt<64>, clock @[Buffer.scala 11:24]
    reg bufferReg_3 : UInt<64>, clock @[Buffer.scala 12:24]
    reg bufferReg_4 : UInt<64>, clock @[Buffer.scala 13:24]
    reg bufferReg_5 : UInt<64>, clock @[Buffer.scala 14:24]
    reg bufferReg_6 : UInt<64>, clock @[Buffer.scala 15:24]
    reg bufferReg_7 : UInt<64>, clock @[Buffer.scala 16:24]
    reg bufferReg_8 : UInt<64>, clock @[Buffer.scala 17:24]
    reg bufferReg_9 : UInt<64>, clock @[Buffer.scala 18:24]
    when io.enable : @[Buffer.scala 20:18]
      bufferReg_1 <= io.buffer_in @[Buffer.scala 21:21]
      bufferReg_2 <= bufferReg_1 @[Buffer.scala 22:21]
      bufferReg_3 <= bufferReg_2 @[Buffer.scala 23:21]
      bufferReg_4 <= bufferReg_3 @[Buffer.scala 24:21]
      bufferReg_5 <= bufferReg_4 @[Buffer.scala 25:21]
      bufferReg_6 <= bufferReg_5 @[Buffer.scala 26:21]
      bufferReg_7 <= bufferReg_6 @[Buffer.scala 27:21]
      bufferReg_8 <= bufferReg_7 @[Buffer.scala 28:21]
      bufferReg_9 <= bufferReg_8 @[Buffer.scala 29:21]
      skip @[Buffer.scala 20:18]
    io.buffer_out <= bufferReg_9 @[Buffer.scala 31:17]
    
