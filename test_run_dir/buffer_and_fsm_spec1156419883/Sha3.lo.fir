circuit Sha3 :
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
    input io_roundReady : UInt<1>

    reg bufferReg_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_1) @[Buffer.scala 49:28]
    reg bufferReg_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_2) @[Buffer.scala 50:28]
    reg bufferReg_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_3) @[Buffer.scala 51:28]
    reg bufferReg_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_4) @[Buffer.scala 52:28]
    reg bufferReg_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_5) @[Buffer.scala 53:28]
    reg bufferReg_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_6) @[Buffer.scala 54:28]
    reg bufferReg_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_7) @[Buffer.scala 55:28]
    reg bufferReg_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_8) @[Buffer.scala 56:28]
    reg bufferReg_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_9) @[Buffer.scala 57:28]
    reg counterReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), counterReg) @[Buffer.scala 58:28]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Buffer.scala 62:32]
    node _T = eq(stateReg, UInt<1>("h0")) @[Buffer.scala 65:20]
    node _T_1 = eq(io_hashReady, UInt<1>("h0")) @[Buffer.scala 67:15]
    node _T_2 = lt(counterReg, UInt<4>("h9")) @[Buffer.scala 69:28]
    node _T_3 = add(counterReg, UInt<1>("h1")) @[Buffer.scala 81:40]
    node _T_4 = tail(_T_3, 1) @[Buffer.scala 81:40]
    node _GEN_0 = mux(io_roundReady, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 95:34 Buffer.scala 96:26 Buffer.scala 99:26]
    node _GEN_1 = mux(io_roundReady, UInt<1>("h0"), counterReg) @[Buffer.scala 95:34 Buffer.scala 97:28 Buffer.scala 100:28]
    node _GEN_2 = mux(_T_2, UInt<1>("h0"), UInt<1>("h1")) @[Buffer.scala 70:13 Buffer.scala 71:30 Buffer.scala 85:30]
    node _GEN_3 = mux(_T_2, io_w_in, bufferReg_1) @[Buffer.scala 70:13 Buffer.scala 72:27 Buffer.scala 86:27]
    node _GEN_4 = mux(_T_2, bufferReg_1, bufferReg_2) @[Buffer.scala 70:13 Buffer.scala 73:27 Buffer.scala 87:27]
    node _GEN_5 = mux(_T_2, bufferReg_2, bufferReg_3) @[Buffer.scala 70:13 Buffer.scala 74:27 Buffer.scala 88:27]
    node _GEN_6 = mux(_T_2, bufferReg_3, bufferReg_4) @[Buffer.scala 70:13 Buffer.scala 75:27 Buffer.scala 89:27]
    node _GEN_7 = mux(_T_2, bufferReg_4, bufferReg_5) @[Buffer.scala 70:13 Buffer.scala 76:27 Buffer.scala 90:27]
    node _GEN_8 = mux(_T_2, bufferReg_5, bufferReg_6) @[Buffer.scala 70:13 Buffer.scala 77:27 Buffer.scala 91:27]
    node _GEN_9 = mux(_T_2, bufferReg_6, bufferReg_7) @[Buffer.scala 70:13 Buffer.scala 78:27 Buffer.scala 92:27]
    node _GEN_10 = mux(_T_2, bufferReg_7, bufferReg_8) @[Buffer.scala 70:13 Buffer.scala 79:27 Buffer.scala 93:27]
    node _GEN_11 = mux(_T_2, bufferReg_8, bufferReg_9) @[Buffer.scala 70:13 Buffer.scala 80:27 Buffer.scala 94:27]
    node _GEN_12 = mux(_T_2, _T_4, _GEN_1) @[Buffer.scala 70:13 Buffer.scala 81:26]
    node _GEN_13 = mux(_T_2, UInt<1>("h0"), _GEN_0) @[Buffer.scala 70:13 Buffer.scala 82:24]
    node _GEN_14 = mux(_T_1, _GEN_2, UInt<1>("h0")) @[Buffer.scala 68:9 Buffer.scala 105:26]
    node _GEN_15 = mux(_T_1, _GEN_3, bufferReg_1) @[Buffer.scala 68:9 Buffer.scala 106:23]
    node _GEN_16 = mux(_T_1, _GEN_4, bufferReg_2) @[Buffer.scala 68:9 Buffer.scala 107:23]
    node _GEN_17 = mux(_T_1, _GEN_5, bufferReg_3) @[Buffer.scala 68:9 Buffer.scala 108:23]
    node _GEN_18 = mux(_T_1, _GEN_6, bufferReg_4) @[Buffer.scala 68:9 Buffer.scala 109:23]
    node _GEN_19 = mux(_T_1, _GEN_7, bufferReg_5) @[Buffer.scala 68:9 Buffer.scala 110:23]
    node _GEN_20 = mux(_T_1, _GEN_8, bufferReg_6) @[Buffer.scala 68:9 Buffer.scala 111:23]
    node _GEN_21 = mux(_T_1, _GEN_9, bufferReg_7) @[Buffer.scala 68:9 Buffer.scala 112:23]
    node _GEN_22 = mux(_T_1, _GEN_10, bufferReg_8) @[Buffer.scala 68:9 Buffer.scala 113:23]
    node _GEN_23 = mux(_T_1, _GEN_11, bufferReg_9) @[Buffer.scala 68:9 Buffer.scala 114:23]
    node _GEN_24 = mux(_T_1, _GEN_12, UInt<1>("h0")) @[Buffer.scala 68:9 Buffer.scala 115:22]
    node _GEN_25 = mux(_T_1, _GEN_13, UInt<1>("h1")) @[Buffer.scala 68:9 Buffer.scala 116:20]
    node _T_5 = eq(stateReg, UInt<1>("h1")) @[Buffer.scala 118:25]
    node _T_6 = and(io_hashReady, io_dataRead) @[Buffer.scala 131:25]
    node _T_7 = eq(io_dataRead, UInt<1>("h0")) @[Buffer.scala 134:34]
    node _T_8 = and(io_hashReady, _T_7) @[Buffer.scala 134:31]
    node _GEN_26 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 134:47 Buffer.scala 135:24 Buffer.scala 138:24]
    node _GEN_27 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Buffer.scala 134:47 Buffer.scala 136:24 Buffer.scala 139:24]
    node _GEN_28 = mux(_T_6, UInt<1>("h0"), _GEN_26) @[Buffer.scala 131:40 Buffer.scala 132:24]
    node _GEN_29 = mux(_T_6, UInt<1>("h0"), _GEN_27) @[Buffer.scala 131:40 Buffer.scala 133:24]
    node _GEN_30 = mux(_T_5, io_d_0, bufferReg_1) @[Buffer.scala 119:5 Buffer.scala 120:19 Buffer.scala 49:28]
    node _GEN_31 = mux(_T_5, io_d_1, bufferReg_2) @[Buffer.scala 119:5 Buffer.scala 121:19 Buffer.scala 50:28]
    node _GEN_32 = mux(_T_5, io_d_2, bufferReg_3) @[Buffer.scala 119:5 Buffer.scala 122:19 Buffer.scala 51:28]
    node _GEN_33 = mux(_T_5, io_d_3, bufferReg_4) @[Buffer.scala 119:5 Buffer.scala 123:19 Buffer.scala 52:28]
    node _GEN_34 = mux(_T_5, io_d_4, bufferReg_5) @[Buffer.scala 119:5 Buffer.scala 124:19 Buffer.scala 53:28]
    node _GEN_35 = mux(_T_5, io_d_5, bufferReg_6) @[Buffer.scala 119:5 Buffer.scala 125:19 Buffer.scala 54:28]
    node _GEN_36 = mux(_T_5, io_d_6, bufferReg_7) @[Buffer.scala 119:5 Buffer.scala 126:19 Buffer.scala 55:28]
    node _GEN_37 = mux(_T_5, io_d_7, bufferReg_8) @[Buffer.scala 119:5 Buffer.scala 127:19 Buffer.scala 56:28]
    node _GEN_38 = mux(_T_5, io_d_8, bufferReg_9) @[Buffer.scala 119:5 Buffer.scala 128:19 Buffer.scala 57:28]
    node _GEN_39 = mux(_T_5, UInt<1>("h0"), counterReg) @[Buffer.scala 119:5 Buffer.scala 129:18 Buffer.scala 58:28]
    node _GEN_40 = mux(_T_5, _GEN_28, UInt<1>("h0")) @[Buffer.scala 119:5 Buffer.scala 142:22]
    node _GEN_41 = mux(_T_5, _GEN_29, stateReg) @[Buffer.scala 119:5 Buffer.scala 62:32]
    node _GEN_42 = mux(_T, _GEN_14, _GEN_40) @[Buffer.scala 66:5]
    node _GEN_43 = mux(_T, _GEN_15, _GEN_30) @[Buffer.scala 66:5]
    node _GEN_44 = mux(_T, _GEN_16, _GEN_31) @[Buffer.scala 66:5]
    node _GEN_45 = mux(_T, _GEN_17, _GEN_32) @[Buffer.scala 66:5]
    node _GEN_46 = mux(_T, _GEN_18, _GEN_33) @[Buffer.scala 66:5]
    node _GEN_47 = mux(_T, _GEN_19, _GEN_34) @[Buffer.scala 66:5]
    node _GEN_48 = mux(_T, _GEN_20, _GEN_35) @[Buffer.scala 66:5]
    node _GEN_49 = mux(_T, _GEN_21, _GEN_36) @[Buffer.scala 66:5]
    node _GEN_50 = mux(_T, _GEN_22, _GEN_37) @[Buffer.scala 66:5]
    node _GEN_51 = mux(_T, _GEN_23, _GEN_38) @[Buffer.scala 66:5]
    node _GEN_52 = mux(_T, _GEN_24, _GEN_39) @[Buffer.scala 66:5]
    node _GEN_53 = mux(_T, _GEN_25, _GEN_41) @[Buffer.scala 66:5]
    io_bufferTest_0 <= bufferReg_1 @[Buffer.scala 147:19]
    io_bufferTest_1 <= bufferReg_2 @[Buffer.scala 148:19]
    io_bufferTest_2 <= bufferReg_3 @[Buffer.scala 149:19]
    io_bufferTest_3 <= bufferReg_4 @[Buffer.scala 150:19]
    io_bufferTest_4 <= bufferReg_5 @[Buffer.scala 151:19]
    io_bufferTest_5 <= bufferReg_6 @[Buffer.scala 152:19]
    io_bufferTest_6 <= bufferReg_7 @[Buffer.scala 153:19]
    io_bufferTest_7 <= bufferReg_8 @[Buffer.scala 154:19]
    io_bufferTest_8 <= bufferReg_9 @[Buffer.scala 155:19]
    io_w_out <= UInt<1>("h0") @[Buffer.scala 63:12]
    io_bufferReady <= _GEN_42
    bufferReg_1 <= mux(reset, UInt<64>("h0"), _GEN_43) @[Buffer.scala 49:28 Buffer.scala 49:28]
    bufferReg_2 <= mux(reset, UInt<64>("h0"), _GEN_44) @[Buffer.scala 50:28 Buffer.scala 50:28]
    bufferReg_3 <= mux(reset, UInt<64>("h0"), _GEN_45) @[Buffer.scala 51:28 Buffer.scala 51:28]
    bufferReg_4 <= mux(reset, UInt<64>("h0"), _GEN_46) @[Buffer.scala 52:28 Buffer.scala 52:28]
    bufferReg_5 <= mux(reset, UInt<64>("h0"), _GEN_47) @[Buffer.scala 53:28 Buffer.scala 53:28]
    bufferReg_6 <= mux(reset, UInt<64>("h0"), _GEN_48) @[Buffer.scala 54:28 Buffer.scala 54:28]
    bufferReg_7 <= mux(reset, UInt<64>("h0"), _GEN_49) @[Buffer.scala 55:28 Buffer.scala 55:28]
    bufferReg_8 <= mux(reset, UInt<64>("h0"), _GEN_50) @[Buffer.scala 56:28 Buffer.scala 56:28]
    bufferReg_9 <= mux(reset, UInt<64>("h0"), _GEN_51) @[Buffer.scala 57:28 Buffer.scala 57:28]
    counterReg <= mux(reset, UInt<5>("h0"), _GEN_52) @[Buffer.scala 58:28 Buffer.scala 58:28]
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_53) @[Buffer.scala 62:32 Buffer.scala 62:32]

  module FSM :
    input clock : Clock
    input reset : UInt<1>
    output io_hash_ready : UInt<1>
    input io_buffer_ready : UInt<1>
    input io_block_length : UInt<1>
    output io_counter_for_test : UInt<64>
    output io_select_for_xor : UInt<1>
    input io_block_length_valid : UInt<1>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 17:37]
    reg localCountReg : UInt<6>, clock with :
      reset => (UInt<1>("h0"), localCountReg) @[FSM.scala 18:37]
    reg globalCountReg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), globalCountReg) @[FSM.scala 19:37]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 22:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 22:27 FSM.scala 23:19 FSM.scala 25:19]
    node _T_1 = eq(stateReg, UInt<2>("h0")) @[FSM.scala 28:17]
    node _GEN_1 = mux(io_buffer_ready, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 29:26 FSM.scala 30:25 FSM.scala 33:25]
    node _GEN_2 = mux(_T_1, _GEN_1, UInt<1>("h0")) @[FSM.scala 28:26 FSM.scala 37:25]
    node _T_2 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _T_3 = lt(globalCountReg, io_block_length) @[FSM.scala 54:31]
    node _T_4 = add(globalCountReg, UInt<1>("h1")) @[FSM.scala 56:45]
    node _T_5 = tail(_T_4, 1) @[FSM.scala 56:45]
    node _GEN_3 = mux(_T_3, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 54:49 FSM.scala 55:22 FSM.scala 58:22]
    node _GEN_4 = mux(_T_3, _T_5, UInt<1>("h0")) @[FSM.scala 54:49 FSM.scala 56:28 FSM.scala 59:28]
    node _GEN_5 = mux(io_buffer_ready, _GEN_3, UInt<2>("h0")) @[FSM.scala 53:30 FSM.scala 63:20]
    node _GEN_6 = mux(io_buffer_ready, _GEN_4, globalCountReg) @[FSM.scala 53:30 FSM.scala 62:26]
    node _GEN_7 = mux(io_block_length_valid, _GEN_5, UInt<2>("h0")) @[FSM.scala 50:34 FSM.scala 66:18]
    node _GEN_8 = mux(io_block_length_valid, UInt<1>("h0"), UInt<1>("h0")) @[FSM.scala 50:34 FSM.scala 52:23 FSM.scala 67:23]
    node _GEN_9 = mux(io_block_length_valid, _GEN_6, UInt<1>("h0")) @[FSM.scala 50:34 FSM.scala 68:24]
    node _T_6 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_7 = lt(localCountReg, UInt<5>("h17")) @[FSM.scala 73:25]
    node _T_8 = add(localCountReg, UInt<1>("h1")) @[FSM.scala 75:40]
    node _T_9 = tail(_T_8, 1) @[FSM.scala 75:40]
    node _GEN_10 = mux(_T_7, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 73:31 FSM.scala 74:18 FSM.scala 78:18]
    node _GEN_11 = mux(_T_7, _T_9, UInt<1>("h0")) @[FSM.scala 73:31 FSM.scala 75:23 FSM.scala 77:23]
    node _T_10 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_12 = mux(_T_10, UInt<1>("h0"), globalCountReg) @[Conditional.scala 39:67 FSM.scala 82:22 FSM.scala 19:37]
    node _GEN_13 = mux(_T_10, UInt<2>("h0"), stateReg) @[Conditional.scala 39:67 FSM.scala 83:16 FSM.scala 17:37]
    node _GEN_14 = mux(_T_10, UInt<1>("h0"), localCountReg) @[Conditional.scala 39:67 FSM.scala 84:21 FSM.scala 18:37]
    node _GEN_15 = mux(_T_6, globalCountReg, _GEN_12) @[Conditional.scala 39:67 FSM.scala 72:22]
    node _GEN_16 = mux(_T_6, _GEN_10, _GEN_13) @[Conditional.scala 39:67]
    node _GEN_17 = mux(_T_6, _GEN_11, _GEN_14) @[Conditional.scala 39:67]
    node _GEN_18 = mux(_T_2, _GEN_7, _GEN_16) @[Conditional.scala 40:58]
    node _GEN_19 = mux(_T_2, _GEN_8, _GEN_17) @[Conditional.scala 40:58]
    node _GEN_20 = mux(_T_2, _GEN_9, _GEN_15) @[Conditional.scala 40:58]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= localCountReg @[FSM.scala 47:23]
    io_select_for_xor <= _GEN_2
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_18) @[FSM.scala 17:37 FSM.scala 17:37]
    localCountReg <= mux(reset, UInt<6>("h0"), _GEN_19) @[FSM.scala 18:37 FSM.scala 18:37]
    globalCountReg <= mux(reset, UInt<64>("h0"), _GEN_20) @[FSM.scala 19:37 FSM.scala 19:37]

  module Sha3 :
    input clock : Clock
    input reset : UInt<1>
    input io_w_in_from_outside : UInt<64>
    input io_data_read : UInt<1>
    output io_w_in_to_buffer : UInt<64>
    output io_testing_round_counter : UInt<64>
    output io_testing_buffer_ready : UInt<1>
    output io_testing_hash_ready : UInt<1>
    input io_block_length : UInt<64>
    input io_read_block_length : UInt<1>
    output io_block_length_valid : UInt<1>
    output io_block_length_out : UInt<64>

    inst buffer of Buffer @[Sha3.scala 43:31]
    inst fsm of FSM @[Sha3.scala 44:31]
    reg block_length_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), block_length_reg) @[Sha3.scala 46:34]
    node _GEN_0 = mux(io_read_block_length, io_block_length, block_length_reg) @[Sha3.scala 64:29 Sha3.scala 65:22 Sha3.scala 68:22]
    node _GEN_1 = mux(io_read_block_length, UInt<1>("h1"), UInt<1>("h0")) @[Sha3.scala 64:29 Sha3.scala 66:27 Sha3.scala 69:27]
    io_w_in_to_buffer <= io_w_in_from_outside @[Sha3.scala 48:28]
    io_testing_round_counter <= fsm.io_counter_for_test @[Sha3.scala 57:28]
    io_testing_buffer_ready <= buffer.io_bufferReady @[Sha3.scala 58:28]
    io_testing_hash_ready <= fsm.io_hash_ready @[Sha3.scala 59:28]
    io_block_length_valid <= _GEN_1
    io_block_length_out <= block_length_reg @[Sha3.scala 61:23]
    buffer.clock <= clock
    buffer.reset <= reset
    buffer.io_d_0 <= UInt<1>("h0") @[Sha3.scala 75:17]
    buffer.io_d_1 <= UInt<1>("h0") @[Sha3.scala 76:17]
    buffer.io_d_2 <= UInt<1>("h0") @[Sha3.scala 77:17]
    buffer.io_d_3 <= UInt<1>("h0") @[Sha3.scala 78:17]
    buffer.io_d_4 <= UInt<1>("h0") @[Sha3.scala 79:17]
    buffer.io_d_5 <= UInt<1>("h0") @[Sha3.scala 80:17]
    buffer.io_d_6 <= UInt<1>("h0") @[Sha3.scala 81:17]
    buffer.io_d_7 <= UInt<1>("h0") @[Sha3.scala 82:17]
    buffer.io_d_8 <= UInt<1>("h0") @[Sha3.scala 83:17]
    buffer.io_w_in <= io_w_in_to_buffer @[Sha3.scala 49:28]
    buffer.io_hashReady <= fsm.io_hash_ready @[Sha3.scala 55:28]
    buffer.io_dataRead <= io_data_read @[Sha3.scala 54:28]
    buffer.io_roundReady <= fsm.io_select_for_xor @[Sha3.scala 53:28]
    fsm.clock <= clock
    fsm.reset <= reset
    fsm.io_buffer_ready <= buffer.io_bufferReady @[Sha3.scala 50:28]
    fsm.io_block_length <= bits(block_length_reg, 0, 0) @[Sha3.scala 73:25]
    fsm.io_block_length_valid <= io_block_length_valid @[Sha3.scala 51:30]
    block_length_reg <= mux(reset, UInt<64>("h0"), block_length_reg) @[Sha3.scala 46:34 Sha3.scala 46:34 Sha3.scala 72:25]