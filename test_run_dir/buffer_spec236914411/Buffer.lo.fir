circuit Buffer :
  module Buffer :
    input clock : Clock
    input reset : UInt<1>
    input io_dataIn : UInt<64>
    output io_dataOut_0 : UInt<64>
    output io_dataOut_1 : UInt<64>
    output io_dataOut_2 : UInt<64>
    output io_dataOut_3 : UInt<64>
    output io_dataOut_4 : UInt<64>
    output io_dataOut_5 : UInt<64>
    output io_dataOut_6 : UInt<64>
    output io_dataOut_7 : UInt<64>
    output io_dataOut_8 : UInt<64>

    reg dataReg_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_0) @[Buffer.scala 9:24]
    reg dataReg_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_1) @[Buffer.scala 9:24]
    reg dataReg_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_2) @[Buffer.scala 9:24]
    reg dataReg_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_3) @[Buffer.scala 9:24]
    reg dataReg_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_4) @[Buffer.scala 9:24]
    reg dataReg_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_5) @[Buffer.scala 9:24]
    reg dataReg_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_6) @[Buffer.scala 9:24]
    reg dataReg_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_7) @[Buffer.scala 9:24]
    reg dataReg_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), dataReg_8) @[Buffer.scala 9:24]
    node _WIRE_0 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_1 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_2 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_3 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_4 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_5 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_6 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_7 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    node _WIRE_8 = UInt<64>("h0") @[Buffer.scala 9:32 Buffer.scala 9:32]
    io_dataOut_0 <= dataReg_0 @[Buffer.scala 21:14]
    io_dataOut_1 <= dataReg_1 @[Buffer.scala 21:14]
    io_dataOut_2 <= dataReg_2 @[Buffer.scala 21:14]
    io_dataOut_3 <= dataReg_3 @[Buffer.scala 21:14]
    io_dataOut_4 <= dataReg_4 @[Buffer.scala 21:14]
    io_dataOut_5 <= dataReg_5 @[Buffer.scala 21:14]
    io_dataOut_6 <= dataReg_6 @[Buffer.scala 21:14]
    io_dataOut_7 <= dataReg_7 @[Buffer.scala 21:14]
    io_dataOut_8 <= dataReg_8 @[Buffer.scala 21:14]
    dataReg_0 <= mux(reset, _WIRE_0, io_dataIn) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 11:14]
    dataReg_1 <= mux(reset, _WIRE_1, dataReg_0) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 12:14]
    dataReg_2 <= mux(reset, _WIRE_2, dataReg_1) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 13:14]
    dataReg_3 <= mux(reset, _WIRE_3, dataReg_2) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 14:14]
    dataReg_4 <= mux(reset, _WIRE_4, dataReg_3) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 15:14]
    dataReg_5 <= mux(reset, _WIRE_5, dataReg_4) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 16:14]
    dataReg_6 <= mux(reset, _WIRE_6, dataReg_5) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 17:14]
    dataReg_7 <= mux(reset, _WIRE_7, dataReg_6) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 18:14]
    dataReg_8 <= mux(reset, _WIRE_8, dataReg_7) @[Buffer.scala 9:24 Buffer.scala 9:24 Buffer.scala 19:14]