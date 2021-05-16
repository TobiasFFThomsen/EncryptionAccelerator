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
    output io_testing_buffer_counter : UInt<64>
    input io_hashReady : UInt<1>
    input io_dataRead : UInt<1>
    input io_roundReady : UInt<1>
    input io_dataValid : UInt<1>

    reg bufferReg_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_1) @[Buffer.scala 52:28]
    reg bufferReg_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_2) @[Buffer.scala 53:28]
    reg bufferReg_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_3) @[Buffer.scala 54:28]
    reg bufferReg_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_4) @[Buffer.scala 55:28]
    reg bufferReg_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_5) @[Buffer.scala 56:28]
    reg bufferReg_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_6) @[Buffer.scala 57:28]
    reg bufferReg_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_7) @[Buffer.scala 58:28]
    reg bufferReg_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_8) @[Buffer.scala 59:28]
    reg bufferReg_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), bufferReg_9) @[Buffer.scala 60:28]
    reg counterReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), counterReg) @[Buffer.scala 61:28]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Buffer.scala 65:32]
    node _T = eq(stateReg, UInt<1>("h0")) @[Buffer.scala 68:20]
    node _T_1 = eq(io_hashReady, UInt<1>("h0")) @[Buffer.scala 71:15]
    node _T_2 = lt(counterReg, UInt<4>("h9")) @[Buffer.scala 72:27]
    node _T_3 = add(counterReg, UInt<1>("h1")) @[Buffer.scala 83:38]
    node _T_4 = tail(_T_3, 1) @[Buffer.scala 83:38]
    node _GEN_0 = mux(io_roundReady, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 96:33 Buffer.scala 97:24 Buffer.scala 100:24]
    node _GEN_1 = mux(io_roundReady, UInt<1>("h0"), counterReg) @[Buffer.scala 96:33 Buffer.scala 98:26 Buffer.scala 101:26]
    node _GEN_2 = mux(_T_2, UInt<1>("h0"), UInt<1>("h1")) @[Buffer.scala 72:34 Buffer.scala 73:28 Buffer.scala 86:28]
    node _GEN_3 = mux(_T_2, io_w_in, bufferReg_1) @[Buffer.scala 72:34 Buffer.scala 74:25 Buffer.scala 87:25]
    node _GEN_4 = mux(_T_2, bufferReg_1, bufferReg_2) @[Buffer.scala 72:34 Buffer.scala 75:25 Buffer.scala 88:25]
    node _GEN_5 = mux(_T_2, bufferReg_2, bufferReg_3) @[Buffer.scala 72:34 Buffer.scala 76:25 Buffer.scala 89:25]
    node _GEN_6 = mux(_T_2, bufferReg_3, bufferReg_4) @[Buffer.scala 72:34 Buffer.scala 77:25 Buffer.scala 90:25]
    node _GEN_7 = mux(_T_2, bufferReg_4, bufferReg_5) @[Buffer.scala 72:34 Buffer.scala 78:25 Buffer.scala 91:25]
    node _GEN_8 = mux(_T_2, bufferReg_5, bufferReg_6) @[Buffer.scala 72:34 Buffer.scala 79:25 Buffer.scala 92:25]
    node _GEN_9 = mux(_T_2, bufferReg_6, bufferReg_7) @[Buffer.scala 72:34 Buffer.scala 80:25 Buffer.scala 93:25]
    node _GEN_10 = mux(_T_2, bufferReg_7, bufferReg_8) @[Buffer.scala 72:34 Buffer.scala 81:25 Buffer.scala 94:25]
    node _GEN_11 = mux(_T_2, bufferReg_8, bufferReg_9) @[Buffer.scala 72:34 Buffer.scala 82:25 Buffer.scala 95:25]
    node _GEN_12 = mux(_T_2, _T_4, _GEN_1) @[Buffer.scala 72:34 Buffer.scala 83:24]
    node _GEN_13 = mux(_T_2, UInt<1>("h0"), _GEN_0) @[Buffer.scala 72:34 Buffer.scala 84:22]
    node _GEN_14 = mux(_T_1, _GEN_2, UInt<1>("h0")) @[Buffer.scala 71:31 Buffer.scala 105:26]
    node _GEN_15 = mux(_T_1, _GEN_3, bufferReg_1) @[Buffer.scala 71:31 Buffer.scala 106:23]
    node _GEN_16 = mux(_T_1, _GEN_4, bufferReg_2) @[Buffer.scala 71:31 Buffer.scala 107:23]
    node _GEN_17 = mux(_T_1, _GEN_5, bufferReg_3) @[Buffer.scala 71:31 Buffer.scala 108:23]
    node _GEN_18 = mux(_T_1, _GEN_6, bufferReg_4) @[Buffer.scala 71:31 Buffer.scala 109:23]
    node _GEN_19 = mux(_T_1, _GEN_7, bufferReg_5) @[Buffer.scala 71:31 Buffer.scala 110:23]
    node _GEN_20 = mux(_T_1, _GEN_8, bufferReg_6) @[Buffer.scala 71:31 Buffer.scala 111:23]
    node _GEN_21 = mux(_T_1, _GEN_9, bufferReg_7) @[Buffer.scala 71:31 Buffer.scala 112:23]
    node _GEN_22 = mux(_T_1, _GEN_10, bufferReg_8) @[Buffer.scala 71:31 Buffer.scala 113:23]
    node _GEN_23 = mux(_T_1, _GEN_11, bufferReg_9) @[Buffer.scala 71:31 Buffer.scala 114:23]
    node _GEN_24 = mux(_T_1, _GEN_12, UInt<1>("h0")) @[Buffer.scala 71:31 Buffer.scala 115:22]
    node _GEN_25 = mux(_T_1, _GEN_13, UInt<1>("h1")) @[Buffer.scala 71:31 Buffer.scala 116:20]
    node _GEN_26 = mux(io_dataValid, _GEN_14, UInt<1>("h0")) @[Buffer.scala 70:26 Buffer.scala 119:24]
    node _GEN_27 = mux(io_dataValid, _GEN_15, bufferReg_1) @[Buffer.scala 70:26 Buffer.scala 120:21]
    node _GEN_28 = mux(io_dataValid, _GEN_16, bufferReg_2) @[Buffer.scala 70:26 Buffer.scala 121:21]
    node _GEN_29 = mux(io_dataValid, _GEN_17, bufferReg_3) @[Buffer.scala 70:26 Buffer.scala 122:21]
    node _GEN_30 = mux(io_dataValid, _GEN_18, bufferReg_4) @[Buffer.scala 70:26 Buffer.scala 123:21]
    node _GEN_31 = mux(io_dataValid, _GEN_19, bufferReg_5) @[Buffer.scala 70:26 Buffer.scala 124:21]
    node _GEN_32 = mux(io_dataValid, _GEN_20, bufferReg_6) @[Buffer.scala 70:26 Buffer.scala 125:21]
    node _GEN_33 = mux(io_dataValid, _GEN_21, bufferReg_7) @[Buffer.scala 70:26 Buffer.scala 126:21]
    node _GEN_34 = mux(io_dataValid, _GEN_22, bufferReg_8) @[Buffer.scala 70:26 Buffer.scala 127:21]
    node _GEN_35 = mux(io_dataValid, _GEN_23, bufferReg_9) @[Buffer.scala 70:26 Buffer.scala 128:21]
    node _GEN_36 = mux(io_dataValid, _GEN_24, counterReg) @[Buffer.scala 70:26 Buffer.scala 129:20]
    node _GEN_37 = mux(io_dataValid, _GEN_25, UInt<1>("h0")) @[Buffer.scala 70:26 Buffer.scala 130:18]
    node _T_5 = eq(stateReg, UInt<1>("h1")) @[Buffer.scala 132:25]
    node _T_6 = and(io_hashReady, io_dataRead) @[Buffer.scala 145:25]
    node _T_7 = eq(io_dataRead, UInt<1>("h0")) @[Buffer.scala 148:34]
    node _T_8 = and(io_hashReady, _T_7) @[Buffer.scala 148:31]
    node _GEN_38 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Buffer.scala 148:47 Buffer.scala 149:24 Buffer.scala 152:24]
    node _GEN_39 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Buffer.scala 148:47 Buffer.scala 150:24 Buffer.scala 153:24]
    node _GEN_40 = mux(_T_6, UInt<1>("h0"), _GEN_38) @[Buffer.scala 145:40 Buffer.scala 146:24]
    node _GEN_41 = mux(_T_6, UInt<1>("h0"), _GEN_39) @[Buffer.scala 145:40 Buffer.scala 147:24]
    node _GEN_42 = mux(_T_5, io_d_0, bufferReg_1) @[Buffer.scala 133:5 Buffer.scala 134:19 Buffer.scala 52:28]
    node _GEN_43 = mux(_T_5, io_d_1, bufferReg_2) @[Buffer.scala 133:5 Buffer.scala 135:19 Buffer.scala 53:28]
    node _GEN_44 = mux(_T_5, io_d_2, bufferReg_3) @[Buffer.scala 133:5 Buffer.scala 136:19 Buffer.scala 54:28]
    node _GEN_45 = mux(_T_5, io_d_3, bufferReg_4) @[Buffer.scala 133:5 Buffer.scala 137:19 Buffer.scala 55:28]
    node _GEN_46 = mux(_T_5, io_d_4, bufferReg_5) @[Buffer.scala 133:5 Buffer.scala 138:19 Buffer.scala 56:28]
    node _GEN_47 = mux(_T_5, io_d_5, bufferReg_6) @[Buffer.scala 133:5 Buffer.scala 139:19 Buffer.scala 57:28]
    node _GEN_48 = mux(_T_5, io_d_6, bufferReg_7) @[Buffer.scala 133:5 Buffer.scala 140:19 Buffer.scala 58:28]
    node _GEN_49 = mux(_T_5, io_d_7, bufferReg_8) @[Buffer.scala 133:5 Buffer.scala 141:19 Buffer.scala 59:28]
    node _GEN_50 = mux(_T_5, io_d_8, bufferReg_9) @[Buffer.scala 133:5 Buffer.scala 142:19 Buffer.scala 60:28]
    node _GEN_51 = mux(_T_5, UInt<1>("h0"), counterReg) @[Buffer.scala 133:5 Buffer.scala 143:18 Buffer.scala 61:28]
    node _GEN_52 = mux(_T_5, _GEN_40, UInt<1>("h0")) @[Buffer.scala 133:5 Buffer.scala 156:22]
    node _GEN_53 = mux(_T_5, _GEN_41, stateReg) @[Buffer.scala 133:5 Buffer.scala 65:32]
    node _GEN_54 = mux(_T, _GEN_26, _GEN_52) @[Buffer.scala 69:5]
    node _GEN_55 = mux(_T, _GEN_27, _GEN_42) @[Buffer.scala 69:5]
    node _GEN_56 = mux(_T, _GEN_28, _GEN_43) @[Buffer.scala 69:5]
    node _GEN_57 = mux(_T, _GEN_29, _GEN_44) @[Buffer.scala 69:5]
    node _GEN_58 = mux(_T, _GEN_30, _GEN_45) @[Buffer.scala 69:5]
    node _GEN_59 = mux(_T, _GEN_31, _GEN_46) @[Buffer.scala 69:5]
    node _GEN_60 = mux(_T, _GEN_32, _GEN_47) @[Buffer.scala 69:5]
    node _GEN_61 = mux(_T, _GEN_33, _GEN_48) @[Buffer.scala 69:5]
    node _GEN_62 = mux(_T, _GEN_34, _GEN_49) @[Buffer.scala 69:5]
    node _GEN_63 = mux(_T, _GEN_35, _GEN_50) @[Buffer.scala 69:5]
    node _GEN_64 = mux(_T, _GEN_36, _GEN_51) @[Buffer.scala 69:5]
    node _GEN_65 = mux(_T, _GEN_37, _GEN_53) @[Buffer.scala 69:5]
    io_bufferTest_0 <= bufferReg_1 @[Buffer.scala 161:19]
    io_bufferTest_1 <= bufferReg_2 @[Buffer.scala 162:19]
    io_bufferTest_2 <= bufferReg_3 @[Buffer.scala 163:19]
    io_bufferTest_3 <= bufferReg_4 @[Buffer.scala 164:19]
    io_bufferTest_4 <= bufferReg_5 @[Buffer.scala 165:19]
    io_bufferTest_5 <= bufferReg_6 @[Buffer.scala 166:19]
    io_bufferTest_6 <= bufferReg_7 @[Buffer.scala 167:19]
    io_bufferTest_7 <= bufferReg_8 @[Buffer.scala 168:19]
    io_bufferTest_8 <= bufferReg_9 @[Buffer.scala 169:19]
    io_w_out <= UInt<1>("h0") @[Buffer.scala 66:12]
    io_bufferReady <= _GEN_54
    io_testing_buffer_counter <= counterReg @[Buffer.scala 67:29]
    bufferReg_1 <= mux(reset, UInt<64>("h0"), _GEN_55) @[Buffer.scala 52:28 Buffer.scala 52:28]
    bufferReg_2 <= mux(reset, UInt<64>("h0"), _GEN_56) @[Buffer.scala 53:28 Buffer.scala 53:28]
    bufferReg_3 <= mux(reset, UInt<64>("h0"), _GEN_57) @[Buffer.scala 54:28 Buffer.scala 54:28]
    bufferReg_4 <= mux(reset, UInt<64>("h0"), _GEN_58) @[Buffer.scala 55:28 Buffer.scala 55:28]
    bufferReg_5 <= mux(reset, UInt<64>("h0"), _GEN_59) @[Buffer.scala 56:28 Buffer.scala 56:28]
    bufferReg_6 <= mux(reset, UInt<64>("h0"), _GEN_60) @[Buffer.scala 57:28 Buffer.scala 57:28]
    bufferReg_7 <= mux(reset, UInt<64>("h0"), _GEN_61) @[Buffer.scala 58:28 Buffer.scala 58:28]
    bufferReg_8 <= mux(reset, UInt<64>("h0"), _GEN_62) @[Buffer.scala 59:28 Buffer.scala 59:28]
    bufferReg_9 <= mux(reset, UInt<64>("h0"), _GEN_63) @[Buffer.scala 60:28 Buffer.scala 60:28]
    counterReg <= mux(reset, UInt<5>("h0"), _GEN_64) @[Buffer.scala 61:28 Buffer.scala 61:28]
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_65) @[Buffer.scala 65:32 Buffer.scala 65:32]

  module FSM :
    input clock : Clock
    input reset : UInt<1>
    output io_hash_ready : UInt<1>
    input io_buffer_ready : UInt<1>
    input io_block_length : UInt<64>
    output io_counter_for_test : UInt<64>
    output io_global_counter_for_test : UInt<64>
    output io_select_for_xor : UInt<1>
    input io_block_length_valid : UInt<1>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 18:37]
    reg localCountReg : UInt<6>, clock with :
      reset => (UInt<1>("h0"), localCountReg) @[FSM.scala 19:37]
    reg globalCountReg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), globalCountReg) @[FSM.scala 20:37]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 23:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 23:27 FSM.scala 24:19 FSM.scala 26:19]
    node _T_1 = eq(stateReg, UInt<2>("h0")) @[FSM.scala 29:17]
    node _GEN_1 = mux(io_buffer_ready, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 30:26 FSM.scala 31:25 FSM.scala 34:25]
    node _GEN_2 = mux(_T_1, _GEN_1, UInt<1>("h0")) @[FSM.scala 29:26 FSM.scala 38:25]
    node _T_2 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _T_3 = lt(globalCountReg, io_block_length) @[FSM.scala 56:31]
    node _T_4 = add(globalCountReg, UInt<1>("h1")) @[FSM.scala 58:45]
    node _T_5 = tail(_T_4, 1) @[FSM.scala 58:45]
    node _GEN_3 = mux(_T_3, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 56:49 FSM.scala 57:22 FSM.scala 60:22]
    node _GEN_4 = mux(_T_3, _T_5, UInt<1>("h0")) @[FSM.scala 56:49 FSM.scala 58:28 FSM.scala 61:28]
    node _GEN_5 = mux(io_buffer_ready, _GEN_3, UInt<2>("h0")) @[FSM.scala 55:30 FSM.scala 65:20]
    node _GEN_6 = mux(io_buffer_ready, _GEN_4, globalCountReg) @[FSM.scala 55:30 FSM.scala 64:26]
    node _GEN_7 = mux(io_block_length_valid, _GEN_5, UInt<2>("h0")) @[FSM.scala 52:34 FSM.scala 68:18]
    node _GEN_8 = mux(io_block_length_valid, UInt<1>("h0"), UInt<1>("h0")) @[FSM.scala 52:34 FSM.scala 54:23 FSM.scala 69:23]
    node _GEN_9 = mux(io_block_length_valid, _GEN_6, UInt<1>("h0")) @[FSM.scala 52:34 FSM.scala 70:24]
    node _T_6 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_7 = lt(localCountReg, UInt<5>("h17")) @[FSM.scala 75:25]
    node _T_8 = add(localCountReg, UInt<1>("h1")) @[FSM.scala 77:40]
    node _T_9 = tail(_T_8, 1) @[FSM.scala 77:40]
    node _GEN_10 = mux(_T_7, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 75:31 FSM.scala 76:18 FSM.scala 80:18]
    node _GEN_11 = mux(_T_7, _T_9, UInt<1>("h0")) @[FSM.scala 75:31 FSM.scala 77:23 FSM.scala 79:23]
    node _T_10 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_12 = mux(_T_10, UInt<1>("h0"), globalCountReg) @[Conditional.scala 39:67 FSM.scala 84:22 FSM.scala 20:37]
    node _GEN_13 = mux(_T_10, UInt<2>("h0"), stateReg) @[Conditional.scala 39:67 FSM.scala 85:16 FSM.scala 18:37]
    node _GEN_14 = mux(_T_10, UInt<1>("h0"), localCountReg) @[Conditional.scala 39:67 FSM.scala 86:21 FSM.scala 19:37]
    node _GEN_15 = mux(_T_6, globalCountReg, _GEN_12) @[Conditional.scala 39:67 FSM.scala 74:22]
    node _GEN_16 = mux(_T_6, _GEN_10, _GEN_13) @[Conditional.scala 39:67]
    node _GEN_17 = mux(_T_6, _GEN_11, _GEN_14) @[Conditional.scala 39:67]
    node _GEN_18 = mux(_T_2, _GEN_7, _GEN_16) @[Conditional.scala 40:58]
    node _GEN_19 = mux(_T_2, _GEN_8, _GEN_17) @[Conditional.scala 40:58]
    node _GEN_20 = mux(_T_2, _GEN_9, _GEN_15) @[Conditional.scala 40:58]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= localCountReg @[FSM.scala 48:23]
    io_global_counter_for_test <= globalCountReg @[FSM.scala 49:30]
    io_select_for_xor <= _GEN_2
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_18) @[FSM.scala 18:37 FSM.scala 18:37]
    localCountReg <= mux(reset, UInt<6>("h0"), _GEN_19) @[FSM.scala 19:37 FSM.scala 19:37]
    globalCountReg <= mux(reset, UInt<64>("h0"), _GEN_20) @[FSM.scala 20:37 FSM.scala 20:37]

  module Sha3 :
    input clock : Clock
    input reset : UInt<1>
    input io_w_in_from_outside : UInt<64>
    input io_data_read : UInt<1>
    output io_w_in_to_buffer : UInt<64>
    output io_testing_round_counter : UInt<64>
    output io_testing_global_round_counter : UInt<64>
    output io_testing_buffer_counter : UInt<64>
    output io_testing_buffer_ready : UInt<1>
    output io_testing_hash_ready : UInt<1>
    input io_block_length_in : UInt<64>
    input io_block_length_valid_from_env : UInt<1>
    output io_block_length_valid_to_fsm : UInt<1>
    output io_block_length_out : UInt<64>
    input io_data_valid_from_env : UInt<1>
    output io_data_valid_to_buffer : UInt<1>

    inst buffer of Buffer @[Sha3.scala 49:31]
    inst fsm of FSM @[Sha3.scala 50:31]
    reg block_length_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), block_length_reg) @[Sha3.scala 59:34]
    node _GEN_0 = mux(io_block_length_valid_from_env, io_block_length_in, block_length_reg) @[Sha3.scala 79:39 Sha3.scala 80:22 Sha3.scala 83:22]
    node _GEN_1 = mux(io_block_length_valid_from_env, UInt<1>("h1"), UInt<1>("h0")) @[Sha3.scala 79:39 Sha3.scala 81:34 Sha3.scala 84:34]
    io_w_in_to_buffer <= io_w_in_from_outside @[Sha3.scala 61:28]
    io_testing_round_counter <= fsm.io_counter_for_test @[Sha3.scala 70:28]
    io_testing_global_round_counter <= fsm.io_global_counter_for_test @[Sha3.scala 71:35]
    io_testing_buffer_counter <= buffer.io_testing_buffer_counter @[Sha3.scala 72:28]
    io_testing_buffer_ready <= buffer.io_bufferReady @[Sha3.scala 73:28]
    io_testing_hash_ready <= fsm.io_hash_ready @[Sha3.scala 74:28]
    io_block_length_valid_to_fsm <= _GEN_1
    io_block_length_out <= block_length_reg @[Sha3.scala 78:23]
    io_data_valid_to_buffer <= io_data_valid_from_env @[Sha3.scala 52:28]
    buffer.clock <= clock
    buffer.reset <= reset
    buffer.io_d_0 <= UInt<1>("h0") @[Sha3.scala 90:17]
    buffer.io_d_1 <= UInt<1>("h0") @[Sha3.scala 91:17]
    buffer.io_d_2 <= UInt<1>("h0") @[Sha3.scala 92:17]
    buffer.io_d_3 <= UInt<1>("h0") @[Sha3.scala 93:17]
    buffer.io_d_4 <= UInt<1>("h0") @[Sha3.scala 94:17]
    buffer.io_d_5 <= UInt<1>("h0") @[Sha3.scala 95:17]
    buffer.io_d_6 <= UInt<1>("h0") @[Sha3.scala 96:17]
    buffer.io_d_7 <= UInt<1>("h0") @[Sha3.scala 97:17]
    buffer.io_d_8 <= UInt<1>("h0") @[Sha3.scala 98:17]
    buffer.io_w_in <= io_w_in_to_buffer @[Sha3.scala 62:28]
    buffer.io_hashReady <= fsm.io_hash_ready @[Sha3.scala 68:28]
    buffer.io_dataRead <= io_data_read @[Sha3.scala 67:28]
    buffer.io_roundReady <= fsm.io_select_for_xor @[Sha3.scala 66:28]
    buffer.io_dataValid <= io_data_valid_to_buffer @[Sha3.scala 69:28]
    fsm.clock <= clock
    fsm.reset <= reset
    fsm.io_buffer_ready <= buffer.io_bufferReady @[Sha3.scala 63:28]
    fsm.io_block_length <= block_length_reg @[Sha3.scala 88:25]
    fsm.io_block_length_valid <= io_block_length_valid_to_fsm @[Sha3.scala 64:30]
    block_length_reg <= mux(reset, UInt<64>("h0"), _GEN_0) @[Sha3.scala 59:34 Sha3.scala 59:34]