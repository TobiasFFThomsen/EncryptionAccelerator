circuit FSM :
  module FSM :
    input clock : Clock
    input reset : UInt<1>
    output io_hash_ready : UInt<1>
    input io_buffer_ready : UInt<1>
    output io_counter_for_test : UInt<64>
    output io_select_for_xor : UInt<1>
    output io_select_for_result : UInt<1>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 17:32]
    reg countReg : UInt<6>, clock with :
      reset => (UInt<1>("h0"), countReg) @[FSM.scala 18:32]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 20:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 20:27 FSM.scala 21:19 FSM.scala 23:19]
    node _T_1 = eq(stateReg, UInt<2>("h0")) @[FSM.scala 26:17]
    node _GEN_1 = mux(io_buffer_ready, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 27:26 FSM.scala 28:25 FSM.scala 31:25]
    node _GEN_2 = mux(_T_1, _GEN_1, UInt<1>("h0")) @[FSM.scala 26:26 FSM.scala 35:25]
    node _T_2 = eq(stateReg, UInt<2>("h2")) @[FSM.scala 38:17]
    node _GEN_3 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 38:26 FSM.scala 39:26 FSM.scala 41:26]
    node _T_3 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _GEN_4 = mux(io_buffer_ready, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 49:28 FSM.scala 50:18 FSM.scala 52:18]
    node _T_4 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_5 = lt(countReg, UInt<5>("h17")) @[FSM.scala 56:20]
    node _T_6 = add(countReg, UInt<1>("h1")) @[FSM.scala 58:30]
    node _T_7 = tail(_T_6, 1) @[FSM.scala 58:30]
    node _GEN_5 = mux(_T_5, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 56:26 FSM.scala 57:18 FSM.scala 61:18]
    node _GEN_6 = mux(_T_5, _T_7, UInt<1>("h0")) @[FSM.scala 56:26 FSM.scala 58:18 FSM.scala 60:18]
    node _T_8 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_7 = mux(_T_8, UInt<2>("h0"), stateReg) @[Conditional.scala 39:67 FSM.scala 65:16 FSM.scala 17:32]
    node _GEN_8 = mux(_T_8, UInt<1>("h0"), countReg) @[Conditional.scala 39:67 FSM.scala 66:16 FSM.scala 18:32]
    node _GEN_9 = mux(_T_4, _GEN_5, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T_4, _GEN_6, _GEN_8) @[Conditional.scala 39:67]
    node _GEN_11 = mux(_T_3, _GEN_4, _GEN_9) @[Conditional.scala 40:58]
    node _GEN_12 = mux(_T_3, UInt<1>("h0"), _GEN_10) @[Conditional.scala 40:58 FSM.scala 48:16]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= countReg @[FSM.scala 44:23]
    io_select_for_xor <= _GEN_2
    io_select_for_result <= _GEN_3
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_11) @[FSM.scala 17:32 FSM.scala 17:32]
    countReg <= mux(reset, UInt<6>("h0"), _GEN_12) @[FSM.scala 18:32 FSM.scala 18:32]