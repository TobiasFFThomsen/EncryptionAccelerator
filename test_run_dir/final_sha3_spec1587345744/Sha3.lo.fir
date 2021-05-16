circuit Sha3 :
  module Buffer :
    input clock : Clock
    input reset : UInt<1>
    output io_r_0 : UInt<64>
    output io_r_1 : UInt<64>
    output io_r_2 : UInt<64>
    output io_r_3 : UInt<64>
    output io_r_4 : UInt<64>
    output io_r_5 : UInt<64>
    output io_r_6 : UInt<64>
    output io_r_7 : UInt<64>
    output io_r_8 : UInt<64>
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
    io_r_0 <= bufferReg_1 @[Buffer.scala 159:10]
    io_r_1 <= bufferReg_2 @[Buffer.scala 160:10]
    io_r_2 <= bufferReg_3 @[Buffer.scala 161:10]
    io_r_3 <= bufferReg_4 @[Buffer.scala 162:10]
    io_r_4 <= bufferReg_5 @[Buffer.scala 163:10]
    io_r_5 <= bufferReg_6 @[Buffer.scala 164:10]
    io_r_6 <= bufferReg_7 @[Buffer.scala 165:10]
    io_r_7 <= bufferReg_8 @[Buffer.scala 166:10]
    io_r_8 <= bufferReg_9 @[Buffer.scala 167:10]
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
    reg xor_sel : UInt<1>, clock with :
      reset => (UInt<1>("h0"), xor_sel) @[FSM.scala 21:37]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 23:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 23:27 FSM.scala 24:19 FSM.scala 26:19]
    node _T_1 = eq(stateReg, UInt<2>("h0")) @[FSM.scala 29:17]
    node _GEN_1 = mux(io_buffer_ready, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 30:26 FSM.scala 32:15 FSM.scala 35:15]
    node _GEN_2 = mux(_T_1, _GEN_1, UInt<1>("h0")) @[FSM.scala 29:26 FSM.scala 41:13]
    node _T_2 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _T_3 = lt(globalCountReg, io_block_length) @[FSM.scala 59:31]
    node _T_4 = add(globalCountReg, UInt<1>("h1")) @[FSM.scala 61:45]
    node _T_5 = tail(_T_4, 1) @[FSM.scala 61:45]
    node _GEN_3 = mux(_T_3, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 59:49 FSM.scala 60:22 FSM.scala 63:22]
    node _GEN_4 = mux(_T_3, _T_5, UInt<1>("h0")) @[FSM.scala 59:49 FSM.scala 61:28 FSM.scala 64:28]
    node _GEN_5 = mux(io_buffer_ready, _GEN_3, UInt<2>("h0")) @[FSM.scala 58:30 FSM.scala 68:20]
    node _GEN_6 = mux(io_buffer_ready, _GEN_4, globalCountReg) @[FSM.scala 58:30 FSM.scala 67:26]
    node _GEN_7 = mux(io_block_length_valid, _GEN_5, UInt<2>("h0")) @[FSM.scala 55:34 FSM.scala 71:18]
    node _GEN_8 = mux(io_block_length_valid, UInt<1>("h0"), UInt<1>("h0")) @[FSM.scala 55:34 FSM.scala 57:23 FSM.scala 72:23]
    node _GEN_9 = mux(io_block_length_valid, _GEN_6, UInt<1>("h0")) @[FSM.scala 55:34 FSM.scala 73:24]
    node _T_6 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_7 = lt(localCountReg, UInt<5>("h17")) @[FSM.scala 78:25]
    node _T_8 = add(localCountReg, UInt<1>("h1")) @[FSM.scala 80:40]
    node _T_9 = tail(_T_8, 1) @[FSM.scala 80:40]
    node _GEN_10 = mux(_T_7, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 78:31 FSM.scala 79:18 FSM.scala 83:18]
    node _GEN_11 = mux(_T_7, _T_9, UInt<1>("h0")) @[FSM.scala 78:31 FSM.scala 80:23 FSM.scala 82:23]
    node _T_10 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_12 = mux(_T_10, UInt<1>("h0"), globalCountReg) @[Conditional.scala 39:67 FSM.scala 87:22 FSM.scala 20:37]
    node _GEN_13 = mux(_T_10, UInt<2>("h0"), stateReg) @[Conditional.scala 39:67 FSM.scala 88:16 FSM.scala 18:37]
    node _GEN_14 = mux(_T_10, UInt<1>("h0"), localCountReg) @[Conditional.scala 39:67 FSM.scala 89:21 FSM.scala 19:37]
    node _GEN_15 = mux(_T_6, globalCountReg, _GEN_12) @[Conditional.scala 39:67 FSM.scala 77:22]
    node _GEN_16 = mux(_T_6, _GEN_10, _GEN_13) @[Conditional.scala 39:67]
    node _GEN_17 = mux(_T_6, _GEN_11, _GEN_14) @[Conditional.scala 39:67]
    node _GEN_18 = mux(_T_2, _GEN_7, _GEN_16) @[Conditional.scala 40:58]
    node _GEN_19 = mux(_T_2, _GEN_8, _GEN_17) @[Conditional.scala 40:58]
    node _GEN_20 = mux(_T_2, _GEN_9, _GEN_15) @[Conditional.scala 40:58]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= localCountReg @[FSM.scala 51:23]
    io_global_counter_for_test <= globalCountReg @[FSM.scala 52:30]
    io_select_for_xor <= xor_sel @[FSM.scala 50:21]
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_18) @[FSM.scala 18:37 FSM.scala 18:37]
    localCountReg <= mux(reset, UInt<6>("h0"), _GEN_19) @[FSM.scala 19:37 FSM.scala 19:37]
    globalCountReg <= mux(reset, UInt<64>("h0"), _GEN_20) @[FSM.scala 20:37 FSM.scala 20:37]
    xor_sel <= mux(reset, UInt<1>("h0"), _GEN_2) @[FSM.scala 21:37 FSM.scala 21:37]

  module Theta :
    input clock : Clock
    input reset : UInt<1>
    input io_theta_in_0_0 : UInt<64>
    input io_theta_in_1_0 : UInt<64>
    input io_theta_in_2_0 : UInt<64>
    input io_theta_in_3_0 : UInt<64>
    input io_theta_in_4_0 : UInt<64>
    input io_theta_in_0_1 : UInt<64>
    input io_theta_in_1_1 : UInt<64>
    input io_theta_in_2_1 : UInt<64>
    input io_theta_in_3_1 : UInt<64>
    input io_theta_in_4_1 : UInt<64>
    input io_theta_in_0_2 : UInt<64>
    input io_theta_in_1_2 : UInt<64>
    input io_theta_in_2_2 : UInt<64>
    input io_theta_in_3_2 : UInt<64>
    input io_theta_in_4_2 : UInt<64>
    input io_theta_in_0_3 : UInt<64>
    input io_theta_in_1_3 : UInt<64>
    input io_theta_in_2_3 : UInt<64>
    input io_theta_in_3_3 : UInt<64>
    input io_theta_in_4_3 : UInt<64>
    input io_theta_in_0_4 : UInt<64>
    input io_theta_in_1_4 : UInt<64>
    input io_theta_in_2_4 : UInt<64>
    input io_theta_in_3_4 : UInt<64>
    input io_theta_in_4_4 : UInt<64>
    output io_theta_out_0_0 : UInt<64>
    output io_theta_out_1_0 : UInt<64>
    output io_theta_out_2_0 : UInt<64>
    output io_theta_out_3_0 : UInt<64>
    output io_theta_out_4_0 : UInt<64>
    output io_theta_out_0_1 : UInt<64>
    output io_theta_out_1_1 : UInt<64>
    output io_theta_out_2_1 : UInt<64>
    output io_theta_out_3_1 : UInt<64>
    output io_theta_out_4_1 : UInt<64>
    output io_theta_out_0_2 : UInt<64>
    output io_theta_out_1_2 : UInt<64>
    output io_theta_out_2_2 : UInt<64>
    output io_theta_out_3_2 : UInt<64>
    output io_theta_out_4_2 : UInt<64>
    output io_theta_out_0_3 : UInt<64>
    output io_theta_out_1_3 : UInt<64>
    output io_theta_out_2_3 : UInt<64>
    output io_theta_out_3_3 : UInt<64>
    output io_theta_out_4_3 : UInt<64>
    output io_theta_out_0_4 : UInt<64>
    output io_theta_out_1_4 : UInt<64>
    output io_theta_out_2_4 : UInt<64>
    output io_theta_out_3_4 : UInt<64>
    output io_theta_out_4_4 : UInt<64>

    node _T = xor(io_theta_in_0_0, io_theta_in_0_1) @[Theta.scala 78:25]
    node _T_1 = xor(_T, io_theta_in_0_2) @[Theta.scala 78:41]
    node _T_2 = xor(_T_1, io_theta_in_0_3) @[Theta.scala 78:57]
    node _T_3 = xor(_T_2, io_theta_in_0_4) @[Theta.scala 78:73]
    node _T_4 = xor(io_theta_in_1_0, io_theta_in_1_1) @[Theta.scala 79:25]
    node _T_5 = xor(_T_4, io_theta_in_1_2) @[Theta.scala 79:41]
    node _T_6 = xor(_T_5, io_theta_in_1_3) @[Theta.scala 79:57]
    node _T_7 = xor(_T_6, io_theta_in_1_4) @[Theta.scala 79:73]
    node _T_8 = xor(io_theta_in_2_0, io_theta_in_2_1) @[Theta.scala 80:25]
    node _T_9 = xor(_T_8, io_theta_in_2_2) @[Theta.scala 80:41]
    node _T_10 = xor(_T_9, io_theta_in_2_3) @[Theta.scala 80:57]
    node _T_11 = xor(_T_10, io_theta_in_2_4) @[Theta.scala 80:73]
    node _T_12 = xor(io_theta_in_3_0, io_theta_in_3_1) @[Theta.scala 81:25]
    node _T_13 = xor(_T_12, io_theta_in_3_2) @[Theta.scala 81:41]
    node _T_14 = xor(_T_13, io_theta_in_3_3) @[Theta.scala 81:57]
    node _T_15 = xor(_T_14, io_theta_in_3_4) @[Theta.scala 81:73]
    node _T_16 = xor(io_theta_in_4_0, io_theta_in_4_1) @[Theta.scala 82:25]
    node _T_17 = xor(_T_16, io_theta_in_4_2) @[Theta.scala 82:41]
    node _T_18 = xor(_T_17, io_theta_in_4_3) @[Theta.scala 82:57]
    node _T_19 = xor(_T_18, io_theta_in_4_4) @[Theta.scala 82:73]
    node c_1 = _T_7 @[Theta.scala 67:17 Theta.scala 79:7]
    node _T_20 = shl(c_1, 1) @[Theta.scala 101:25]
    node _T_21 = shr(c_1, 63) @[Theta.scala 102:25]
    node c_2 = _T_11 @[Theta.scala 68:17 Theta.scala 80:7]
    node _T_22 = shl(c_2, 1) @[Theta.scala 104:25]
    node _T_23 = shr(c_2, 63) @[Theta.scala 105:25]
    node c_3 = _T_15 @[Theta.scala 69:17 Theta.scala 81:7]
    node _T_24 = shl(c_3, 1) @[Theta.scala 107:25]
    node _T_25 = shr(c_3, 63) @[Theta.scala 108:25]
    node c_4 = _T_19 @[Theta.scala 70:17 Theta.scala 82:7]
    node _T_26 = shl(c_4, 1) @[Theta.scala 110:25]
    node _T_27 = shr(c_4, 63) @[Theta.scala 111:25]
    node c_0 = _T_3 @[Theta.scala 66:17 Theta.scala 78:7]
    node _T_28 = shl(c_0, 1) @[Theta.scala 113:25]
    node _T_29 = shr(c_0, 63) @[Theta.scala 114:25]
    node rotation_0_lhs = bits(_T_20, 63, 0) @[Theta.scala 84:28 Theta.scala 101:18]
    node rotation_0_rhs = pad(_T_21, 64) @[Theta.scala 85:28 Theta.scala 102:18]
    node _T_30 = or(rotation_0_lhs, rotation_0_rhs) @[Theta.scala 116:39]
    node rotation_1_lhs = bits(_T_22, 63, 0) @[Theta.scala 86:28 Theta.scala 104:18]
    node rotation_1_rhs = pad(_T_23, 64) @[Theta.scala 87:28 Theta.scala 105:18]
    node _T_31 = or(rotation_1_lhs, rotation_1_rhs) @[Theta.scala 117:39]
    node rotation_2_lhs = bits(_T_24, 63, 0) @[Theta.scala 88:28 Theta.scala 107:18]
    node rotation_2_rhs = pad(_T_25, 64) @[Theta.scala 89:28 Theta.scala 108:18]
    node _T_32 = or(rotation_2_lhs, rotation_2_rhs) @[Theta.scala 118:39]
    node rotation_3_lhs = bits(_T_26, 63, 0) @[Theta.scala 90:28 Theta.scala 110:18]
    node rotation_3_rhs = pad(_T_27, 64) @[Theta.scala 91:28 Theta.scala 111:18]
    node _T_33 = or(rotation_3_lhs, rotation_3_rhs) @[Theta.scala 119:39]
    node rotation_4_lhs = bits(_T_28, 63, 0) @[Theta.scala 92:28 Theta.scala 113:18]
    node rotation_4_rhs = pad(_T_29, 64) @[Theta.scala 93:28 Theta.scala 114:18]
    node _T_34 = or(rotation_4_lhs, rotation_4_rhs) @[Theta.scala 120:39]
    node rotation_result_0 = _T_30 @[Theta.scala 98:31 Theta.scala 116:21]
    node _T_35 = xor(c_4, rotation_result_0) @[Theta.scala 122:14]
    node rotation_result_1 = _T_31 @[Theta.scala 94:31 Theta.scala 117:21]
    node _T_36 = xor(c_0, rotation_result_1) @[Theta.scala 123:14]
    node rotation_result_2 = _T_32 @[Theta.scala 95:31 Theta.scala 118:21]
    node _T_37 = xor(c_1, rotation_result_2) @[Theta.scala 124:14]
    node rotation_result_3 = _T_33 @[Theta.scala 96:31 Theta.scala 119:21]
    node _T_38 = xor(c_2, rotation_result_3) @[Theta.scala 125:14]
    node rotation_result_4 = _T_34 @[Theta.scala 97:31 Theta.scala 120:21]
    node _T_39 = xor(c_3, rotation_result_4) @[Theta.scala 126:14]
    node d_0 = _T_35 @[Theta.scala 72:17 Theta.scala 122:7]
    node _T_40 = xor(io_theta_in_0_0, d_0) @[Theta.scala 129:38]
    node _T_41 = xor(io_theta_in_0_1, d_0) @[Theta.scala 130:38]
    node _T_42 = xor(io_theta_in_0_2, d_0) @[Theta.scala 131:38]
    node _T_43 = xor(io_theta_in_0_3, d_0) @[Theta.scala 132:38]
    node _T_44 = xor(io_theta_in_0_4, d_0) @[Theta.scala 133:38]
    node d_1 = _T_36 @[Theta.scala 73:17 Theta.scala 123:7]
    node _T_45 = xor(io_theta_in_1_0, d_1) @[Theta.scala 135:38]
    node _T_46 = xor(io_theta_in_1_1, d_1) @[Theta.scala 136:38]
    node _T_47 = xor(io_theta_in_1_2, d_1) @[Theta.scala 137:38]
    node _T_48 = xor(io_theta_in_1_3, d_1) @[Theta.scala 138:38]
    node _T_49 = xor(io_theta_in_1_4, d_1) @[Theta.scala 139:38]
    node d_2 = _T_37 @[Theta.scala 74:17 Theta.scala 124:7]
    node _T_50 = xor(io_theta_in_2_0, d_2) @[Theta.scala 141:38]
    node _T_51 = xor(io_theta_in_2_1, d_2) @[Theta.scala 142:38]
    node _T_52 = xor(io_theta_in_2_2, d_2) @[Theta.scala 143:38]
    node _T_53 = xor(io_theta_in_2_3, d_2) @[Theta.scala 144:38]
    node _T_54 = xor(io_theta_in_2_4, d_2) @[Theta.scala 145:38]
    node d_3 = _T_38 @[Theta.scala 75:17 Theta.scala 125:7]
    node _T_55 = xor(io_theta_in_3_0, d_3) @[Theta.scala 147:38]
    node _T_56 = xor(io_theta_in_3_1, d_3) @[Theta.scala 148:38]
    node _T_57 = xor(io_theta_in_3_2, d_3) @[Theta.scala 149:38]
    node _T_58 = xor(io_theta_in_3_3, d_3) @[Theta.scala 150:38]
    node _T_59 = xor(io_theta_in_3_4, d_3) @[Theta.scala 151:38]
    node d_4 = _T_39 @[Theta.scala 76:17 Theta.scala 126:7]
    node _T_60 = xor(io_theta_in_4_0, d_4) @[Theta.scala 153:38]
    node _T_61 = xor(io_theta_in_4_1, d_4) @[Theta.scala 154:38]
    node _T_62 = xor(io_theta_in_4_2, d_4) @[Theta.scala 155:38]
    node _T_63 = xor(io_theta_in_4_3, d_4) @[Theta.scala 156:38]
    node _T_64 = xor(io_theta_in_4_4, d_4) @[Theta.scala 157:38]
    io_theta_out_0_0 <= _T_40 @[Theta.scala 129:20]
    io_theta_out_1_0 <= _T_45 @[Theta.scala 135:20]
    io_theta_out_2_0 <= _T_50 @[Theta.scala 141:20]
    io_theta_out_3_0 <= _T_55 @[Theta.scala 147:20]
    io_theta_out_4_0 <= _T_60 @[Theta.scala 153:20]
    io_theta_out_0_1 <= _T_41 @[Theta.scala 130:20]
    io_theta_out_1_1 <= _T_46 @[Theta.scala 136:20]
    io_theta_out_2_1 <= _T_51 @[Theta.scala 142:20]
    io_theta_out_3_1 <= _T_56 @[Theta.scala 148:20]
    io_theta_out_4_1 <= _T_61 @[Theta.scala 154:20]
    io_theta_out_0_2 <= _T_42 @[Theta.scala 131:20]
    io_theta_out_1_2 <= _T_47 @[Theta.scala 137:20]
    io_theta_out_2_2 <= _T_52 @[Theta.scala 143:20]
    io_theta_out_3_2 <= _T_57 @[Theta.scala 149:20]
    io_theta_out_4_2 <= _T_62 @[Theta.scala 155:20]
    io_theta_out_0_3 <= _T_43 @[Theta.scala 132:20]
    io_theta_out_1_3 <= _T_48 @[Theta.scala 138:20]
    io_theta_out_2_3 <= _T_53 @[Theta.scala 144:20]
    io_theta_out_3_3 <= _T_58 @[Theta.scala 150:20]
    io_theta_out_4_3 <= _T_63 @[Theta.scala 156:20]
    io_theta_out_0_4 <= _T_44 @[Theta.scala 133:20]
    io_theta_out_1_4 <= _T_49 @[Theta.scala 139:20]
    io_theta_out_2_4 <= _T_54 @[Theta.scala 145:20]
    io_theta_out_3_4 <= _T_59 @[Theta.scala 151:20]
    io_theta_out_4_4 <= _T_64 @[Theta.scala 157:20]

  module RhoPi :
    input clock : Clock
    input reset : UInt<1>
    input io_rhoPi_in_0_0 : UInt<64>
    input io_rhoPi_in_1_0 : UInt<64>
    input io_rhoPi_in_2_0 : UInt<64>
    input io_rhoPi_in_3_0 : UInt<64>
    input io_rhoPi_in_4_0 : UInt<64>
    input io_rhoPi_in_0_1 : UInt<64>
    input io_rhoPi_in_1_1 : UInt<64>
    input io_rhoPi_in_2_1 : UInt<64>
    input io_rhoPi_in_3_1 : UInt<64>
    input io_rhoPi_in_4_1 : UInt<64>
    input io_rhoPi_in_0_2 : UInt<64>
    input io_rhoPi_in_1_2 : UInt<64>
    input io_rhoPi_in_2_2 : UInt<64>
    input io_rhoPi_in_3_2 : UInt<64>
    input io_rhoPi_in_4_2 : UInt<64>
    input io_rhoPi_in_0_3 : UInt<64>
    input io_rhoPi_in_1_3 : UInt<64>
    input io_rhoPi_in_2_3 : UInt<64>
    input io_rhoPi_in_3_3 : UInt<64>
    input io_rhoPi_in_4_3 : UInt<64>
    input io_rhoPi_in_0_4 : UInt<64>
    input io_rhoPi_in_1_4 : UInt<64>
    input io_rhoPi_in_2_4 : UInt<64>
    input io_rhoPi_in_3_4 : UInt<64>
    input io_rhoPi_in_4_4 : UInt<64>
    output io_rhoPi_out_0_0 : UInt<64>
    output io_rhoPi_out_1_0 : UInt<64>
    output io_rhoPi_out_2_0 : UInt<64>
    output io_rhoPi_out_3_0 : UInt<64>
    output io_rhoPi_out_4_0 : UInt<64>
    output io_rhoPi_out_0_1 : UInt<64>
    output io_rhoPi_out_1_1 : UInt<64>
    output io_rhoPi_out_2_1 : UInt<64>
    output io_rhoPi_out_3_1 : UInt<64>
    output io_rhoPi_out_4_1 : UInt<64>
    output io_rhoPi_out_0_2 : UInt<64>
    output io_rhoPi_out_1_2 : UInt<64>
    output io_rhoPi_out_2_2 : UInt<64>
    output io_rhoPi_out_3_2 : UInt<64>
    output io_rhoPi_out_4_2 : UInt<64>
    output io_rhoPi_out_0_3 : UInt<64>
    output io_rhoPi_out_1_3 : UInt<64>
    output io_rhoPi_out_2_3 : UInt<64>
    output io_rhoPi_out_3_3 : UInt<64>
    output io_rhoPi_out_4_3 : UInt<64>
    output io_rhoPi_out_0_4 : UInt<64>
    output io_rhoPi_out_1_4 : UInt<64>
    output io_rhoPi_out_2_4 : UInt<64>
    output io_rhoPi_out_3_4 : UInt<64>
    output io_rhoPi_out_4_4 : UInt<64>

    node r_0_0 = pad(UInt<1>("h0"), 19) @[RhoPi.scala 62:17 RhoPi.scala 63:11]
    node _T = dshl(io_rhoPi_in_0_0, r_0_0) @[RhoPi.scala 147:32]
    node r_0_1 = pad(UInt<6>("h24"), 19) @[RhoPi.scala 62:17 RhoPi.scala 64:11]
    node _T_1 = dshl(io_rhoPi_in_0_1, r_0_1) @[RhoPi.scala 148:32]
    node r_0_2 = pad(UInt<2>("h3"), 19) @[RhoPi.scala 62:17 RhoPi.scala 65:11]
    node _T_2 = dshl(io_rhoPi_in_0_2, r_0_2) @[RhoPi.scala 149:32]
    node r_0_3 = pad(UInt<6>("h29"), 19) @[RhoPi.scala 62:17 RhoPi.scala 66:11]
    node _T_3 = dshl(io_rhoPi_in_0_3, r_0_3) @[RhoPi.scala 150:32]
    node r_0_4 = pad(UInt<5>("h12"), 19) @[RhoPi.scala 62:17 RhoPi.scala 67:11]
    node _T_4 = dshl(io_rhoPi_in_0_4, r_0_4) @[RhoPi.scala 151:32]
    node r_1_0 = pad(UInt<1>("h1"), 19) @[RhoPi.scala 62:17 RhoPi.scala 69:11]
    node _T_5 = dshl(io_rhoPi_in_1_0, r_1_0) @[RhoPi.scala 152:32]
    node r_1_1 = pad(UInt<6>("h2c"), 19) @[RhoPi.scala 62:17 RhoPi.scala 70:11]
    node _T_6 = dshl(io_rhoPi_in_1_1, r_1_1) @[RhoPi.scala 153:32]
    node r_1_2 = pad(UInt<4>("ha"), 19) @[RhoPi.scala 62:17 RhoPi.scala 71:11]
    node _T_7 = dshl(io_rhoPi_in_1_2, r_1_2) @[RhoPi.scala 154:32]
    node r_1_3 = pad(UInt<6>("h2d"), 19) @[RhoPi.scala 62:17 RhoPi.scala 72:11]
    node _T_8 = dshl(io_rhoPi_in_1_3, r_1_3) @[RhoPi.scala 155:32]
    node r_1_4 = pad(UInt<2>("h2"), 19) @[RhoPi.scala 62:17 RhoPi.scala 73:11]
    node _T_9 = dshl(io_rhoPi_in_1_4, r_1_4) @[RhoPi.scala 156:32]
    node r_2_0 = pad(UInt<6>("h3e"), 19) @[RhoPi.scala 62:17 RhoPi.scala 75:11]
    node _T_10 = dshl(io_rhoPi_in_2_0, r_2_0) @[RhoPi.scala 157:32]
    node r_2_1 = pad(UInt<3>("h6"), 19) @[RhoPi.scala 62:17 RhoPi.scala 76:11]
    node _T_11 = dshl(io_rhoPi_in_2_1, r_2_1) @[RhoPi.scala 158:32]
    node r_2_2 = pad(UInt<6>("h2b"), 19) @[RhoPi.scala 62:17 RhoPi.scala 77:11]
    node _T_12 = dshl(io_rhoPi_in_2_2, r_2_2) @[RhoPi.scala 159:32]
    node r_2_3 = pad(UInt<4>("hf"), 19) @[RhoPi.scala 62:17 RhoPi.scala 78:11]
    node _T_13 = dshl(io_rhoPi_in_2_3, r_2_3) @[RhoPi.scala 160:32]
    node r_2_4 = pad(UInt<6>("h3d"), 19) @[RhoPi.scala 62:17 RhoPi.scala 79:11]
    node _T_14 = dshl(io_rhoPi_in_2_4, r_2_4) @[RhoPi.scala 161:32]
    node r_3_0 = pad(UInt<5>("h1c"), 19) @[RhoPi.scala 62:17 RhoPi.scala 81:11]
    node _T_15 = dshl(io_rhoPi_in_3_0, r_3_0) @[RhoPi.scala 162:32]
    node r_3_1 = pad(UInt<6>("h37"), 19) @[RhoPi.scala 62:17 RhoPi.scala 82:11]
    node _T_16 = dshl(io_rhoPi_in_3_1, r_3_1) @[RhoPi.scala 163:32]
    node r_3_2 = pad(UInt<5>("h19"), 19) @[RhoPi.scala 62:17 RhoPi.scala 83:11]
    node _T_17 = dshl(io_rhoPi_in_3_2, r_3_2) @[RhoPi.scala 164:32]
    node r_3_3 = pad(UInt<5>("h15"), 19) @[RhoPi.scala 62:17 RhoPi.scala 84:11]
    node _T_18 = dshl(io_rhoPi_in_3_3, r_3_3) @[RhoPi.scala 165:32]
    node r_3_4 = pad(UInt<6>("h38"), 19) @[RhoPi.scala 62:17 RhoPi.scala 85:11]
    node _T_19 = dshl(io_rhoPi_in_3_4, r_3_4) @[RhoPi.scala 166:32]
    node r_4_0 = pad(UInt<5>("h1b"), 19) @[RhoPi.scala 62:17 RhoPi.scala 87:11]
    node _T_20 = dshl(io_rhoPi_in_4_0, r_4_0) @[RhoPi.scala 167:32]
    node r_4_1 = pad(UInt<5>("h14"), 19) @[RhoPi.scala 62:17 RhoPi.scala 88:11]
    node _T_21 = dshl(io_rhoPi_in_4_1, r_4_1) @[RhoPi.scala 168:32]
    node r_4_2 = pad(UInt<6>("h27"), 19) @[RhoPi.scala 62:17 RhoPi.scala 89:11]
    node _T_22 = dshl(io_rhoPi_in_4_2, r_4_2) @[RhoPi.scala 169:32]
    node r_4_3 = pad(UInt<4>("h8"), 19) @[RhoPi.scala 62:17 RhoPi.scala 90:11]
    node _T_23 = dshl(io_rhoPi_in_4_3, r_4_3) @[RhoPi.scala 170:32]
    node r_4_4 = pad(UInt<4>("he"), 19) @[RhoPi.scala 62:17 RhoPi.scala 91:11]
    node _T_24 = dshl(io_rhoPi_in_4_4, r_4_4) @[RhoPi.scala 171:32]
    node _T_25 = sub(UInt<7>("h40"), r_0_0) @[RhoPi.scala 173:39]
    node _T_26 = tail(_T_25, 1) @[RhoPi.scala 173:39]
    node _T_27 = dshr(io_rhoPi_in_0_0, _T_26) @[RhoPi.scala 173:32]
    node _T_28 = sub(UInt<7>("h40"), r_0_1) @[RhoPi.scala 174:39]
    node _T_29 = tail(_T_28, 1) @[RhoPi.scala 174:39]
    node _T_30 = dshr(io_rhoPi_in_0_1, _T_29) @[RhoPi.scala 174:32]
    node _T_31 = sub(UInt<7>("h40"), r_0_2) @[RhoPi.scala 175:39]
    node _T_32 = tail(_T_31, 1) @[RhoPi.scala 175:39]
    node _T_33 = dshr(io_rhoPi_in_0_2, _T_32) @[RhoPi.scala 175:32]
    node _T_34 = sub(UInt<7>("h40"), r_0_3) @[RhoPi.scala 176:39]
    node _T_35 = tail(_T_34, 1) @[RhoPi.scala 176:39]
    node _T_36 = dshr(io_rhoPi_in_0_3, _T_35) @[RhoPi.scala 176:32]
    node _T_37 = sub(UInt<7>("h40"), r_0_4) @[RhoPi.scala 177:39]
    node _T_38 = tail(_T_37, 1) @[RhoPi.scala 177:39]
    node _T_39 = dshr(io_rhoPi_in_0_4, _T_38) @[RhoPi.scala 177:32]
    node _T_40 = sub(UInt<7>("h40"), r_1_0) @[RhoPi.scala 178:39]
    node _T_41 = tail(_T_40, 1) @[RhoPi.scala 178:39]
    node _T_42 = dshr(io_rhoPi_in_1_0, _T_41) @[RhoPi.scala 178:32]
    node _T_43 = sub(UInt<7>("h40"), r_1_1) @[RhoPi.scala 179:39]
    node _T_44 = tail(_T_43, 1) @[RhoPi.scala 179:39]
    node _T_45 = dshr(io_rhoPi_in_1_1, _T_44) @[RhoPi.scala 179:32]
    node _T_46 = sub(UInt<7>("h40"), r_1_2) @[RhoPi.scala 180:39]
    node _T_47 = tail(_T_46, 1) @[RhoPi.scala 180:39]
    node _T_48 = dshr(io_rhoPi_in_1_2, _T_47) @[RhoPi.scala 180:32]
    node _T_49 = sub(UInt<7>("h40"), r_1_3) @[RhoPi.scala 181:39]
    node _T_50 = tail(_T_49, 1) @[RhoPi.scala 181:39]
    node _T_51 = dshr(io_rhoPi_in_1_3, _T_50) @[RhoPi.scala 181:32]
    node _T_52 = sub(UInt<7>("h40"), r_1_4) @[RhoPi.scala 182:39]
    node _T_53 = tail(_T_52, 1) @[RhoPi.scala 182:39]
    node _T_54 = dshr(io_rhoPi_in_1_4, _T_53) @[RhoPi.scala 182:32]
    node _T_55 = sub(UInt<7>("h40"), r_2_0) @[RhoPi.scala 183:39]
    node _T_56 = tail(_T_55, 1) @[RhoPi.scala 183:39]
    node _T_57 = dshr(io_rhoPi_in_2_0, _T_56) @[RhoPi.scala 183:32]
    node _T_58 = sub(UInt<7>("h40"), r_2_1) @[RhoPi.scala 184:39]
    node _T_59 = tail(_T_58, 1) @[RhoPi.scala 184:39]
    node _T_60 = dshr(io_rhoPi_in_2_1, _T_59) @[RhoPi.scala 184:32]
    node _T_61 = sub(UInt<7>("h40"), r_2_2) @[RhoPi.scala 185:39]
    node _T_62 = tail(_T_61, 1) @[RhoPi.scala 185:39]
    node _T_63 = dshr(io_rhoPi_in_2_2, _T_62) @[RhoPi.scala 185:32]
    node _T_64 = sub(UInt<7>("h40"), r_2_3) @[RhoPi.scala 186:39]
    node _T_65 = tail(_T_64, 1) @[RhoPi.scala 186:39]
    node _T_66 = dshr(io_rhoPi_in_2_3, _T_65) @[RhoPi.scala 186:32]
    node _T_67 = sub(UInt<7>("h40"), r_2_4) @[RhoPi.scala 187:39]
    node _T_68 = tail(_T_67, 1) @[RhoPi.scala 187:39]
    node _T_69 = dshr(io_rhoPi_in_2_4, _T_68) @[RhoPi.scala 187:32]
    node _T_70 = sub(UInt<7>("h40"), r_3_0) @[RhoPi.scala 188:39]
    node _T_71 = tail(_T_70, 1) @[RhoPi.scala 188:39]
    node _T_72 = dshr(io_rhoPi_in_3_0, _T_71) @[RhoPi.scala 188:32]
    node _T_73 = sub(UInt<7>("h40"), r_3_1) @[RhoPi.scala 189:39]
    node _T_74 = tail(_T_73, 1) @[RhoPi.scala 189:39]
    node _T_75 = dshr(io_rhoPi_in_3_1, _T_74) @[RhoPi.scala 189:32]
    node _T_76 = sub(UInt<7>("h40"), r_3_2) @[RhoPi.scala 190:39]
    node _T_77 = tail(_T_76, 1) @[RhoPi.scala 190:39]
    node _T_78 = dshr(io_rhoPi_in_3_2, _T_77) @[RhoPi.scala 190:32]
    node _T_79 = sub(UInt<7>("h40"), r_3_3) @[RhoPi.scala 191:39]
    node _T_80 = tail(_T_79, 1) @[RhoPi.scala 191:39]
    node _T_81 = dshr(io_rhoPi_in_3_3, _T_80) @[RhoPi.scala 191:32]
    node _T_82 = sub(UInt<7>("h40"), r_3_4) @[RhoPi.scala 192:39]
    node _T_83 = tail(_T_82, 1) @[RhoPi.scala 192:39]
    node _T_84 = dshr(io_rhoPi_in_3_4, _T_83) @[RhoPi.scala 192:32]
    node _T_85 = sub(UInt<7>("h40"), r_4_0) @[RhoPi.scala 193:39]
    node _T_86 = tail(_T_85, 1) @[RhoPi.scala 193:39]
    node _T_87 = dshr(io_rhoPi_in_4_0, _T_86) @[RhoPi.scala 193:32]
    node _T_88 = sub(UInt<7>("h40"), r_4_1) @[RhoPi.scala 194:39]
    node _T_89 = tail(_T_88, 1) @[RhoPi.scala 194:39]
    node _T_90 = dshr(io_rhoPi_in_4_1, _T_89) @[RhoPi.scala 194:32]
    node _T_91 = sub(UInt<7>("h40"), r_4_2) @[RhoPi.scala 195:39]
    node _T_92 = tail(_T_91, 1) @[RhoPi.scala 195:39]
    node _T_93 = dshr(io_rhoPi_in_4_2, _T_92) @[RhoPi.scala 195:32]
    node _T_94 = sub(UInt<7>("h40"), r_4_3) @[RhoPi.scala 196:39]
    node _T_95 = tail(_T_94, 1) @[RhoPi.scala 196:39]
    node _T_96 = dshr(io_rhoPi_in_4_3, _T_95) @[RhoPi.scala 196:32]
    node _T_97 = sub(UInt<7>("h40"), r_4_4) @[RhoPi.scala 197:39]
    node _T_98 = tail(_T_97, 1) @[RhoPi.scala 197:39]
    node _T_99 = dshr(io_rhoPi_in_4_4, _T_98) @[RhoPi.scala 197:32]
    node or_lfh_0_0 = bits(_T, 63, 0) @[RhoPi.scala 95:24 RhoPi.scala 147:14]
    node or_rfh_0_0 = _T_27 @[RhoPi.scala 121:24 RhoPi.scala 173:14]
    node _T_100 = or(or_lfh_0_0, or_rfh_0_0) @[RhoPi.scala 199:34]
    node or_lfh_0_1 = bits(_T_1, 63, 0) @[RhoPi.scala 96:24 RhoPi.scala 148:14]
    node or_rfh_0_1 = _T_30 @[RhoPi.scala 122:24 RhoPi.scala 174:14]
    node _T_101 = or(or_lfh_0_1, or_rfh_0_1) @[RhoPi.scala 200:34]
    node or_lfh_0_2 = bits(_T_2, 63, 0) @[RhoPi.scala 97:24 RhoPi.scala 149:14]
    node or_rfh_0_2 = _T_33 @[RhoPi.scala 123:24 RhoPi.scala 175:14]
    node _T_102 = or(or_lfh_0_2, or_rfh_0_2) @[RhoPi.scala 201:34]
    node or_lfh_0_3 = bits(_T_3, 63, 0) @[RhoPi.scala 98:24 RhoPi.scala 150:14]
    node or_rfh_0_3 = _T_36 @[RhoPi.scala 124:24 RhoPi.scala 176:14]
    node _T_103 = or(or_lfh_0_3, or_rfh_0_3) @[RhoPi.scala 202:34]
    node or_lfh_0_4 = bits(_T_4, 63, 0) @[RhoPi.scala 99:24 RhoPi.scala 151:14]
    node or_rfh_0_4 = _T_39 @[RhoPi.scala 125:24 RhoPi.scala 177:14]
    node _T_104 = or(or_lfh_0_4, or_rfh_0_4) @[RhoPi.scala 203:34]
    node or_lfh_1_0 = bits(_T_5, 63, 0) @[RhoPi.scala 100:24 RhoPi.scala 152:14]
    node or_rfh_1_0 = _T_42 @[RhoPi.scala 126:24 RhoPi.scala 178:14]
    node _T_105 = or(or_lfh_1_0, or_rfh_1_0) @[RhoPi.scala 205:34]
    node or_lfh_1_1 = bits(_T_6, 63, 0) @[RhoPi.scala 101:24 RhoPi.scala 153:14]
    node or_rfh_1_1 = _T_45 @[RhoPi.scala 127:24 RhoPi.scala 179:14]
    node _T_106 = or(or_lfh_1_1, or_rfh_1_1) @[RhoPi.scala 206:34]
    node or_lfh_1_2 = bits(_T_7, 63, 0) @[RhoPi.scala 102:24 RhoPi.scala 154:14]
    node or_rfh_1_2 = _T_48 @[RhoPi.scala 128:24 RhoPi.scala 180:14]
    node _T_107 = or(or_lfh_1_2, or_rfh_1_2) @[RhoPi.scala 207:34]
    node or_lfh_1_3 = bits(_T_8, 63, 0) @[RhoPi.scala 103:24 RhoPi.scala 155:14]
    node or_rfh_1_3 = _T_51 @[RhoPi.scala 129:24 RhoPi.scala 181:14]
    node _T_108 = or(or_lfh_1_3, or_rfh_1_3) @[RhoPi.scala 208:34]
    node or_lfh_1_4 = bits(_T_9, 63, 0) @[RhoPi.scala 104:24 RhoPi.scala 156:14]
    node or_rfh_1_4 = _T_54 @[RhoPi.scala 130:24 RhoPi.scala 182:14]
    node _T_109 = or(or_lfh_1_4, or_rfh_1_4) @[RhoPi.scala 209:34]
    node or_lfh_2_0 = bits(_T_10, 63, 0) @[RhoPi.scala 105:24 RhoPi.scala 157:14]
    node or_rfh_2_0 = _T_57 @[RhoPi.scala 131:24 RhoPi.scala 183:14]
    node _T_110 = or(or_lfh_2_0, or_rfh_2_0) @[RhoPi.scala 211:34]
    node or_lfh_2_1 = bits(_T_11, 63, 0) @[RhoPi.scala 106:24 RhoPi.scala 158:14]
    node or_rfh_2_1 = _T_60 @[RhoPi.scala 132:24 RhoPi.scala 184:14]
    node _T_111 = or(or_lfh_2_1, or_rfh_2_1) @[RhoPi.scala 212:34]
    node or_lfh_2_2 = bits(_T_12, 63, 0) @[RhoPi.scala 107:24 RhoPi.scala 159:14]
    node or_rfh_2_2 = _T_63 @[RhoPi.scala 133:24 RhoPi.scala 185:14]
    node _T_112 = or(or_lfh_2_2, or_rfh_2_2) @[RhoPi.scala 213:34]
    node or_lfh_2_3 = bits(_T_13, 63, 0) @[RhoPi.scala 108:24 RhoPi.scala 160:14]
    node or_rfh_2_3 = _T_66 @[RhoPi.scala 134:24 RhoPi.scala 186:14]
    node _T_113 = or(or_lfh_2_3, or_rfh_2_3) @[RhoPi.scala 214:34]
    node or_lfh_2_4 = bits(_T_14, 63, 0) @[RhoPi.scala 109:24 RhoPi.scala 161:14]
    node or_rfh_2_4 = _T_69 @[RhoPi.scala 135:24 RhoPi.scala 187:14]
    node _T_114 = or(or_lfh_2_4, or_rfh_2_4) @[RhoPi.scala 215:34]
    node or_lfh_3_0 = bits(_T_15, 63, 0) @[RhoPi.scala 110:24 RhoPi.scala 162:14]
    node or_rfh_3_0 = _T_72 @[RhoPi.scala 136:24 RhoPi.scala 188:14]
    node _T_115 = or(or_lfh_3_0, or_rfh_3_0) @[RhoPi.scala 217:34]
    node or_lfh_3_1 = bits(_T_16, 63, 0) @[RhoPi.scala 111:24 RhoPi.scala 163:14]
    node or_rfh_3_1 = _T_75 @[RhoPi.scala 137:24 RhoPi.scala 189:14]
    node _T_116 = or(or_lfh_3_1, or_rfh_3_1) @[RhoPi.scala 218:34]
    node or_lfh_3_2 = bits(_T_17, 63, 0) @[RhoPi.scala 112:24 RhoPi.scala 164:14]
    node or_rfh_3_2 = _T_78 @[RhoPi.scala 138:24 RhoPi.scala 190:14]
    node _T_117 = or(or_lfh_3_2, or_rfh_3_2) @[RhoPi.scala 219:34]
    node or_lfh_3_3 = bits(_T_18, 63, 0) @[RhoPi.scala 113:24 RhoPi.scala 165:14]
    node or_rfh_3_3 = _T_81 @[RhoPi.scala 139:24 RhoPi.scala 191:14]
    node _T_118 = or(or_lfh_3_3, or_rfh_3_3) @[RhoPi.scala 220:34]
    node or_lfh_3_4 = bits(_T_19, 63, 0) @[RhoPi.scala 114:24 RhoPi.scala 166:14]
    node or_rfh_3_4 = _T_84 @[RhoPi.scala 140:24 RhoPi.scala 192:14]
    node _T_119 = or(or_lfh_3_4, or_rfh_3_4) @[RhoPi.scala 221:34]
    node or_lfh_4_0 = bits(_T_20, 63, 0) @[RhoPi.scala 115:24 RhoPi.scala 167:14]
    node or_rfh_4_0 = _T_87 @[RhoPi.scala 141:24 RhoPi.scala 193:14]
    node _T_120 = or(or_lfh_4_0, or_rfh_4_0) @[RhoPi.scala 223:34]
    node or_lfh_4_1 = bits(_T_21, 63, 0) @[RhoPi.scala 116:24 RhoPi.scala 168:14]
    node or_rfh_4_1 = _T_90 @[RhoPi.scala 142:24 RhoPi.scala 194:14]
    node _T_121 = or(or_lfh_4_1, or_rfh_4_1) @[RhoPi.scala 224:34]
    node or_lfh_4_2 = bits(_T_22, 63, 0) @[RhoPi.scala 117:24 RhoPi.scala 169:14]
    node or_rfh_4_2 = _T_93 @[RhoPi.scala 143:24 RhoPi.scala 195:14]
    node _T_122 = or(or_lfh_4_2, or_rfh_4_2) @[RhoPi.scala 225:34]
    node or_lfh_4_3 = bits(_T_23, 63, 0) @[RhoPi.scala 118:24 RhoPi.scala 170:14]
    node or_rfh_4_3 = _T_96 @[RhoPi.scala 144:24 RhoPi.scala 196:14]
    node _T_123 = or(or_lfh_4_3, or_rfh_4_3) @[RhoPi.scala 226:34]
    node or_lfh_4_4 = bits(_T_24, 63, 0) @[RhoPi.scala 119:24 RhoPi.scala 171:14]
    node or_rfh_4_4 = _T_99 @[RhoPi.scala 145:24 RhoPi.scala 197:14]
    node _T_124 = or(or_lfh_4_4, or_rfh_4_4) @[RhoPi.scala 227:34]
    io_rhoPi_out_0_0 <= _T_100 @[RhoPi.scala 199:20]
    io_rhoPi_out_1_0 <= _T_106 @[RhoPi.scala 206:20]
    io_rhoPi_out_2_0 <= _T_112 @[RhoPi.scala 213:20]
    io_rhoPi_out_3_0 <= _T_118 @[RhoPi.scala 220:20]
    io_rhoPi_out_4_0 <= _T_124 @[RhoPi.scala 227:20]
    io_rhoPi_out_0_1 <= _T_115 @[RhoPi.scala 217:20]
    io_rhoPi_out_1_1 <= _T_121 @[RhoPi.scala 224:20]
    io_rhoPi_out_2_1 <= _T_102 @[RhoPi.scala 201:20]
    io_rhoPi_out_3_1 <= _T_108 @[RhoPi.scala 208:20]
    io_rhoPi_out_4_1 <= _T_114 @[RhoPi.scala 215:20]
    io_rhoPi_out_0_2 <= _T_105 @[RhoPi.scala 205:20]
    io_rhoPi_out_1_2 <= _T_111 @[RhoPi.scala 212:20]
    io_rhoPi_out_2_2 <= _T_117 @[RhoPi.scala 219:20]
    io_rhoPi_out_3_2 <= _T_123 @[RhoPi.scala 226:20]
    io_rhoPi_out_4_2 <= _T_104 @[RhoPi.scala 203:20]
    io_rhoPi_out_0_3 <= _T_120 @[RhoPi.scala 223:20]
    io_rhoPi_out_1_3 <= _T_101 @[RhoPi.scala 200:20]
    io_rhoPi_out_2_3 <= _T_107 @[RhoPi.scala 207:20]
    io_rhoPi_out_3_3 <= _T_113 @[RhoPi.scala 214:20]
    io_rhoPi_out_4_3 <= _T_119 @[RhoPi.scala 221:20]
    io_rhoPi_out_0_4 <= _T_110 @[RhoPi.scala 211:20]
    io_rhoPi_out_1_4 <= _T_116 @[RhoPi.scala 218:20]
    io_rhoPi_out_2_4 <= _T_122 @[RhoPi.scala 225:20]
    io_rhoPi_out_3_4 <= _T_103 @[RhoPi.scala 202:20]
    io_rhoPi_out_4_4 <= _T_109 @[RhoPi.scala 209:20]

  module Chi :
    input clock : Clock
    input reset : UInt<1>
    input io_chi_in_0_0 : UInt<64>
    input io_chi_in_1_0 : UInt<64>
    input io_chi_in_2_0 : UInt<64>
    input io_chi_in_3_0 : UInt<64>
    input io_chi_in_4_0 : UInt<64>
    input io_chi_in_0_1 : UInt<64>
    input io_chi_in_1_1 : UInt<64>
    input io_chi_in_2_1 : UInt<64>
    input io_chi_in_3_1 : UInt<64>
    input io_chi_in_4_1 : UInt<64>
    input io_chi_in_0_2 : UInt<64>
    input io_chi_in_1_2 : UInt<64>
    input io_chi_in_2_2 : UInt<64>
    input io_chi_in_3_2 : UInt<64>
    input io_chi_in_4_2 : UInt<64>
    input io_chi_in_0_3 : UInt<64>
    input io_chi_in_1_3 : UInt<64>
    input io_chi_in_2_3 : UInt<64>
    input io_chi_in_3_3 : UInt<64>
    input io_chi_in_4_3 : UInt<64>
    input io_chi_in_0_4 : UInt<64>
    input io_chi_in_1_4 : UInt<64>
    input io_chi_in_2_4 : UInt<64>
    input io_chi_in_3_4 : UInt<64>
    input io_chi_in_4_4 : UInt<64>
    output io_chi_out_0_0 : UInt<64>
    output io_chi_out_1_0 : UInt<64>
    output io_chi_out_2_0 : UInt<64>
    output io_chi_out_3_0 : UInt<64>
    output io_chi_out_4_0 : UInt<64>
    output io_chi_out_0_1 : UInt<64>
    output io_chi_out_1_1 : UInt<64>
    output io_chi_out_2_1 : UInt<64>
    output io_chi_out_3_1 : UInt<64>
    output io_chi_out_4_1 : UInt<64>
    output io_chi_out_0_2 : UInt<64>
    output io_chi_out_1_2 : UInt<64>
    output io_chi_out_2_2 : UInt<64>
    output io_chi_out_3_2 : UInt<64>
    output io_chi_out_4_2 : UInt<64>
    output io_chi_out_0_3 : UInt<64>
    output io_chi_out_1_3 : UInt<64>
    output io_chi_out_2_3 : UInt<64>
    output io_chi_out_3_3 : UInt<64>
    output io_chi_out_4_3 : UInt<64>
    output io_chi_out_0_4 : UInt<64>
    output io_chi_out_1_4 : UInt<64>
    output io_chi_out_2_4 : UInt<64>
    output io_chi_out_3_4 : UInt<64>
    output io_chi_out_4_4 : UInt<64>

    node _T = not(io_chi_in_1_0) @[Chi.scala 185:25]
    node _T_1 = not(io_chi_in_1_1) @[Chi.scala 186:25]
    node _T_2 = not(io_chi_in_1_2) @[Chi.scala 187:25]
    node _T_3 = not(io_chi_in_1_3) @[Chi.scala 188:25]
    node _T_4 = not(io_chi_in_1_4) @[Chi.scala 189:25]
    node _T_5 = not(io_chi_in_2_0) @[Chi.scala 191:25]
    node _T_6 = not(io_chi_in_2_1) @[Chi.scala 192:25]
    node _T_7 = not(io_chi_in_2_2) @[Chi.scala 193:25]
    node _T_8 = not(io_chi_in_2_3) @[Chi.scala 194:25]
    node _T_9 = not(io_chi_in_2_4) @[Chi.scala 195:25]
    node _T_10 = not(io_chi_in_3_0) @[Chi.scala 197:25]
    node _T_11 = not(io_chi_in_3_1) @[Chi.scala 198:25]
    node _T_12 = not(io_chi_in_3_2) @[Chi.scala 199:25]
    node _T_13 = not(io_chi_in_3_3) @[Chi.scala 200:25]
    node _T_14 = not(io_chi_in_3_4) @[Chi.scala 201:25]
    node _T_15 = not(io_chi_in_4_0) @[Chi.scala 203:25]
    node _T_16 = not(io_chi_in_4_1) @[Chi.scala 204:25]
    node _T_17 = not(io_chi_in_4_2) @[Chi.scala 205:25]
    node _T_18 = not(io_chi_in_4_3) @[Chi.scala 206:25]
    node _T_19 = not(io_chi_in_4_4) @[Chi.scala 207:25]
    node _T_20 = not(io_chi_in_0_0) @[Chi.scala 209:25]
    node _T_21 = not(io_chi_in_0_1) @[Chi.scala 210:25]
    node _T_22 = not(io_chi_in_0_2) @[Chi.scala 211:25]
    node _T_23 = not(io_chi_in_0_3) @[Chi.scala 212:25]
    node _T_24 = not(io_chi_in_0_4) @[Chi.scala 213:25]
    node chi_negation_0_0 = _T @[Chi.scala 111:30 Chi.scala 185:22]
    node _T_25 = and(chi_negation_0_0, io_chi_in_2_0) @[Chi.scala 215:41]
    node chi_negation_0_1 = _T_1 @[Chi.scala 117:30 Chi.scala 186:22]
    node _T_26 = and(chi_negation_0_1, io_chi_in_2_1) @[Chi.scala 216:41]
    node chi_negation_0_2 = _T_2 @[Chi.scala 123:30 Chi.scala 187:22]
    node _T_27 = and(chi_negation_0_2, io_chi_in_2_2) @[Chi.scala 217:41]
    node chi_negation_0_3 = _T_3 @[Chi.scala 129:30 Chi.scala 188:22]
    node _T_28 = and(chi_negation_0_3, io_chi_in_2_3) @[Chi.scala 218:41]
    node chi_negation_0_4 = _T_4 @[Chi.scala 135:30 Chi.scala 189:22]
    node _T_29 = and(chi_negation_0_4, io_chi_in_2_4) @[Chi.scala 219:41]
    node chi_negation_1_0 = _T_5 @[Chi.scala 112:30 Chi.scala 191:22]
    node _T_30 = and(chi_negation_1_0, io_chi_in_3_0) @[Chi.scala 221:41]
    node chi_negation_1_1 = _T_6 @[Chi.scala 118:30 Chi.scala 192:22]
    node _T_31 = and(chi_negation_1_1, io_chi_in_3_1) @[Chi.scala 222:41]
    node chi_negation_1_2 = _T_7 @[Chi.scala 124:30 Chi.scala 193:22]
    node _T_32 = and(chi_negation_1_2, io_chi_in_3_2) @[Chi.scala 223:41]
    node chi_negation_1_3 = _T_8 @[Chi.scala 130:30 Chi.scala 194:22]
    node _T_33 = and(chi_negation_1_3, io_chi_in_3_3) @[Chi.scala 224:41]
    node chi_negation_1_4 = _T_9 @[Chi.scala 136:30 Chi.scala 195:22]
    node _T_34 = and(chi_negation_1_4, io_chi_in_3_4) @[Chi.scala 225:41]
    node chi_negation_2_0 = _T_10 @[Chi.scala 113:30 Chi.scala 197:22]
    node _T_35 = and(chi_negation_2_0, io_chi_in_4_0) @[Chi.scala 227:41]
    node chi_negation_2_1 = _T_11 @[Chi.scala 119:30 Chi.scala 198:22]
    node _T_36 = and(chi_negation_2_1, io_chi_in_4_1) @[Chi.scala 228:41]
    node chi_negation_2_2 = _T_12 @[Chi.scala 125:30 Chi.scala 199:22]
    node _T_37 = and(chi_negation_2_2, io_chi_in_4_2) @[Chi.scala 229:41]
    node chi_negation_2_3 = _T_13 @[Chi.scala 131:30 Chi.scala 200:22]
    node _T_38 = and(chi_negation_2_3, io_chi_in_4_3) @[Chi.scala 230:41]
    node chi_negation_2_4 = _T_14 @[Chi.scala 137:30 Chi.scala 201:22]
    node _T_39 = and(chi_negation_2_4, io_chi_in_4_4) @[Chi.scala 231:41]
    node chi_negation_3_0 = _T_15 @[Chi.scala 114:30 Chi.scala 203:22]
    node _T_40 = and(chi_negation_3_0, io_chi_in_0_0) @[Chi.scala 233:41]
    node chi_negation_3_1 = _T_16 @[Chi.scala 120:30 Chi.scala 204:22]
    node _T_41 = and(chi_negation_3_1, io_chi_in_0_1) @[Chi.scala 234:41]
    node chi_negation_3_2 = _T_17 @[Chi.scala 126:30 Chi.scala 205:22]
    node _T_42 = and(chi_negation_3_2, io_chi_in_0_2) @[Chi.scala 235:41]
    node chi_negation_3_3 = _T_18 @[Chi.scala 132:30 Chi.scala 206:22]
    node _T_43 = and(chi_negation_3_3, io_chi_in_0_3) @[Chi.scala 236:41]
    node chi_negation_3_4 = _T_19 @[Chi.scala 138:30 Chi.scala 207:22]
    node _T_44 = and(chi_negation_3_4, io_chi_in_0_4) @[Chi.scala 237:41]
    node chi_negation_4_0 = _T_20 @[Chi.scala 115:30 Chi.scala 209:22]
    node _T_45 = and(chi_negation_4_0, io_chi_in_1_0) @[Chi.scala 239:41]
    node chi_negation_4_1 = _T_21 @[Chi.scala 121:30 Chi.scala 210:22]
    node _T_46 = and(chi_negation_4_1, io_chi_in_1_1) @[Chi.scala 240:41]
    node chi_negation_4_2 = _T_22 @[Chi.scala 127:30 Chi.scala 211:22]
    node _T_47 = and(chi_negation_4_2, io_chi_in_1_2) @[Chi.scala 241:41]
    node chi_negation_4_3 = _T_23 @[Chi.scala 133:30 Chi.scala 212:22]
    node _T_48 = and(chi_negation_4_3, io_chi_in_1_3) @[Chi.scala 242:41]
    node chi_negation_4_4 = _T_24 @[Chi.scala 139:30 Chi.scala 213:22]
    node _T_49 = and(chi_negation_4_4, io_chi_in_1_4) @[Chi.scala 243:41]
    node chi_xor_rhs_0_0 = _T_25 @[Chi.scala 80:29 Chi.scala 215:21]
    node _T_50 = xor(io_chi_in_0_0, chi_xor_rhs_0_0) @[Chi.scala 307:36]
    node chi_xor_rhs_0_1 = _T_26 @[Chi.scala 86:29 Chi.scala 216:21]
    node _T_51 = xor(io_chi_in_0_1, chi_xor_rhs_0_1) @[Chi.scala 308:36]
    node chi_xor_rhs_0_2 = _T_27 @[Chi.scala 92:29 Chi.scala 217:21]
    node _T_52 = xor(io_chi_in_0_2, chi_xor_rhs_0_2) @[Chi.scala 309:36]
    node chi_xor_rhs_0_3 = _T_28 @[Chi.scala 98:29 Chi.scala 218:21]
    node _T_53 = xor(io_chi_in_0_3, chi_xor_rhs_0_3) @[Chi.scala 310:36]
    node chi_xor_rhs_0_4 = _T_29 @[Chi.scala 104:29 Chi.scala 219:21]
    node _T_54 = xor(io_chi_in_0_4, chi_xor_rhs_0_4) @[Chi.scala 311:36]
    node chi_xor_rhs_1_0 = _T_30 @[Chi.scala 81:29 Chi.scala 221:21]
    node _T_55 = xor(io_chi_in_1_0, chi_xor_rhs_1_0) @[Chi.scala 313:36]
    node chi_xor_rhs_1_1 = _T_31 @[Chi.scala 87:29 Chi.scala 222:21]
    node _T_56 = xor(io_chi_in_1_1, chi_xor_rhs_1_1) @[Chi.scala 314:36]
    node chi_xor_rhs_1_2 = _T_32 @[Chi.scala 93:29 Chi.scala 223:21]
    node _T_57 = xor(io_chi_in_1_2, chi_xor_rhs_1_2) @[Chi.scala 315:36]
    node chi_xor_rhs_1_3 = _T_33 @[Chi.scala 99:29 Chi.scala 224:21]
    node _T_58 = xor(io_chi_in_1_3, chi_xor_rhs_1_3) @[Chi.scala 316:36]
    node chi_xor_rhs_1_4 = _T_34 @[Chi.scala 105:29 Chi.scala 225:21]
    node _T_59 = xor(io_chi_in_1_4, chi_xor_rhs_1_4) @[Chi.scala 317:36]
    node chi_xor_rhs_2_0 = _T_35 @[Chi.scala 82:29 Chi.scala 227:21]
    node _T_60 = xor(io_chi_in_2_0, chi_xor_rhs_2_0) @[Chi.scala 319:36]
    node chi_xor_rhs_2_1 = _T_36 @[Chi.scala 88:29 Chi.scala 228:21]
    node _T_61 = xor(io_chi_in_2_1, chi_xor_rhs_2_1) @[Chi.scala 320:36]
    node chi_xor_rhs_2_2 = _T_37 @[Chi.scala 94:29 Chi.scala 229:21]
    node _T_62 = xor(io_chi_in_2_2, chi_xor_rhs_2_2) @[Chi.scala 321:36]
    node chi_xor_rhs_2_3 = _T_38 @[Chi.scala 100:29 Chi.scala 230:21]
    node _T_63 = xor(io_chi_in_2_3, chi_xor_rhs_2_3) @[Chi.scala 322:36]
    node chi_xor_rhs_2_4 = _T_39 @[Chi.scala 106:29 Chi.scala 231:21]
    node _T_64 = xor(io_chi_in_2_4, chi_xor_rhs_2_4) @[Chi.scala 323:36]
    node chi_xor_rhs_3_0 = _T_40 @[Chi.scala 83:29 Chi.scala 233:21]
    node _T_65 = xor(io_chi_in_3_0, chi_xor_rhs_3_0) @[Chi.scala 325:36]
    node chi_xor_rhs_3_1 = _T_41 @[Chi.scala 89:29 Chi.scala 234:21]
    node _T_66 = xor(io_chi_in_3_1, chi_xor_rhs_3_1) @[Chi.scala 326:36]
    node chi_xor_rhs_3_2 = _T_42 @[Chi.scala 95:29 Chi.scala 235:21]
    node _T_67 = xor(io_chi_in_3_2, chi_xor_rhs_3_2) @[Chi.scala 327:36]
    node chi_xor_rhs_3_3 = _T_43 @[Chi.scala 101:29 Chi.scala 236:21]
    node _T_68 = xor(io_chi_in_3_3, chi_xor_rhs_3_3) @[Chi.scala 328:36]
    node chi_xor_rhs_3_4 = _T_44 @[Chi.scala 107:29 Chi.scala 237:21]
    node _T_69 = xor(io_chi_in_3_4, chi_xor_rhs_3_4) @[Chi.scala 329:36]
    node chi_xor_rhs_4_0 = _T_45 @[Chi.scala 84:29 Chi.scala 239:21]
    node _T_70 = xor(io_chi_in_4_0, chi_xor_rhs_4_0) @[Chi.scala 331:36]
    node chi_xor_rhs_4_1 = _T_46 @[Chi.scala 90:29 Chi.scala 240:21]
    node _T_71 = xor(io_chi_in_4_1, chi_xor_rhs_4_1) @[Chi.scala 332:36]
    node chi_xor_rhs_4_2 = _T_47 @[Chi.scala 96:29 Chi.scala 241:21]
    node _T_72 = xor(io_chi_in_4_2, chi_xor_rhs_4_2) @[Chi.scala 333:36]
    node chi_xor_rhs_4_3 = _T_48 @[Chi.scala 102:29 Chi.scala 242:21]
    node _T_73 = xor(io_chi_in_4_3, chi_xor_rhs_4_3) @[Chi.scala 334:36]
    node chi_xor_rhs_4_4 = _T_49 @[Chi.scala 108:29 Chi.scala 243:21]
    node _T_74 = xor(io_chi_in_4_4, chi_xor_rhs_4_4) @[Chi.scala 335:36]
    io_chi_out_0_0 <= _T_50 @[Chi.scala 307:20]
    io_chi_out_1_0 <= _T_55 @[Chi.scala 313:20]
    io_chi_out_2_0 <= _T_60 @[Chi.scala 319:20]
    io_chi_out_3_0 <= _T_65 @[Chi.scala 325:20]
    io_chi_out_4_0 <= _T_70 @[Chi.scala 331:20]
    io_chi_out_0_1 <= _T_51 @[Chi.scala 308:20]
    io_chi_out_1_1 <= _T_56 @[Chi.scala 314:20]
    io_chi_out_2_1 <= _T_61 @[Chi.scala 320:20]
    io_chi_out_3_1 <= _T_66 @[Chi.scala 326:20]
    io_chi_out_4_1 <= _T_71 @[Chi.scala 332:20]
    io_chi_out_0_2 <= _T_52 @[Chi.scala 309:20]
    io_chi_out_1_2 <= _T_57 @[Chi.scala 315:20]
    io_chi_out_2_2 <= _T_62 @[Chi.scala 321:20]
    io_chi_out_3_2 <= _T_67 @[Chi.scala 327:20]
    io_chi_out_4_2 <= _T_72 @[Chi.scala 333:20]
    io_chi_out_0_3 <= _T_53 @[Chi.scala 310:20]
    io_chi_out_1_3 <= _T_58 @[Chi.scala 316:20]
    io_chi_out_2_3 <= _T_63 @[Chi.scala 322:20]
    io_chi_out_3_3 <= _T_68 @[Chi.scala 328:20]
    io_chi_out_4_3 <= _T_73 @[Chi.scala 334:20]
    io_chi_out_0_4 <= _T_54 @[Chi.scala 311:20]
    io_chi_out_1_4 <= _T_59 @[Chi.scala 317:20]
    io_chi_out_2_4 <= _T_64 @[Chi.scala 323:20]
    io_chi_out_3_4 <= _T_69 @[Chi.scala 329:20]
    io_chi_out_4_4 <= _T_74 @[Chi.scala 335:20]

  module Iota :
    input clock : Clock
    input reset : UInt<1>
    input io_iota_in : UInt<64>
    output io_iota_out : UInt<64>

    node RC_0 = pad(UInt<1>("h1"), 64) @[Iota.scala 9:17 Iota.scala 10:11]
    node _T = xor(io_iota_in, RC_0) @[Iota.scala 36:28]
    node RC_1 = pad(UInt<16>("h8082"), 64) @[Iota.scala 9:17 Iota.scala 11:11]
    node RC_2 = UInt<64>("h800000000000808a") @[Iota.scala 9:17 Iota.scala 12:11]
    node RC_3 = UInt<64>("h8000000080008000") @[Iota.scala 9:17 Iota.scala 13:11]
    node RC_4 = pad(UInt<16>("h808b"), 64) @[Iota.scala 9:17 Iota.scala 14:11]
    node RC_5 = pad(UInt<32>("h80000001"), 64) @[Iota.scala 9:17 Iota.scala 15:11]
    node RC_6 = UInt<64>("h8000000080008081") @[Iota.scala 9:17 Iota.scala 16:11]
    node RC_7 = UInt<64>("h8000000000008009") @[Iota.scala 9:17 Iota.scala 17:11]
    node RC_8 = pad(UInt<8>("h8a"), 64) @[Iota.scala 9:17 Iota.scala 18:11]
    node RC_9 = pad(UInt<8>("h88"), 64) @[Iota.scala 9:17 Iota.scala 19:11]
    node RC_10 = pad(UInt<32>("h80008009"), 64) @[Iota.scala 9:17 Iota.scala 20:11]
    node RC_11 = pad(UInt<32>("h8000000a"), 64) @[Iota.scala 9:17 Iota.scala 21:11]
    node RC_12 = pad(UInt<32>("h8000808b"), 64) @[Iota.scala 9:17 Iota.scala 22:11]
    node RC_13 = UInt<64>("h800000000000008b") @[Iota.scala 9:17 Iota.scala 23:11]
    node RC_14 = UInt<64>("h8000000000008089") @[Iota.scala 9:17 Iota.scala 24:11]
    node RC_15 = UInt<64>("h8000000000008003") @[Iota.scala 9:17 Iota.scala 25:11]
    node RC_16 = UInt<64>("h8000000000008002") @[Iota.scala 9:17 Iota.scala 26:11]
    node RC_17 = UInt<64>("h8000000000000080") @[Iota.scala 9:17 Iota.scala 27:11]
    node RC_18 = pad(UInt<16>("h800a"), 64) @[Iota.scala 9:17 Iota.scala 28:11]
    node RC_19 = UInt<64>("h800000008000000a") @[Iota.scala 9:17 Iota.scala 29:11]
    node RC_20 = UInt<64>("h8000000080008081") @[Iota.scala 9:17 Iota.scala 30:11]
    node RC_21 = UInt<64>("h8000000000008080") @[Iota.scala 9:17 Iota.scala 31:11]
    node RC_22 = pad(UInt<32>("h80000001"), 64) @[Iota.scala 9:17 Iota.scala 32:11]
    node RC_23 = UInt<64>("h8000000080008008") @[Iota.scala 9:17 Iota.scala 33:11]
    io_iota_out <= _T @[Iota.scala 36:15]

  module Round :
    input clock : Clock
    input reset : UInt<1>
    input io_round_in_0_0 : UInt<64>
    input io_round_in_1_0 : UInt<64>
    input io_round_in_2_0 : UInt<64>
    input io_round_in_3_0 : UInt<64>
    input io_round_in_4_0 : UInt<64>
    input io_round_in_0_1 : UInt<64>
    input io_round_in_1_1 : UInt<64>
    input io_round_in_2_1 : UInt<64>
    input io_round_in_3_1 : UInt<64>
    input io_round_in_4_1 : UInt<64>
    input io_round_in_0_2 : UInt<64>
    input io_round_in_1_2 : UInt<64>
    input io_round_in_2_2 : UInt<64>
    input io_round_in_3_2 : UInt<64>
    input io_round_in_4_2 : UInt<64>
    input io_round_in_0_3 : UInt<64>
    input io_round_in_1_3 : UInt<64>
    input io_round_in_2_3 : UInt<64>
    input io_round_in_3_3 : UInt<64>
    input io_round_in_4_3 : UInt<64>
    input io_round_in_0_4 : UInt<64>
    input io_round_in_1_4 : UInt<64>
    input io_round_in_2_4 : UInt<64>
    input io_round_in_3_4 : UInt<64>
    input io_round_in_4_4 : UInt<64>
    output io_round_out_0_0 : UInt<64>
    output io_round_out_1_0 : UInt<64>
    output io_round_out_2_0 : UInt<64>
    output io_round_out_3_0 : UInt<64>
    output io_round_out_4_0 : UInt<64>
    output io_round_out_0_1 : UInt<64>
    output io_round_out_1_1 : UInt<64>
    output io_round_out_2_1 : UInt<64>
    output io_round_out_3_1 : UInt<64>
    output io_round_out_4_1 : UInt<64>
    output io_round_out_0_2 : UInt<64>
    output io_round_out_1_2 : UInt<64>
    output io_round_out_2_2 : UInt<64>
    output io_round_out_3_2 : UInt<64>
    output io_round_out_4_2 : UInt<64>
    output io_round_out_0_3 : UInt<64>
    output io_round_out_1_3 : UInt<64>
    output io_round_out_2_3 : UInt<64>
    output io_round_out_3_3 : UInt<64>
    output io_round_out_4_3 : UInt<64>
    output io_round_out_0_4 : UInt<64>
    output io_round_out_1_4 : UInt<64>
    output io_round_out_2_4 : UInt<64>
    output io_round_out_3_4 : UInt<64>
    output io_round_out_4_4 : UInt<64>

    inst theta of Theta @[Round.scala 60:27]
    inst rhoPi of RhoPi @[Round.scala 61:27]
    inst chi of Chi @[Round.scala 62:27]
    inst iota of Iota @[Round.scala 63:27]
    io_round_out_0_0 <= iota.io_iota_out @[Round.scala 157:22]
    io_round_out_1_0 <= chi.io_chi_out_1_0 @[Round.scala 163:22]
    io_round_out_2_0 <= chi.io_chi_out_2_0 @[Round.scala 169:22]
    io_round_out_3_0 <= chi.io_chi_out_3_0 @[Round.scala 175:22]
    io_round_out_4_0 <= chi.io_chi_out_4_0 @[Round.scala 181:22]
    io_round_out_0_1 <= chi.io_chi_out_0_1 @[Round.scala 158:22]
    io_round_out_1_1 <= chi.io_chi_out_1_1 @[Round.scala 164:22]
    io_round_out_2_1 <= chi.io_chi_out_2_1 @[Round.scala 170:22]
    io_round_out_3_1 <= chi.io_chi_out_3_1 @[Round.scala 176:22]
    io_round_out_4_1 <= chi.io_chi_out_4_1 @[Round.scala 182:22]
    io_round_out_0_2 <= chi.io_chi_out_0_2 @[Round.scala 159:22]
    io_round_out_1_2 <= chi.io_chi_out_1_2 @[Round.scala 165:22]
    io_round_out_2_2 <= chi.io_chi_out_2_2 @[Round.scala 171:22]
    io_round_out_3_2 <= chi.io_chi_out_3_2 @[Round.scala 177:22]
    io_round_out_4_2 <= chi.io_chi_out_4_2 @[Round.scala 183:22]
    io_round_out_0_3 <= chi.io_chi_out_0_3 @[Round.scala 160:22]
    io_round_out_1_3 <= chi.io_chi_out_1_3 @[Round.scala 166:22]
    io_round_out_2_3 <= chi.io_chi_out_2_3 @[Round.scala 172:22]
    io_round_out_3_3 <= chi.io_chi_out_3_3 @[Round.scala 178:22]
    io_round_out_4_3 <= chi.io_chi_out_4_3 @[Round.scala 184:22]
    io_round_out_0_4 <= chi.io_chi_out_0_4 @[Round.scala 161:22]
    io_round_out_1_4 <= chi.io_chi_out_1_4 @[Round.scala 167:22]
    io_round_out_2_4 <= chi.io_chi_out_2_4 @[Round.scala 173:22]
    io_round_out_3_4 <= chi.io_chi_out_3_4 @[Round.scala 179:22]
    io_round_out_4_4 <= chi.io_chi_out_4_4 @[Round.scala 185:22]
    theta.clock <= clock
    theta.reset <= reset
    theta.io_theta_in_0_0 <= io_round_in_0_0 @[Round.scala 65:27]
    theta.io_theta_in_1_0 <= io_round_in_1_0 @[Round.scala 71:27]
    theta.io_theta_in_2_0 <= io_round_in_2_0 @[Round.scala 77:27]
    theta.io_theta_in_3_0 <= io_round_in_3_0 @[Round.scala 83:27]
    theta.io_theta_in_4_0 <= io_round_in_4_0 @[Round.scala 89:27]
    theta.io_theta_in_0_1 <= io_round_in_0_1 @[Round.scala 66:27]
    theta.io_theta_in_1_1 <= io_round_in_1_1 @[Round.scala 72:27]
    theta.io_theta_in_2_1 <= io_round_in_2_1 @[Round.scala 78:27]
    theta.io_theta_in_3_1 <= io_round_in_3_1 @[Round.scala 84:27]
    theta.io_theta_in_4_1 <= io_round_in_4_1 @[Round.scala 90:27]
    theta.io_theta_in_0_2 <= io_round_in_0_2 @[Round.scala 67:27]
    theta.io_theta_in_1_2 <= io_round_in_1_2 @[Round.scala 73:27]
    theta.io_theta_in_2_2 <= io_round_in_2_2 @[Round.scala 79:27]
    theta.io_theta_in_3_2 <= io_round_in_3_2 @[Round.scala 85:27]
    theta.io_theta_in_4_2 <= io_round_in_4_2 @[Round.scala 91:27]
    theta.io_theta_in_0_3 <= io_round_in_0_3 @[Round.scala 68:27]
    theta.io_theta_in_1_3 <= io_round_in_1_3 @[Round.scala 74:27]
    theta.io_theta_in_2_3 <= io_round_in_2_3 @[Round.scala 80:27]
    theta.io_theta_in_3_3 <= io_round_in_3_3 @[Round.scala 86:27]
    theta.io_theta_in_4_3 <= io_round_in_4_3 @[Round.scala 92:27]
    theta.io_theta_in_0_4 <= io_round_in_0_4 @[Round.scala 69:27]
    theta.io_theta_in_1_4 <= io_round_in_1_4 @[Round.scala 75:27]
    theta.io_theta_in_2_4 <= io_round_in_2_4 @[Round.scala 81:27]
    theta.io_theta_in_3_4 <= io_round_in_3_4 @[Round.scala 87:27]
    theta.io_theta_in_4_4 <= io_round_in_4_4 @[Round.scala 93:27]
    rhoPi.clock <= clock
    rhoPi.reset <= reset
    rhoPi.io_rhoPi_in_0_0 <= theta.io_theta_out_0_0 @[Round.scala 97:27]
    rhoPi.io_rhoPi_in_1_0 <= theta.io_theta_out_1_0 @[Round.scala 101:27]
    rhoPi.io_rhoPi_in_2_0 <= theta.io_theta_out_2_0 @[Round.scala 107:27]
    rhoPi.io_rhoPi_in_3_0 <= theta.io_theta_out_3_0 @[Round.scala 113:27]
    rhoPi.io_rhoPi_in_4_0 <= theta.io_theta_out_4_0 @[Round.scala 119:27]
    rhoPi.io_rhoPi_in_0_1 <= theta.io_theta_out_0_1 @[Round.scala 95:27]
    rhoPi.io_rhoPi_in_1_1 <= theta.io_theta_out_1_1 @[Round.scala 102:27]
    rhoPi.io_rhoPi_in_2_1 <= theta.io_theta_out_2_1 @[Round.scala 108:27]
    rhoPi.io_rhoPi_in_3_1 <= theta.io_theta_out_3_1 @[Round.scala 114:27]
    rhoPi.io_rhoPi_in_4_1 <= theta.io_theta_out_4_1 @[Round.scala 120:27]
    rhoPi.io_rhoPi_in_0_2 <= theta.io_theta_out_0_2 @[Round.scala 96:27]
    rhoPi.io_rhoPi_in_1_2 <= theta.io_theta_out_1_2 @[Round.scala 103:27]
    rhoPi.io_rhoPi_in_2_2 <= theta.io_theta_out_2_2 @[Round.scala 109:27]
    rhoPi.io_rhoPi_in_3_2 <= theta.io_theta_out_3_2 @[Round.scala 115:27]
    rhoPi.io_rhoPi_in_4_2 <= theta.io_theta_out_4_2 @[Round.scala 121:27]
    rhoPi.io_rhoPi_in_0_3 <= theta.io_theta_out_0_3 @[Round.scala 98:27]
    rhoPi.io_rhoPi_in_1_3 <= theta.io_theta_out_1_3 @[Round.scala 104:27]
    rhoPi.io_rhoPi_in_2_3 <= theta.io_theta_out_2_3 @[Round.scala 110:27]
    rhoPi.io_rhoPi_in_3_3 <= theta.io_theta_out_3_3 @[Round.scala 116:27]
    rhoPi.io_rhoPi_in_4_3 <= theta.io_theta_out_4_3 @[Round.scala 122:27]
    rhoPi.io_rhoPi_in_0_4 <= theta.io_theta_out_0_4 @[Round.scala 99:27]
    rhoPi.io_rhoPi_in_1_4 <= theta.io_theta_out_1_4 @[Round.scala 105:27]
    rhoPi.io_rhoPi_in_2_4 <= theta.io_theta_out_2_4 @[Round.scala 111:27]
    rhoPi.io_rhoPi_in_3_4 <= theta.io_theta_out_3_4 @[Round.scala 117:27]
    rhoPi.io_rhoPi_in_4_4 <= theta.io_theta_out_4_4 @[Round.scala 123:27]
    chi.clock <= clock
    chi.reset <= reset
    chi.io_chi_in_0_0 <= rhoPi.io_rhoPi_out_0_0 @[Round.scala 125:23]
    chi.io_chi_in_1_0 <= rhoPi.io_rhoPi_out_1_0 @[Round.scala 131:23]
    chi.io_chi_in_2_0 <= rhoPi.io_rhoPi_out_2_0 @[Round.scala 137:23]
    chi.io_chi_in_3_0 <= rhoPi.io_rhoPi_out_3_0 @[Round.scala 143:23]
    chi.io_chi_in_4_0 <= rhoPi.io_rhoPi_out_4_0 @[Round.scala 149:23]
    chi.io_chi_in_0_1 <= rhoPi.io_rhoPi_out_0_1 @[Round.scala 126:23]
    chi.io_chi_in_1_1 <= rhoPi.io_rhoPi_out_1_1 @[Round.scala 132:23]
    chi.io_chi_in_2_1 <= rhoPi.io_rhoPi_out_2_1 @[Round.scala 138:23]
    chi.io_chi_in_3_1 <= rhoPi.io_rhoPi_out_3_1 @[Round.scala 144:23]
    chi.io_chi_in_4_1 <= rhoPi.io_rhoPi_out_4_1 @[Round.scala 150:23]
    chi.io_chi_in_0_2 <= rhoPi.io_rhoPi_out_0_2 @[Round.scala 127:23]
    chi.io_chi_in_1_2 <= rhoPi.io_rhoPi_out_1_2 @[Round.scala 133:23]
    chi.io_chi_in_2_2 <= rhoPi.io_rhoPi_out_2_2 @[Round.scala 139:23]
    chi.io_chi_in_3_2 <= rhoPi.io_rhoPi_out_3_2 @[Round.scala 145:23]
    chi.io_chi_in_4_2 <= rhoPi.io_rhoPi_out_4_2 @[Round.scala 151:23]
    chi.io_chi_in_0_3 <= rhoPi.io_rhoPi_out_0_3 @[Round.scala 128:23]
    chi.io_chi_in_1_3 <= rhoPi.io_rhoPi_out_1_3 @[Round.scala 134:23]
    chi.io_chi_in_2_3 <= rhoPi.io_rhoPi_out_2_3 @[Round.scala 140:23]
    chi.io_chi_in_3_3 <= rhoPi.io_rhoPi_out_3_3 @[Round.scala 146:23]
    chi.io_chi_in_4_3 <= rhoPi.io_rhoPi_out_4_3 @[Round.scala 152:23]
    chi.io_chi_in_0_4 <= rhoPi.io_rhoPi_out_0_4 @[Round.scala 129:23]
    chi.io_chi_in_1_4 <= rhoPi.io_rhoPi_out_1_4 @[Round.scala 135:23]
    chi.io_chi_in_2_4 <= rhoPi.io_rhoPi_out_2_4 @[Round.scala 141:23]
    chi.io_chi_in_3_4 <= rhoPi.io_rhoPi_out_3_4 @[Round.scala 147:23]
    chi.io_chi_in_4_4 <= rhoPi.io_rhoPi_out_4_4 @[Round.scala 153:23]
    iota.clock <= clock
    iota.reset <= reset
    iota.io_iota_in <= chi.io_chi_in_0_0 @[Round.scala 155:24]

  module StateRegister :
    input clock : Clock
    input reset : UInt<1>
    input io_enable : UInt<1>
    input io_state_in_2_0 : UInt<64>
    input io_state_in_3_0 : UInt<64>
    input io_state_in_0_0 : UInt<64>
    input io_state_in_1_0 : UInt<64>
    input io_state_in_4_0 : UInt<64>
    input io_state_in_0_1 : UInt<64>
    input io_state_in_1_1 : UInt<64>
    input io_state_in_2_1 : UInt<64>
    input io_state_in_3_1 : UInt<64>
    input io_state_in_4_1 : UInt<64>
    input io_state_in_0_2 : UInt<64>
    input io_state_in_1_2 : UInt<64>
    input io_state_in_2_2 : UInt<64>
    input io_state_in_3_2 : UInt<64>
    input io_state_in_4_2 : UInt<64>
    input io_state_in_0_3 : UInt<64>
    input io_state_in_1_3 : UInt<64>
    input io_state_in_2_3 : UInt<64>
    input io_state_in_3_3 : UInt<64>
    input io_state_in_4_3 : UInt<64>
    input io_state_in_0_4 : UInt<64>
    input io_state_in_1_4 : UInt<64>
    input io_state_in_2_4 : UInt<64>
    input io_state_in_3_4 : UInt<64>
    input io_state_in_4_4 : UInt<64>
    output io_state_out_0_0 : UInt<64>
    output io_state_out_1_0 : UInt<64>
    output io_state_out_2_0 : UInt<64>
    output io_state_out_3_0 : UInt<64>
    output io_state_out_4_0 : UInt<64>
    output io_state_out_0_1 : UInt<64>
    output io_state_out_1_1 : UInt<64>
    output io_state_out_2_1 : UInt<64>
    output io_state_out_3_1 : UInt<64>
    output io_state_out_4_1 : UInt<64>
    output io_state_out_0_2 : UInt<64>
    output io_state_out_1_2 : UInt<64>
    output io_state_out_2_2 : UInt<64>
    output io_state_out_3_2 : UInt<64>
    output io_state_out_4_2 : UInt<64>
    output io_state_out_0_3 : UInt<64>
    output io_state_out_1_3 : UInt<64>
    output io_state_out_2_3 : UInt<64>
    output io_state_out_3_3 : UInt<64>
    output io_state_out_4_3 : UInt<64>
    output io_state_out_0_4 : UInt<64>
    output io_state_out_1_4 : UInt<64>
    output io_state_out_2_4 : UInt<64>
    output io_state_out_3_4 : UInt<64>
    output io_state_out_4_4 : UInt<64>

    reg state_2_0_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_2_0_reg) @[StateRegister.scala 70:30]
    reg state_3_0_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_3_0_reg) @[StateRegister.scala 71:30]
    reg state_0_0_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_0_0_reg) @[StateRegister.scala 72:30]
    reg state_1_0_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_1_0_reg) @[StateRegister.scala 73:30]
    reg state_4_0_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_4_0_reg) @[StateRegister.scala 74:30]
    reg state_0_1_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_0_1_reg) @[StateRegister.scala 76:31]
    reg state_1_1_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_1_1_reg) @[StateRegister.scala 77:31]
    reg state_2_1_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_2_1_reg) @[StateRegister.scala 78:31]
    reg state_3_1_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_3_1_reg) @[StateRegister.scala 79:31]
    reg state_4_1_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_4_1_reg) @[StateRegister.scala 80:31]
    reg state_0_2_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_0_2_reg) @[StateRegister.scala 82:31]
    reg state_1_2_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_1_2_reg) @[StateRegister.scala 83:31]
    reg state_2_2_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_2_2_reg) @[StateRegister.scala 84:31]
    reg state_3_2_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_3_2_reg) @[StateRegister.scala 85:31]
    reg state_4_2_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_4_2_reg) @[StateRegister.scala 86:31]
    reg state_0_3_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_0_3_reg) @[StateRegister.scala 88:31]
    reg state_1_3_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_1_3_reg) @[StateRegister.scala 89:31]
    reg state_2_3_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_2_3_reg) @[StateRegister.scala 90:31]
    reg state_3_3_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_3_3_reg) @[StateRegister.scala 91:31]
    reg state_4_3_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_4_3_reg) @[StateRegister.scala 92:31]
    reg state_0_4_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_0_4_reg) @[StateRegister.scala 94:31]
    reg state_1_4_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_1_4_reg) @[StateRegister.scala 95:31]
    reg state_2_4_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_2_4_reg) @[StateRegister.scala 96:31]
    reg state_3_4_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_3_4_reg) @[StateRegister.scala 97:31]
    reg state_4_4_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), state_4_4_reg) @[StateRegister.scala 98:31]
    node _GEN_0 = mux(io_enable, io_state_in_0_0, state_0_0_reg) @[StateRegister.scala 99:18 StateRegister.scala 100:19 StateRegister.scala 132:19]
    node _GEN_1 = mux(io_enable, io_state_in_1_0, state_1_0_reg) @[StateRegister.scala 99:18 StateRegister.scala 101:19 StateRegister.scala 133:19]
    node _GEN_2 = mux(io_enable, io_state_in_2_0, state_2_0_reg) @[StateRegister.scala 99:18 StateRegister.scala 102:19 StateRegister.scala 134:19]
    node _GEN_3 = mux(io_enable, io_state_in_3_0, state_3_0_reg) @[StateRegister.scala 99:18 StateRegister.scala 103:19 StateRegister.scala 135:19]
    node _GEN_4 = mux(io_enable, io_state_in_4_0, state_4_0_reg) @[StateRegister.scala 99:18 StateRegister.scala 104:19 StateRegister.scala 136:19]
    node _GEN_5 = mux(io_enable, io_state_in_0_1, state_0_1_reg) @[StateRegister.scala 99:18 StateRegister.scala 106:19 StateRegister.scala 138:19]
    node _GEN_6 = mux(io_enable, io_state_in_1_1, state_1_1_reg) @[StateRegister.scala 99:18 StateRegister.scala 107:19 StateRegister.scala 139:19]
    node _GEN_7 = mux(io_enable, io_state_in_2_1, state_2_1_reg) @[StateRegister.scala 99:18 StateRegister.scala 108:19 StateRegister.scala 140:19]
    node _GEN_8 = mux(io_enable, io_state_in_3_1, state_3_1_reg) @[StateRegister.scala 99:18 StateRegister.scala 109:19 StateRegister.scala 141:19]
    node _GEN_9 = mux(io_enable, io_state_in_4_1, state_4_1_reg) @[StateRegister.scala 99:18 StateRegister.scala 110:19 StateRegister.scala 142:19]
    node _GEN_10 = mux(io_enable, io_state_in_0_2, state_0_2_reg) @[StateRegister.scala 99:18 StateRegister.scala 112:19 StateRegister.scala 144:19]
    node _GEN_11 = mux(io_enable, io_state_in_1_2, state_1_2_reg) @[StateRegister.scala 99:18 StateRegister.scala 113:19 StateRegister.scala 145:19]
    node _GEN_12 = mux(io_enable, io_state_in_2_2, state_2_2_reg) @[StateRegister.scala 99:18 StateRegister.scala 114:19 StateRegister.scala 146:19]
    node _GEN_13 = mux(io_enable, io_state_in_3_2, state_3_2_reg) @[StateRegister.scala 99:18 StateRegister.scala 115:19 StateRegister.scala 147:19]
    node _GEN_14 = mux(io_enable, io_state_in_4_2, state_4_2_reg) @[StateRegister.scala 99:18 StateRegister.scala 116:19 StateRegister.scala 148:19]
    node _GEN_15 = mux(io_enable, io_state_in_0_3, state_0_3_reg) @[StateRegister.scala 99:18 StateRegister.scala 118:19 StateRegister.scala 150:19]
    node _GEN_16 = mux(io_enable, io_state_in_1_3, state_1_3_reg) @[StateRegister.scala 99:18 StateRegister.scala 119:19 StateRegister.scala 151:19]
    node _GEN_17 = mux(io_enable, io_state_in_2_3, state_2_3_reg) @[StateRegister.scala 99:18 StateRegister.scala 120:19 StateRegister.scala 152:19]
    node _GEN_18 = mux(io_enable, io_state_in_3_3, state_3_3_reg) @[StateRegister.scala 99:18 StateRegister.scala 121:19 StateRegister.scala 153:19]
    node _GEN_19 = mux(io_enable, io_state_in_4_3, state_4_3_reg) @[StateRegister.scala 99:18 StateRegister.scala 122:19 StateRegister.scala 154:19]
    node _GEN_20 = mux(io_enable, io_state_in_0_4, state_0_4_reg) @[StateRegister.scala 99:18 StateRegister.scala 124:19 StateRegister.scala 156:19]
    node _GEN_21 = mux(io_enable, io_state_in_1_4, state_1_4_reg) @[StateRegister.scala 99:18 StateRegister.scala 125:19 StateRegister.scala 157:19]
    node _GEN_22 = mux(io_enable, io_state_in_2_4, state_2_4_reg) @[StateRegister.scala 99:18 StateRegister.scala 126:19 StateRegister.scala 158:19]
    node _GEN_23 = mux(io_enable, io_state_in_3_4, state_3_4_reg) @[StateRegister.scala 99:18 StateRegister.scala 127:19 StateRegister.scala 159:19]
    node _GEN_24 = mux(io_enable, io_state_in_4_4, state_4_4_reg) @[StateRegister.scala 99:18 StateRegister.scala 128:19 StateRegister.scala 160:19]
    io_state_out_0_0 <= state_0_0_reg @[StateRegister.scala 163:20]
    io_state_out_1_0 <= state_1_0_reg @[StateRegister.scala 164:20]
    io_state_out_2_0 <= state_2_0_reg @[StateRegister.scala 165:20]
    io_state_out_3_0 <= state_3_0_reg @[StateRegister.scala 166:20]
    io_state_out_4_0 <= state_4_0_reg @[StateRegister.scala 167:20]
    io_state_out_0_1 <= state_0_1_reg @[StateRegister.scala 169:20]
    io_state_out_1_1 <= state_1_1_reg @[StateRegister.scala 170:20]
    io_state_out_2_1 <= state_2_1_reg @[StateRegister.scala 171:20]
    io_state_out_3_1 <= state_3_1_reg @[StateRegister.scala 172:20]
    io_state_out_4_1 <= state_4_1_reg @[StateRegister.scala 173:20]
    io_state_out_0_2 <= state_0_2_reg @[StateRegister.scala 175:20]
    io_state_out_1_2 <= state_1_2_reg @[StateRegister.scala 176:20]
    io_state_out_2_2 <= state_2_2_reg @[StateRegister.scala 177:20]
    io_state_out_3_2 <= state_3_2_reg @[StateRegister.scala 178:20]
    io_state_out_4_2 <= state_4_2_reg @[StateRegister.scala 179:20]
    io_state_out_0_3 <= state_0_3_reg @[StateRegister.scala 181:20]
    io_state_out_1_3 <= state_1_3_reg @[StateRegister.scala 182:20]
    io_state_out_2_3 <= state_2_3_reg @[StateRegister.scala 183:20]
    io_state_out_3_3 <= state_3_3_reg @[StateRegister.scala 184:20]
    io_state_out_4_3 <= state_4_3_reg @[StateRegister.scala 185:20]
    io_state_out_0_4 <= state_0_4_reg @[StateRegister.scala 187:20]
    io_state_out_1_4 <= state_1_4_reg @[StateRegister.scala 188:20]
    io_state_out_2_4 <= state_2_4_reg @[StateRegister.scala 189:20]
    io_state_out_3_4 <= state_3_4_reg @[StateRegister.scala 190:20]
    io_state_out_4_4 <= state_4_4_reg @[StateRegister.scala 191:20]
    state_2_0_reg <= mux(reset, UInt<1>("h0"), _GEN_2) @[StateRegister.scala 70:30 StateRegister.scala 70:30]
    state_3_0_reg <= mux(reset, UInt<1>("h0"), _GEN_3) @[StateRegister.scala 71:30 StateRegister.scala 71:30]
    state_0_0_reg <= mux(reset, UInt<1>("h0"), _GEN_0) @[StateRegister.scala 72:30 StateRegister.scala 72:30]
    state_1_0_reg <= mux(reset, UInt<1>("h0"), _GEN_1) @[StateRegister.scala 73:30 StateRegister.scala 73:30]
    state_4_0_reg <= mux(reset, UInt<1>("h0"), _GEN_4) @[StateRegister.scala 74:30 StateRegister.scala 74:30]
    state_0_1_reg <= mux(reset, UInt<1>("h0"), _GEN_5) @[StateRegister.scala 76:31 StateRegister.scala 76:31]
    state_1_1_reg <= mux(reset, UInt<1>("h0"), _GEN_6) @[StateRegister.scala 77:31 StateRegister.scala 77:31]
    state_2_1_reg <= mux(reset, UInt<1>("h0"), _GEN_7) @[StateRegister.scala 78:31 StateRegister.scala 78:31]
    state_3_1_reg <= mux(reset, UInt<1>("h0"), _GEN_8) @[StateRegister.scala 79:31 StateRegister.scala 79:31]
    state_4_1_reg <= mux(reset, UInt<1>("h0"), _GEN_9) @[StateRegister.scala 80:31 StateRegister.scala 80:31]
    state_0_2_reg <= mux(reset, UInt<1>("h0"), _GEN_10) @[StateRegister.scala 82:31 StateRegister.scala 82:31]
    state_1_2_reg <= mux(reset, UInt<1>("h0"), _GEN_11) @[StateRegister.scala 83:31 StateRegister.scala 83:31]
    state_2_2_reg <= mux(reset, UInt<1>("h0"), _GEN_12) @[StateRegister.scala 84:31 StateRegister.scala 84:31]
    state_3_2_reg <= mux(reset, UInt<1>("h0"), _GEN_13) @[StateRegister.scala 85:31 StateRegister.scala 85:31]
    state_4_2_reg <= mux(reset, UInt<1>("h0"), _GEN_14) @[StateRegister.scala 86:31 StateRegister.scala 86:31]
    state_0_3_reg <= mux(reset, UInt<1>("h0"), _GEN_15) @[StateRegister.scala 88:31 StateRegister.scala 88:31]
    state_1_3_reg <= mux(reset, UInt<1>("h0"), _GEN_16) @[StateRegister.scala 89:31 StateRegister.scala 89:31]
    state_2_3_reg <= mux(reset, UInt<1>("h0"), _GEN_17) @[StateRegister.scala 90:31 StateRegister.scala 90:31]
    state_3_3_reg <= mux(reset, UInt<1>("h0"), _GEN_18) @[StateRegister.scala 91:31 StateRegister.scala 91:31]
    state_4_3_reg <= mux(reset, UInt<1>("h0"), _GEN_19) @[StateRegister.scala 92:31 StateRegister.scala 92:31]
    state_0_4_reg <= mux(reset, UInt<1>("h0"), _GEN_20) @[StateRegister.scala 94:31 StateRegister.scala 94:31]
    state_1_4_reg <= mux(reset, UInt<1>("h0"), _GEN_21) @[StateRegister.scala 95:31 StateRegister.scala 95:31]
    state_2_4_reg <= mux(reset, UInt<1>("h0"), _GEN_22) @[StateRegister.scala 96:31 StateRegister.scala 96:31]
    state_3_4_reg <= mux(reset, UInt<1>("h0"), _GEN_23) @[StateRegister.scala 97:31 StateRegister.scala 97:31]
    state_4_4_reg <= mux(reset, UInt<1>("h0"), _GEN_24) @[StateRegister.scala 98:31 StateRegister.scala 98:31]

  module Sha3 :
    input clock : Clock
    input reset : UInt<1>
    input io_w_in_from_outside : UInt<64>
    input io_data_read : UInt<1>
    output io_w_in_to_buffer : UInt<64>
    input io_block_length_in : UInt<64>
    input io_block_length_valid_from_env : UInt<1>
    output io_block_length_valid_to_fsm : UInt<1>
    output io_block_length_out : UInt<64>
    input io_data_valid_from_env : UInt<1>
    output io_data_valid_to_buffer : UInt<1>
    input io_testing_enable_state_register : UInt<1>
    output io_testing_round_counter : UInt<64>
    output io_testing_global_round_counter : UInt<64>
    output io_testing_buffer_counter : UInt<64>
    output io_testing_buffer_ready : UInt<1>
    output io_testing_hash_ready : UInt<1>
    output io_testing_select_for_xor : UInt<1>
    output io_testing_result : UInt<64>
    output io_testing_state_reg_0_0 : UInt<64>
    output io_testing_state_reg_0_1 : UInt<64>
    output io_testing_state_reg_0_2 : UInt<64>
    output io_testing_state_reg_0_3 : UInt<64>
    output io_testing_state_reg_0_4 : UInt<64>
    output io_testing_state_reg_1_1 : UInt<64>
    output io_testing_state_reg_1_2 : UInt<64>
    output io_testing_state_reg_1_3 : UInt<64>
    output io_testing_state_reg_1_4 : UInt<64>
    output io_testing_state_reg_1_0 : UInt<64>
    output io_testing_state_reg_2_2 : UInt<64>
    output io_testing_state_reg_2_3 : UInt<64>
    output io_testing_state_reg_2_4 : UInt<64>
    output io_testing_state_reg_2_0 : UInt<64>
    output io_testing_state_reg_2_1 : UInt<64>
    output io_testing_state_reg_3_4 : UInt<64>
    output io_testing_state_reg_3_0 : UInt<64>
    output io_testing_state_reg_3_1 : UInt<64>
    output io_testing_state_reg_3_2 : UInt<64>
    output io_testing_state_reg_3_3 : UInt<64>
    output io_testing_state_reg_4_0 : UInt<64>
    output io_testing_state_reg_4_1 : UInt<64>
    output io_testing_state_reg_4_2 : UInt<64>
    output io_testing_state_reg_4_3 : UInt<64>
    output io_testing_state_reg_4_4 : UInt<64>
    output io_testing_round_in_0_0 : UInt<64>
    output io_testing_round_in_0_1 : UInt<64>
    output io_testing_round_in_0_2 : UInt<64>
    output io_testing_round_in_0_3 : UInt<64>
    output io_testing_round_in_0_4 : UInt<64>
    output io_testing_round_in_1_1 : UInt<64>
    output io_testing_round_in_1_2 : UInt<64>
    output io_testing_round_in_1_3 : UInt<64>
    output io_testing_round_in_1_4 : UInt<64>
    output io_testing_round_in_1_0 : UInt<64>
    output io_testing_round_in_2_2 : UInt<64>
    output io_testing_round_in_2_3 : UInt<64>
    output io_testing_round_in_2_4 : UInt<64>
    output io_testing_round_in_2_0 : UInt<64>
    output io_testing_round_in_2_1 : UInt<64>
    output io_testing_round_in_3_4 : UInt<64>
    output io_testing_round_in_3_0 : UInt<64>
    output io_testing_round_in_3_1 : UInt<64>
    output io_testing_round_in_3_2 : UInt<64>
    output io_testing_round_in_3_3 : UInt<64>
    output io_testing_round_in_4_0 : UInt<64>
    output io_testing_round_in_4_1 : UInt<64>
    output io_testing_round_in_4_2 : UInt<64>
    output io_testing_round_in_4_3 : UInt<64>
    output io_testing_round_in_4_4 : UInt<64>
    output io_testing_round_out_0_0 : UInt<64>
    output io_testing_round_out_0_1 : UInt<64>
    output io_testing_round_out_0_2 : UInt<64>
    output io_testing_round_out_0_3 : UInt<64>
    output io_testing_round_out_0_4 : UInt<64>
    output io_testing_round_out_1_1 : UInt<64>
    output io_testing_round_out_1_2 : UInt<64>
    output io_testing_round_out_1_3 : UInt<64>
    output io_testing_round_out_1_4 : UInt<64>
    output io_testing_round_out_1_0 : UInt<64>
    output io_testing_round_out_2_2 : UInt<64>
    output io_testing_round_out_2_3 : UInt<64>
    output io_testing_round_out_2_4 : UInt<64>
    output io_testing_round_out_2_0 : UInt<64>
    output io_testing_round_out_2_1 : UInt<64>
    output io_testing_round_out_3_4 : UInt<64>
    output io_testing_round_out_3_0 : UInt<64>
    output io_testing_round_out_3_1 : UInt<64>
    output io_testing_round_out_3_2 : UInt<64>
    output io_testing_round_out_3_3 : UInt<64>
    output io_testing_round_out_4_0 : UInt<64>
    output io_testing_round_out_4_1 : UInt<64>
    output io_testing_round_out_4_2 : UInt<64>
    output io_testing_round_out_4_3 : UInt<64>
    output io_testing_round_out_4_4 : UInt<64>
    output io_testing_buffer_content_0 : UInt<64>
    output io_testing_buffer_content_1 : UInt<64>
    output io_testing_buffer_content_2 : UInt<64>
    output io_testing_buffer_content_3 : UInt<64>
    output io_testing_buffer_content_4 : UInt<64>
    output io_testing_buffer_content_5 : UInt<64>
    output io_testing_buffer_content_6 : UInt<64>
    output io_testing_buffer_content_7 : UInt<64>
    output io_testing_buffer_content_8 : UInt<64>

    inst buffer of Buffer @[Sha3.scala 119:31]
    inst fsm of FSM @[Sha3.scala 120:31]
    inst round of Round @[Sha3.scala 121:31]
    inst stateRegister of StateRegister @[Sha3.scala 122:31]
    reg block_length_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), block_length_reg) @[Sha3.scala 126:34]
    node _GEN_0 = mux(io_block_length_valid_from_env, io_block_length_in, block_length_reg) @[Sha3.scala 149:39 Sha3.scala 150:22 Sha3.scala 153:22]
    node _GEN_1 = mux(io_block_length_valid_from_env, UInt<1>("h1"), UInt<1>("h0")) @[Sha3.scala 149:39 Sha3.scala 151:34 Sha3.scala 154:34]
    node _GEN_2 = mux(fsm.io_hash_ready, stateRegister.io_state_out_0_0, UInt<1>("h0")) @[Sha3.scala 160:3 Sha3.scala 161:19 Sha3.scala 171:19]
    node _T = and(buffer.io_bufferReady, fsm.io_select_for_xor) @[Sha3.scala 185:30]
    node _T_1 = xor(stateRegister.io_state_out_0_0, buffer.io_r_8) @[Sha3.scala 186:61]
    node _T_2 = xor(stateRegister.io_state_out_1_0, buffer.io_r_7) @[Sha3.scala 187:61]
    node _T_3 = xor(stateRegister.io_state_out_2_0, buffer.io_r_6) @[Sha3.scala 188:61]
    node _T_4 = xor(stateRegister.io_state_out_3_0, buffer.io_r_5) @[Sha3.scala 189:61]
    node _T_5 = xor(stateRegister.io_state_out_4_0, buffer.io_r_4) @[Sha3.scala 190:61]
    node _T_6 = xor(stateRegister.io_state_out_0_1, buffer.io_r_3) @[Sha3.scala 191:61]
    node _T_7 = xor(stateRegister.io_state_out_1_1, buffer.io_r_2) @[Sha3.scala 192:61]
    node _T_8 = xor(stateRegister.io_state_out_2_1, buffer.io_r_1) @[Sha3.scala 193:61]
    node _T_9 = xor(stateRegister.io_state_out_3_1, buffer.io_r_0) @[Sha3.scala 194:61]
    node _GEN_3 = mux(_T, _T_1, stateRegister.io_state_out_0_0) @[Sha3.scala 185:55 Sha3.scala 186:27 Sha3.scala 196:27]
    node _GEN_4 = mux(_T, _T_2, stateRegister.io_state_out_1_0) @[Sha3.scala 185:55 Sha3.scala 187:27 Sha3.scala 197:27]
    node _GEN_5 = mux(_T, _T_3, stateRegister.io_state_out_2_0) @[Sha3.scala 185:55 Sha3.scala 188:27 Sha3.scala 198:27]
    node _GEN_6 = mux(_T, _T_4, stateRegister.io_state_out_3_0) @[Sha3.scala 185:55 Sha3.scala 189:27 Sha3.scala 199:27]
    node _GEN_7 = mux(_T, _T_5, stateRegister.io_state_out_4_0) @[Sha3.scala 185:55 Sha3.scala 190:27 Sha3.scala 200:27]
    node _GEN_8 = mux(_T, _T_6, stateRegister.io_state_out_0_1) @[Sha3.scala 185:55 Sha3.scala 191:27 Sha3.scala 201:27]
    node _GEN_9 = mux(_T, _T_7, stateRegister.io_state_out_1_1) @[Sha3.scala 185:55 Sha3.scala 192:27 Sha3.scala 202:27]
    node _GEN_10 = mux(_T, _T_8, stateRegister.io_state_out_2_1) @[Sha3.scala 185:55 Sha3.scala 193:27 Sha3.scala 203:27]
    node _GEN_11 = mux(_T, _T_9, stateRegister.io_state_out_3_1) @[Sha3.scala 185:55 Sha3.scala 194:27 Sha3.scala 204:27]
    io_w_in_to_buffer <= io_w_in_from_outside @[Sha3.scala 128:31]
    io_block_length_valid_to_fsm <= _GEN_1
    io_block_length_out <= block_length_reg @[Sha3.scala 147:23]
    io_data_valid_to_buffer <= io_data_valid_from_env @[Sha3.scala 124:28]
    io_testing_round_counter <= fsm.io_counter_for_test @[Sha3.scala 140:35]
    io_testing_global_round_counter <= fsm.io_global_counter_for_test @[Sha3.scala 141:35]
    io_testing_buffer_counter <= buffer.io_testing_buffer_counter @[Sha3.scala 142:35]
    io_testing_buffer_ready <= buffer.io_bufferReady @[Sha3.scala 143:35]
    io_testing_hash_ready <= fsm.io_hash_ready @[Sha3.scala 144:35]
    io_testing_select_for_xor <= fsm.io_select_for_xor @[Sha3.scala 145:35]
    io_testing_result <= buffer.io_d_0 @[Sha3.scala 182:21]
    io_testing_state_reg_0_0 <= stateRegister.io_state_out_0_0 @[Sha3.scala 252:28]
    io_testing_state_reg_0_1 <= stateRegister.io_state_out_1_0 @[Sha3.scala 253:28]
    io_testing_state_reg_0_2 <= stateRegister.io_state_out_2_0 @[Sha3.scala 254:28]
    io_testing_state_reg_0_3 <= stateRegister.io_state_out_3_0 @[Sha3.scala 255:28]
    io_testing_state_reg_0_4 <= stateRegister.io_state_out_4_0 @[Sha3.scala 256:28]
    io_testing_state_reg_1_1 <= stateRegister.io_state_out_0_1 @[Sha3.scala 257:28]
    io_testing_state_reg_1_2 <= stateRegister.io_state_out_1_1 @[Sha3.scala 258:28]
    io_testing_state_reg_1_3 <= stateRegister.io_state_out_2_1 @[Sha3.scala 259:28]
    io_testing_state_reg_1_4 <= stateRegister.io_state_out_3_1 @[Sha3.scala 260:28]
    io_testing_state_reg_1_0 <= stateRegister.io_state_out_4_1 @[Sha3.scala 261:28]
    io_testing_state_reg_2_2 <= stateRegister.io_state_out_0_2 @[Sha3.scala 262:28]
    io_testing_state_reg_2_3 <= stateRegister.io_state_out_1_2 @[Sha3.scala 263:28]
    io_testing_state_reg_2_4 <= stateRegister.io_state_out_2_2 @[Sha3.scala 264:28]
    io_testing_state_reg_2_0 <= stateRegister.io_state_out_3_2 @[Sha3.scala 265:28]
    io_testing_state_reg_2_1 <= stateRegister.io_state_out_4_2 @[Sha3.scala 266:28]
    io_testing_state_reg_3_4 <= stateRegister.io_state_out_0_3 @[Sha3.scala 267:28]
    io_testing_state_reg_3_0 <= stateRegister.io_state_out_1_3 @[Sha3.scala 268:28]
    io_testing_state_reg_3_1 <= stateRegister.io_state_out_2_3 @[Sha3.scala 269:28]
    io_testing_state_reg_3_2 <= stateRegister.io_state_out_3_3 @[Sha3.scala 270:28]
    io_testing_state_reg_3_3 <= stateRegister.io_state_out_4_3 @[Sha3.scala 271:28]
    io_testing_state_reg_4_0 <= stateRegister.io_state_out_0_4 @[Sha3.scala 272:28]
    io_testing_state_reg_4_1 <= stateRegister.io_state_out_1_4 @[Sha3.scala 273:28]
    io_testing_state_reg_4_2 <= stateRegister.io_state_out_2_4 @[Sha3.scala 274:28]
    io_testing_state_reg_4_3 <= stateRegister.io_state_out_3_4 @[Sha3.scala 275:28]
    io_testing_state_reg_4_4 <= stateRegister.io_state_out_4_4 @[Sha3.scala 276:28]
    io_testing_round_in_0_0 <= round.io_round_in_0_0 @[Sha3.scala 279:26]
    io_testing_round_in_0_1 <= round.io_round_in_0_1 @[Sha3.scala 280:26]
    io_testing_round_in_0_2 <= round.io_round_in_0_2 @[Sha3.scala 281:26]
    io_testing_round_in_0_3 <= round.io_round_in_0_3 @[Sha3.scala 282:26]
    io_testing_round_in_0_4 <= round.io_round_in_0_4 @[Sha3.scala 283:26]
    io_testing_round_in_1_1 <= round.io_round_in_1_1 @[Sha3.scala 284:26]
    io_testing_round_in_1_2 <= round.io_round_in_1_2 @[Sha3.scala 285:26]
    io_testing_round_in_1_3 <= round.io_round_in_1_3 @[Sha3.scala 286:26]
    io_testing_round_in_1_4 <= round.io_round_in_1_4 @[Sha3.scala 287:26]
    io_testing_round_in_1_0 <= round.io_round_in_1_0 @[Sha3.scala 288:26]
    io_testing_round_in_2_2 <= round.io_round_in_2_2 @[Sha3.scala 289:26]
    io_testing_round_in_2_3 <= round.io_round_in_2_3 @[Sha3.scala 290:26]
    io_testing_round_in_2_4 <= round.io_round_in_2_4 @[Sha3.scala 291:26]
    io_testing_round_in_2_0 <= round.io_round_in_2_0 @[Sha3.scala 292:26]
    io_testing_round_in_2_1 <= round.io_round_in_2_1 @[Sha3.scala 293:26]
    io_testing_round_in_3_4 <= round.io_round_in_3_4 @[Sha3.scala 294:26]
    io_testing_round_in_3_0 <= round.io_round_in_3_0 @[Sha3.scala 295:26]
    io_testing_round_in_3_1 <= round.io_round_in_3_1 @[Sha3.scala 296:26]
    io_testing_round_in_3_2 <= round.io_round_in_3_2 @[Sha3.scala 297:26]
    io_testing_round_in_3_3 <= round.io_round_in_3_3 @[Sha3.scala 298:26]
    io_testing_round_in_4_0 <= round.io_round_in_4_0 @[Sha3.scala 299:26]
    io_testing_round_in_4_1 <= round.io_round_in_4_1 @[Sha3.scala 300:26]
    io_testing_round_in_4_2 <= round.io_round_in_4_2 @[Sha3.scala 301:26]
    io_testing_round_in_4_3 <= round.io_round_in_4_3 @[Sha3.scala 302:26]
    io_testing_round_in_4_4 <= round.io_round_in_4_4 @[Sha3.scala 303:26]
    io_testing_round_out_0_0 <= round.io_round_out_0_0 @[Sha3.scala 305:27]
    io_testing_round_out_0_1 <= round.io_round_out_0_1 @[Sha3.scala 306:27]
    io_testing_round_out_0_2 <= round.io_round_out_0_2 @[Sha3.scala 307:27]
    io_testing_round_out_0_3 <= round.io_round_out_0_3 @[Sha3.scala 308:27]
    io_testing_round_out_0_4 <= round.io_round_out_0_4 @[Sha3.scala 309:27]
    io_testing_round_out_1_1 <= round.io_round_out_1_1 @[Sha3.scala 310:27]
    io_testing_round_out_1_2 <= round.io_round_out_1_2 @[Sha3.scala 311:27]
    io_testing_round_out_1_3 <= round.io_round_out_1_3 @[Sha3.scala 312:27]
    io_testing_round_out_1_4 <= round.io_round_out_1_4 @[Sha3.scala 313:27]
    io_testing_round_out_1_0 <= round.io_round_out_1_0 @[Sha3.scala 314:27]
    io_testing_round_out_2_2 <= round.io_round_out_2_2 @[Sha3.scala 315:27]
    io_testing_round_out_2_3 <= round.io_round_out_2_3 @[Sha3.scala 316:27]
    io_testing_round_out_2_4 <= round.io_round_out_2_4 @[Sha3.scala 317:27]
    io_testing_round_out_2_0 <= round.io_round_out_2_0 @[Sha3.scala 318:27]
    io_testing_round_out_2_1 <= round.io_round_out_2_1 @[Sha3.scala 319:27]
    io_testing_round_out_3_4 <= round.io_round_out_3_4 @[Sha3.scala 320:27]
    io_testing_round_out_3_0 <= round.io_round_out_3_0 @[Sha3.scala 321:27]
    io_testing_round_out_3_1 <= round.io_round_out_3_1 @[Sha3.scala 322:27]
    io_testing_round_out_3_2 <= round.io_round_out_3_2 @[Sha3.scala 323:27]
    io_testing_round_out_3_3 <= round.io_round_out_3_3 @[Sha3.scala 324:27]
    io_testing_round_out_4_0 <= round.io_round_out_4_0 @[Sha3.scala 325:27]
    io_testing_round_out_4_1 <= round.io_round_out_4_1 @[Sha3.scala 326:27]
    io_testing_round_out_4_2 <= round.io_round_out_4_2 @[Sha3.scala 327:27]
    io_testing_round_out_4_3 <= round.io_round_out_4_3 @[Sha3.scala 328:27]
    io_testing_round_out_4_4 <= round.io_round_out_4_4 @[Sha3.scala 329:27]
    io_testing_buffer_content_0 <= buffer.io_r_0 @[Sha3.scala 332:31]
    io_testing_buffer_content_1 <= buffer.io_r_1 @[Sha3.scala 333:31]
    io_testing_buffer_content_2 <= buffer.io_r_2 @[Sha3.scala 334:31]
    io_testing_buffer_content_3 <= buffer.io_r_3 @[Sha3.scala 335:31]
    io_testing_buffer_content_4 <= buffer.io_r_4 @[Sha3.scala 336:31]
    io_testing_buffer_content_5 <= buffer.io_r_5 @[Sha3.scala 337:31]
    io_testing_buffer_content_6 <= buffer.io_r_6 @[Sha3.scala 338:31]
    io_testing_buffer_content_7 <= buffer.io_r_7 @[Sha3.scala 339:31]
    io_testing_buffer_content_8 <= buffer.io_r_8 @[Sha3.scala 340:31]
    buffer.clock <= clock
    buffer.reset <= reset
    buffer.io_d_0 <= _GEN_2
    buffer.io_d_1 <= _GEN_2
    buffer.io_d_2 <= _GEN_2
    buffer.io_d_3 <= _GEN_2
    buffer.io_d_4 <= _GEN_2
    buffer.io_d_5 <= _GEN_2
    buffer.io_d_6 <= _GEN_2
    buffer.io_d_7 <= _GEN_2
    buffer.io_d_8 <= _GEN_2
    buffer.io_w_in <= io_w_in_to_buffer @[Sha3.scala 129:31]
    buffer.io_hashReady <= fsm.io_hash_ready @[Sha3.scala 138:35]
    buffer.io_dataRead <= io_data_read @[Sha3.scala 137:35]
    buffer.io_roundReady <= fsm.io_select_for_xor @[Sha3.scala 136:35]
    buffer.io_dataValid <= io_data_valid_to_buffer @[Sha3.scala 139:35]
    fsm.clock <= clock
    fsm.reset <= reset
    fsm.io_buffer_ready <= buffer.io_bufferReady @[Sha3.scala 130:31]
    fsm.io_block_length <= block_length_reg @[Sha3.scala 157:25]
    fsm.io_block_length_valid <= io_block_length_valid_to_fsm @[Sha3.scala 131:31]
    round.clock <= clock
    round.reset <= reset
    round.io_round_in_0_0 <= _GEN_3
    round.io_round_in_1_0 <= _GEN_4
    round.io_round_in_2_0 <= _GEN_5
    round.io_round_in_3_0 <= _GEN_6
    round.io_round_in_4_0 <= _GEN_7
    round.io_round_in_0_1 <= _GEN_8
    round.io_round_in_1_1 <= _GEN_9
    round.io_round_in_2_1 <= _GEN_10
    round.io_round_in_3_1 <= _GEN_11
    round.io_round_in_4_1 <= stateRegister.io_state_out_4_1 @[Sha3.scala 209:25]
    round.io_round_in_0_2 <= stateRegister.io_state_out_0_2 @[Sha3.scala 210:25]
    round.io_round_in_1_2 <= stateRegister.io_state_out_1_2 @[Sha3.scala 211:25]
    round.io_round_in_2_2 <= stateRegister.io_state_out_2_2 @[Sha3.scala 212:25]
    round.io_round_in_3_2 <= stateRegister.io_state_out_3_2 @[Sha3.scala 213:25]
    round.io_round_in_4_2 <= stateRegister.io_state_out_4_2 @[Sha3.scala 214:25]
    round.io_round_in_0_3 <= stateRegister.io_state_out_0_3 @[Sha3.scala 215:25]
    round.io_round_in_1_3 <= stateRegister.io_state_out_1_3 @[Sha3.scala 216:25]
    round.io_round_in_2_3 <= stateRegister.io_state_out_2_3 @[Sha3.scala 217:25]
    round.io_round_in_3_3 <= stateRegister.io_state_out_3_3 @[Sha3.scala 218:25]
    round.io_round_in_4_3 <= stateRegister.io_state_out_4_3 @[Sha3.scala 219:25]
    round.io_round_in_0_4 <= stateRegister.io_state_out_0_4 @[Sha3.scala 220:25]
    round.io_round_in_1_4 <= stateRegister.io_state_out_1_4 @[Sha3.scala 221:25]
    round.io_round_in_2_4 <= stateRegister.io_state_out_2_4 @[Sha3.scala 222:25]
    round.io_round_in_3_4 <= stateRegister.io_state_out_3_4 @[Sha3.scala 223:25]
    round.io_round_in_4_4 <= stateRegister.io_state_out_4_4 @[Sha3.scala 224:25]
    stateRegister.clock <= clock
    stateRegister.reset <= reset
    stateRegister.io_enable <= io_testing_enable_state_register @[Sha3.scala 134:35]
    stateRegister.io_state_in_2_0 <= round.io_round_out_2_0 @[Sha3.scala 228:33]
    stateRegister.io_state_in_3_0 <= round.io_round_out_3_0 @[Sha3.scala 229:33]
    stateRegister.io_state_in_0_0 <= round.io_round_out_0_0 @[Sha3.scala 226:33]
    stateRegister.io_state_in_1_0 <= round.io_round_out_1_0 @[Sha3.scala 227:33]
    stateRegister.io_state_in_4_0 <= round.io_round_out_4_0 @[Sha3.scala 230:33]
    stateRegister.io_state_in_0_1 <= round.io_round_out_0_1 @[Sha3.scala 231:33]
    stateRegister.io_state_in_1_1 <= round.io_round_out_1_1 @[Sha3.scala 232:33]
    stateRegister.io_state_in_2_1 <= round.io_round_out_2_1 @[Sha3.scala 233:33]
    stateRegister.io_state_in_3_1 <= round.io_round_out_3_1 @[Sha3.scala 234:33]
    stateRegister.io_state_in_4_1 <= round.io_round_out_4_2 @[Sha3.scala 235:33]
    stateRegister.io_state_in_0_2 <= round.io_round_out_0_2 @[Sha3.scala 236:33]
    stateRegister.io_state_in_1_2 <= round.io_round_out_1_2 @[Sha3.scala 237:33]
    stateRegister.io_state_in_2_2 <= round.io_round_out_2_2 @[Sha3.scala 238:33]
    stateRegister.io_state_in_3_2 <= round.io_round_out_3_2 @[Sha3.scala 239:33]
    stateRegister.io_state_in_4_2 <= round.io_round_out_4_3 @[Sha3.scala 240:33]
    stateRegister.io_state_in_0_3 <= round.io_round_out_0_3 @[Sha3.scala 241:33]
    stateRegister.io_state_in_1_3 <= round.io_round_out_1_3 @[Sha3.scala 242:33]
    stateRegister.io_state_in_2_3 <= round.io_round_out_2_3 @[Sha3.scala 243:33]
    stateRegister.io_state_in_3_3 <= round.io_round_out_3_3 @[Sha3.scala 244:33]
    stateRegister.io_state_in_4_3 <= round.io_round_out_4_4 @[Sha3.scala 245:33]
    stateRegister.io_state_in_0_4 <= round.io_round_out_0_4 @[Sha3.scala 246:33]
    stateRegister.io_state_in_1_4 <= round.io_round_out_1_4 @[Sha3.scala 247:33]
    stateRegister.io_state_in_2_4 <= round.io_round_out_2_4 @[Sha3.scala 248:33]
    stateRegister.io_state_in_3_4 <= round.io_round_out_3_4 @[Sha3.scala 249:33]
    stateRegister.io_state_in_4_4 <= round.io_round_out_4_4 @[Sha3.scala 250:33]
    block_length_reg <= mux(reset, UInt<64>("h0"), _GEN_0) @[Sha3.scala 126:34 Sha3.scala 126:34]