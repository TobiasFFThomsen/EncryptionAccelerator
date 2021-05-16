circuit Buffer :
  module Buffer :
    input clock : Clock
    input reset : UInt<1>
    input io_d_0 : UInt<64>
    input io_d_1 : UInt<64>
    input io_d_2 : UInt<64>
    input io_d_3 : UInt<64>
    input io_d_4 : UInt<64>
    input io_d_5 : UInt<64>
    input io_d_6 : UInt<64>
    input io_d_7 : UInt<64>
    input io_d_8 : UInt<64>
    input io_w_in : UInt<64>
    output io_w_out : UInt<64>
    output io_bufferReady : UInt<1>
    input io_hashReady : UInt<1>
    input io_dataRead : UInt<1>

    reg bufferReg_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_1) @[Buffer.scala 37:28]
    reg bufferReg_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_2) @[Buffer.scala 38:28]
    reg bufferReg_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_3) @[Buffer.scala 39:28]
    reg bufferReg_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_4) @[Buffer.scala 40:28]
    reg bufferReg_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_5) @[Buffer.scala 41:28]
    reg bufferReg_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_6) @[Buffer.scala 42:28]
    reg bufferReg_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_7) @[Buffer.scala 43:28]
    reg bufferReg_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_8) @[Buffer.scala 44:28]
    reg bufferReg_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_9) @[Buffer.scala 45:28]
    reg counterReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counterReg) @[Buffer.scala 46:28]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Buffer.scala 50:32]
    node _T = eq(UInt<1>("h0"), stateReg) @[Conditional.scala 37:30]
    node _T_1 = eq(io_hashReady, UInt<1>("h0")) @[Buffer.scala 56:15]
    node _T_2 = lt(counterReg, UInt<4>("h9")) @[Buffer.scala 58:26]
    node _T_3 = add(counterReg, UInt<1>("h1")) @[Buffer.scala 61:38]
    node _T_4 = tail(_T_3, 1) @[Buffer.scala 61:38]
    node _GEN_0 = mux(_T_2, UInt<1>("h0"), UInt<1>("h1")) @[Buffer.scala 59:11 Buffer.scala 60:28 Buffer.scala 65:28]
    node _GEN_1 = mux(_T_2, _T_4, UInt<1>("h0")) @[Buffer.scala 59:11 Buffer.scala 61:24 Buffer.scala 66:24]
    node _GEN_2 = mux(_T_2, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 59:11 Buffer.scala 62:22 Buffer.scala 67:22]
    node _GEN_3 = mux(io_hashReady, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 70:9 Buffer.scala 71:26 Buffer.scala 76:26]
    node _GEN_4 = mux(io_hashReady, UInt<1>("h1"), UInt<1>("h0")) @[Buffer.scala 70:9 Buffer.scala 73:20 Buffer.scala 77:20]
    node _GEN_5 = mux(_T_1, _GEN_0, _GEN_3) @[Buffer.scala 57:9]
    node _GEN_6 = mux(_T_1, _GEN_1, _GEN_3) @[Buffer.scala 57:9]
    node _GEN_7 = mux(_T_1, _GEN_2, _GEN_4) @[Buffer.scala 57:9]
    node _T_5 = eq(UInt<1>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_6 = and(io_hashReady, io_dataRead) @[Buffer.scala 85:25]
    node _T_7 = eq(io_dataRead, UInt<1>("h0")) @[Buffer.scala 88:34]
    node _T_8 = and(io_hashReady, _T_7) @[Buffer.scala 88:31]
    node _GEN_8 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 88:47 Buffer.scala 89:24 Buffer.scala 92:24]
    node _GEN_9 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Buffer.scala 88:47 Buffer.scala 90:24 Buffer.scala 93:24]
    node _GEN_10 = mux(_T_6, UInt<1>("h0"), _GEN_8) @[Buffer.scala 85:40 Buffer.scala 86:24]
    node _GEN_11 = mux(_T_6, UInt<1>("h0"), _GEN_9) @[Buffer.scala 85:40 Buffer.scala 87:24]
    node _GEN_12 = mux(_T_5, UInt<1>("h0"), counterReg) @[Conditional.scala 39:67 Buffer.scala 83:18 Buffer.scala 46:28]
    node _GEN_13 = mux(_T_5, _GEN_11, stateReg) @[Conditional.scala 39:67 Buffer.scala 50:32]
    node _GEN_14 = mux(_T, _GEN_6, _GEN_12) @[Conditional.scala 40:58]
    node _GEN_15 = mux(_T, _GEN_7, _GEN_13) @[Conditional.scala 40:58]
    node _T_9 = eq(stateReg, UInt<1>("h0")) @[Buffer.scala 99:17]
    node _T_10 = eq(stateReg, UInt<1>("h1")) @[Buffer.scala 111:23]
    node _GEN_16 = mux(_T_10, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 112:3 Buffer.scala 113:20 Buffer.scala 124:20]
    node _GEN_17 = mux(_T_10, io_d_0, bufferReg_1) @[Buffer.scala 112:3 Buffer.scala 114:17 Buffer.scala 125:17]
    node _GEN_18 = mux(_T_10, io_d_1, bufferReg_2) @[Buffer.scala 112:3 Buffer.scala 115:17 Buffer.scala 126:17]
    node _GEN_19 = mux(_T_10, io_d_2, bufferReg_3) @[Buffer.scala 112:3 Buffer.scala 116:17 Buffer.scala 127:17]
    node _GEN_20 = mux(_T_10, io_d_3, bufferReg_4) @[Buffer.scala 112:3 Buffer.scala 117:17 Buffer.scala 128:17]
    node _GEN_21 = mux(_T_10, io_d_4, bufferReg_5) @[Buffer.scala 112:3 Buffer.scala 118:17 Buffer.scala 129:17]
    node _GEN_22 = mux(_T_10, io_d_5, bufferReg_6) @[Buffer.scala 112:3 Buffer.scala 119:17 Buffer.scala 130:17]
    node _GEN_23 = mux(_T_10, io_d_6, bufferReg_7) @[Buffer.scala 112:3 Buffer.scala 120:17 Buffer.scala 131:17]
    node _GEN_24 = mux(_T_10, io_d_7, bufferReg_8) @[Buffer.scala 112:3 Buffer.scala 121:17 Buffer.scala 132:17]
    node _GEN_25 = mux(_T_10, io_d_8, bufferReg_9) @[Buffer.scala 112:3 Buffer.scala 122:17 Buffer.scala 133:17]
    node _GEN_26 = mux(_T_9, UInt<1>("h0"), _GEN_16) @[Buffer.scala 100:3 Buffer.scala 101:20]
    node _GEN_27 = mux(_T_9, io_w_in, _GEN_17) @[Buffer.scala 100:3 Buffer.scala 102:17]
    node _GEN_28 = mux(_T_9, bufferReg_1, _GEN_18) @[Buffer.scala 100:3 Buffer.scala 103:17]
    node _GEN_29 = mux(_T_9, bufferReg_2, _GEN_19) @[Buffer.scala 100:3 Buffer.scala 104:17]
    node _GEN_30 = mux(_T_9, bufferReg_3, _GEN_20) @[Buffer.scala 100:3 Buffer.scala 105:17]
    node _GEN_31 = mux(_T_9, bufferReg_4, _GEN_21) @[Buffer.scala 100:3 Buffer.scala 106:17]
    node _GEN_32 = mux(_T_9, bufferReg_5, _GEN_22) @[Buffer.scala 100:3 Buffer.scala 107:17]
    node _GEN_33 = mux(_T_9, bufferReg_6, _GEN_23) @[Buffer.scala 100:3 Buffer.scala 108:17]
    node _GEN_34 = mux(_T_9, bufferReg_7, _GEN_24) @[Buffer.scala 100:3 Buffer.scala 109:17]
    node _GEN_35 = mux(_T_9, bufferReg_8, _GEN_25) @[Buffer.scala 100:3 Buffer.scala 110:17]
    io_w_out <= UInt<1>("h0") @[Buffer.scala 51:12]
    io_bufferReady <= _GEN_26
    bufferReg_1 <= mux(reset, UInt<64>("h0"), _GEN_27) @[Buffer.scala 37:28 Buffer.scala 37:28]
    bufferReg_2 <= mux(reset, UInt<64>("h0"), _GEN_28) @[Buffer.scala 38:28 Buffer.scala 38:28]
    bufferReg_3 <= mux(reset, UInt<64>("h0"), _GEN_29) @[Buffer.scala 39:28 Buffer.scala 39:28]
    bufferReg_4 <= mux(reset, UInt<64>("h0"), _GEN_30) @[Buffer.scala 40:28 Buffer.scala 40:28]
    bufferReg_5 <= mux(reset, UInt<64>("h0"), _GEN_31) @[Buffer.scala 41:28 Buffer.scala 41:28]
    bufferReg_6 <= mux(reset, UInt<64>("h0"), _GEN_32) @[Buffer.scala 42:28 Buffer.scala 42:28]
    bufferReg_7 <= mux(reset, UInt<64>("h0"), _GEN_33) @[Buffer.scala 43:28 Buffer.scala 43:28]
    bufferReg_8 <= mux(reset, UInt<64>("h0"), _GEN_34) @[Buffer.scala 44:28 Buffer.scala 44:28]
    bufferReg_9 <= mux(reset, UInt<64>("h0"), _GEN_35) @[Buffer.scala 45:28 Buffer.scala 45:28]
    counterReg <= mux(reset, UInt<4>("h0"), _GEN_14) @[Buffer.scala 46:28 Buffer.scala 46:28]
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_15) @[Buffer.scala 50:32 Buffer.scala 50:32]