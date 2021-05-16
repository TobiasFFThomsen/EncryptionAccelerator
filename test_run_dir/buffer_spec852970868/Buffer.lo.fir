circuit Buffer :
  module Buffer :
    input clock : Clock
    input reset : UInt<1>
    output io_bufferTest_0 : UInt<64>
    output io_bufferTest_1 : UInt<64>
    output io_bufferTest_2 : UInt<64>
    output io_bufferTest_3 : UInt<64>
    output io_bufferTest_4 : UInt<64>
    output io_bufferTest_5 : UInt<64>
    output io_bufferTest_6 : UInt<64>
    output io_bufferTest_7 : UInt<64>
    output io_bufferTest_8 : UInt<64>
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
      reset => (UInt<1>("h0"), bufferReg_1) @[Buffer.scala 48:28]
    reg bufferReg_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_2) @[Buffer.scala 49:28]
    reg bufferReg_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_3) @[Buffer.scala 50:28]
    reg bufferReg_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_4) @[Buffer.scala 51:28]
    reg bufferReg_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_5) @[Buffer.scala 52:28]
    reg bufferReg_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_6) @[Buffer.scala 53:28]
    reg bufferReg_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_7) @[Buffer.scala 54:28]
    reg bufferReg_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_8) @[Buffer.scala 55:28]
    reg bufferReg_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_9) @[Buffer.scala 56:28]
    reg counterReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), counterReg) @[Buffer.scala 57:28]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Buffer.scala 61:32]
    node _T = eq(stateReg, UInt<1>("h0")) @[Buffer.scala 64:20]
    node _T_1 = eq(io_hashReady, UInt<1>("h0")) @[Buffer.scala 66:15]
    node _T_2 = lt(counterReg, UInt<4>("h9")) @[Buffer.scala 68:26]
    node _T_3 = add(counterReg, UInt<1>("h1")) @[Buffer.scala 80:38]
    node _T_4 = tail(_T_3, 1) @[Buffer.scala 80:38]
    node _GEN_0 = mux(_T_2, UInt<1>("h0"), UInt<1>("h1")) @[Buffer.scala 69:11 Buffer.scala 70:28 Buffer.scala 84:28]
    node _GEN_1 = mux(_T_2, io_w_in, bufferReg_1) @[Buffer.scala 69:11 Buffer.scala 71:25 Buffer.scala 85:25]
    node _GEN_2 = mux(_T_2, bufferReg_1, bufferReg_2) @[Buffer.scala 69:11 Buffer.scala 72:25 Buffer.scala 86:25]
    node _GEN_3 = mux(_T_2, bufferReg_2, bufferReg_3) @[Buffer.scala 69:11 Buffer.scala 73:25 Buffer.scala 87:25]
    node _GEN_4 = mux(_T_2, bufferReg_3, bufferReg_4) @[Buffer.scala 69:11 Buffer.scala 74:25 Buffer.scala 88:25]
    node _GEN_5 = mux(_T_2, bufferReg_4, bufferReg_5) @[Buffer.scala 69:11 Buffer.scala 75:25 Buffer.scala 89:25]
    node _GEN_6 = mux(_T_2, bufferReg_5, bufferReg_6) @[Buffer.scala 69:11 Buffer.scala 76:25 Buffer.scala 90:25]
    node _GEN_7 = mux(_T_2, bufferReg_6, bufferReg_7) @[Buffer.scala 69:11 Buffer.scala 77:25 Buffer.scala 91:25]
    node _GEN_8 = mux(_T_2, bufferReg_7, bufferReg_8) @[Buffer.scala 69:11 Buffer.scala 78:25 Buffer.scala 92:25]
    node _GEN_9 = mux(_T_2, bufferReg_8, bufferReg_9) @[Buffer.scala 69:11 Buffer.scala 79:25 Buffer.scala 93:25]
    node _GEN_10 = mux(_T_2, _T_4, UInt<1>("h0")) @[Buffer.scala 69:11 Buffer.scala 80:24 Buffer.scala 94:24]
    node _GEN_11 = mux(_T_2, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 69:11 Buffer.scala 81:22 Buffer.scala 95:22]
    node _GEN_12 = mux(_T_1, _GEN_0, UInt<1>("h0")) @[Buffer.scala 67:9 Buffer.scala 99:26]
    node _GEN_13 = mux(_T_1, _GEN_1, bufferReg_1) @[Buffer.scala 67:9 Buffer.scala 100:23]
    node _GEN_14 = mux(_T_1, _GEN_2, bufferReg_2) @[Buffer.scala 67:9 Buffer.scala 101:23]
    node _GEN_15 = mux(_T_1, _GEN_3, bufferReg_3) @[Buffer.scala 67:9 Buffer.scala 102:23]
    node _GEN_16 = mux(_T_1, _GEN_4, bufferReg_4) @[Buffer.scala 67:9 Buffer.scala 103:23]
    node _GEN_17 = mux(_T_1, _GEN_5, bufferReg_5) @[Buffer.scala 67:9 Buffer.scala 104:23]
    node _GEN_18 = mux(_T_1, _GEN_6, bufferReg_6) @[Buffer.scala 67:9 Buffer.scala 105:23]
    node _GEN_19 = mux(_T_1, _GEN_7, bufferReg_7) @[Buffer.scala 67:9 Buffer.scala 106:23]
    node _GEN_20 = mux(_T_1, _GEN_8, bufferReg_8) @[Buffer.scala 67:9 Buffer.scala 107:23]
    node _GEN_21 = mux(_T_1, _GEN_9, bufferReg_9) @[Buffer.scala 67:9 Buffer.scala 108:23]
    node _GEN_22 = mux(_T_1, _GEN_10, UInt<1>("h0")) @[Buffer.scala 67:9 Buffer.scala 109:22]
    node _GEN_23 = mux(_T_1, _GEN_11, UInt<1>("h1")) @[Buffer.scala 67:9 Buffer.scala 110:20]
    node _T_5 = eq(stateReg, UInt<1>("h1")) @[Buffer.scala 112:25]
    node _T_6 = and(io_hashReady, io_dataRead) @[Buffer.scala 125:25]
    node _T_7 = eq(io_dataRead, UInt<1>("h0")) @[Buffer.scala 128:34]
    node _T_8 = and(io_hashReady, _T_7) @[Buffer.scala 128:31]
    node _GEN_24 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 128:47 Buffer.scala 129:24 Buffer.scala 132:24]
    node _GEN_25 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Buffer.scala 128:47 Buffer.scala 130:24 Buffer.scala 133:24]
    node _GEN_26 = mux(_T_6, UInt<1>("h0"), _GEN_24) @[Buffer.scala 125:40 Buffer.scala 126:24]
    node _GEN_27 = mux(_T_6, UInt<1>("h0"), _GEN_25) @[Buffer.scala 125:40 Buffer.scala 127:24]
    node _GEN_28 = mux(_T_5, io_d_0, bufferReg_1) @[Buffer.scala 113:5 Buffer.scala 114:19 Buffer.scala 48:28]
    node _GEN_29 = mux(_T_5, io_d_1, bufferReg_2) @[Buffer.scala 113:5 Buffer.scala 115:19 Buffer.scala 49:28]
    node _GEN_30 = mux(_T_5, io_d_2, bufferReg_3) @[Buffer.scala 113:5 Buffer.scala 116:19 Buffer.scala 50:28]
    node _GEN_31 = mux(_T_5, io_d_3, bufferReg_4) @[Buffer.scala 113:5 Buffer.scala 117:19 Buffer.scala 51:28]
    node _GEN_32 = mux(_T_5, io_d_4, bufferReg_5) @[Buffer.scala 113:5 Buffer.scala 118:19 Buffer.scala 52:28]
    node _GEN_33 = mux(_T_5, io_d_5, bufferReg_6) @[Buffer.scala 113:5 Buffer.scala 119:19 Buffer.scala 53:28]
    node _GEN_34 = mux(_T_5, io_d_6, bufferReg_7) @[Buffer.scala 113:5 Buffer.scala 120:19 Buffer.scala 54:28]
    node _GEN_35 = mux(_T_5, io_d_7, bufferReg_8) @[Buffer.scala 113:5 Buffer.scala 121:19 Buffer.scala 55:28]
    node _GEN_36 = mux(_T_5, io_d_8, bufferReg_9) @[Buffer.scala 113:5 Buffer.scala 122:19 Buffer.scala 56:28]
    node _GEN_37 = mux(_T_5, UInt<1>("h0"), counterReg) @[Buffer.scala 113:5 Buffer.scala 123:18 Buffer.scala 57:28]
    node _GEN_38 = mux(_T_5, _GEN_26, UInt<1>("h0")) @[Buffer.scala 113:5 Buffer.scala 136:22]
    node _GEN_39 = mux(_T_5, _GEN_27, stateReg) @[Buffer.scala 113:5 Buffer.scala 61:32]
    node _GEN_40 = mux(_T, _GEN_12, _GEN_38) @[Buffer.scala 65:5]
    node _GEN_41 = mux(_T, _GEN_13, _GEN_28) @[Buffer.scala 65:5]
    node _GEN_42 = mux(_T, _GEN_14, _GEN_29) @[Buffer.scala 65:5]
    node _GEN_43 = mux(_T, _GEN_15, _GEN_30) @[Buffer.scala 65:5]
    node _GEN_44 = mux(_T, _GEN_16, _GEN_31) @[Buffer.scala 65:5]
    node _GEN_45 = mux(_T, _GEN_17, _GEN_32) @[Buffer.scala 65:5]
    node _GEN_46 = mux(_T, _GEN_18, _GEN_33) @[Buffer.scala 65:5]
    node _GEN_47 = mux(_T, _GEN_19, _GEN_34) @[Buffer.scala 65:5]
    node _GEN_48 = mux(_T, _GEN_20, _GEN_35) @[Buffer.scala 65:5]
    node _GEN_49 = mux(_T, _GEN_21, _GEN_36) @[Buffer.scala 65:5]
    node _GEN_50 = mux(_T, _GEN_22, _GEN_37) @[Buffer.scala 65:5]
    node _GEN_51 = mux(_T, _GEN_23, _GEN_39) @[Buffer.scala 65:5]
    io_bufferTest_0 <= bufferReg_1 @[Buffer.scala 141:19]
    io_bufferTest_1 <= bufferReg_2 @[Buffer.scala 142:19]
    io_bufferTest_2 <= bufferReg_3 @[Buffer.scala 143:19]
    io_bufferTest_3 <= bufferReg_4 @[Buffer.scala 144:19]
    io_bufferTest_4 <= bufferReg_5 @[Buffer.scala 145:19]
    io_bufferTest_5 <= bufferReg_6 @[Buffer.scala 146:19]
    io_bufferTest_6 <= bufferReg_7 @[Buffer.scala 147:19]
    io_bufferTest_7 <= bufferReg_8 @[Buffer.scala 148:19]
    io_bufferTest_8 <= bufferReg_9 @[Buffer.scala 149:19]
    io_w_out <= UInt<1>("h0") @[Buffer.scala 62:12]
    io_bufferReady <= _GEN_40
    bufferReg_1 <= mux(reset, UInt<64>("h0"), _GEN_41) @[Buffer.scala 48:28 Buffer.scala 48:28]
    bufferReg_2 <= mux(reset, UInt<64>("h0"), _GEN_42) @[Buffer.scala 49:28 Buffer.scala 49:28]
    bufferReg_3 <= mux(reset, UInt<64>("h0"), _GEN_43) @[Buffer.scala 50:28 Buffer.scala 50:28]
    bufferReg_4 <= mux(reset, UInt<64>("h0"), _GEN_44) @[Buffer.scala 51:28 Buffer.scala 51:28]
    bufferReg_5 <= mux(reset, UInt<64>("h0"), _GEN_45) @[Buffer.scala 52:28 Buffer.scala 52:28]
    bufferReg_6 <= mux(reset, UInt<64>("h0"), _GEN_46) @[Buffer.scala 53:28 Buffer.scala 53:28]
    bufferReg_7 <= mux(reset, UInt<64>("h0"), _GEN_47) @[Buffer.scala 54:28 Buffer.scala 54:28]
    bufferReg_8 <= mux(reset, UInt<64>("h0"), _GEN_48) @[Buffer.scala 55:28 Buffer.scala 55:28]
    bufferReg_9 <= mux(reset, UInt<64>("h0"), _GEN_49) @[Buffer.scala 56:28 Buffer.scala 56:28]
    counterReg <= mux(reset, UInt<5>("h0"), _GEN_50) @[Buffer.scala 57:28 Buffer.scala 57:28]
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_51) @[Buffer.scala 61:32 Buffer.scala 61:32]