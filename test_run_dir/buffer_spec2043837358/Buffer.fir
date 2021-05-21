;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Buffer : 
  module Buffer : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataIn : UInt<64>, dataOut : UInt<64>[9]}
    
    wire _WIRE : UInt<64>[9] @[Buffer.scala 9:32]
    _WIRE[0] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[1] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[2] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[3] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[4] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[5] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[6] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[7] <= UInt<64>("h00") @[Buffer.scala 9:32]
    _WIRE[8] <= UInt<64>("h00") @[Buffer.scala 9:32]
    reg dataReg : UInt<64>[9], clock with : (reset => (reset, _WIRE)) @[Buffer.scala 9:24]
    dataReg[0] <= io.dataIn @[Buffer.scala 11:14]
    dataReg[1] <= dataReg[0] @[Buffer.scala 12:14]
    dataReg[2] <= dataReg[1] @[Buffer.scala 13:14]
    dataReg[3] <= dataReg[2] @[Buffer.scala 14:14]
    dataReg[4] <= dataReg[3] @[Buffer.scala 15:14]
    dataReg[5] <= dataReg[4] @[Buffer.scala 16:14]
    dataReg[6] <= dataReg[5] @[Buffer.scala 17:14]
    dataReg[7] <= dataReg[6] @[Buffer.scala 18:14]
    dataReg[8] <= dataReg[7] @[Buffer.scala 19:14]
    io.dataOut[0] <= dataReg[0] @[Buffer.scala 21:14]
    io.dataOut[1] <= dataReg[1] @[Buffer.scala 21:14]
    io.dataOut[2] <= dataReg[2] @[Buffer.scala 21:14]
    io.dataOut[3] <= dataReg[3] @[Buffer.scala 21:14]
    io.dataOut[4] <= dataReg[4] @[Buffer.scala 21:14]
    io.dataOut[5] <= dataReg[5] @[Buffer.scala 21:14]
    io.dataOut[6] <= dataReg[6] @[Buffer.scala 21:14]
    io.dataOut[7] <= dataReg[7] @[Buffer.scala 21:14]
    io.dataOut[8] <= dataReg[8] @[Buffer.scala 21:14]
    
