circuit FSM :
  module FSM :
    input clock : Clock
    input reset : UInt<1>
    input io_start_calculation : UInt<1>
    output io_hash_ready : UInt<1>
    input io_buffer_ready : UInt<1>
    output io_counter_for_test : UInt<64>
    output io_select_for_xor : UInt<1>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 16:32]
    reg countReg : UInt<6>, clock with :
      reset => (UInt<1>("h0"), countReg) @[FSM.scala 17:32]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 19:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 19:27 FSM.scala 20:19 FSM.scala 22:19]
    node _T_1 = eq(stateReg, UInt<2>("h0")) @[FSM.scala 25:17]
    node _T_2 = and(io_start_calculation, io_buffer_ready) @[FSM.scala 26:31]
    node _GEN_1 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 26:50 FSM.scala 27:25 FSM.scala 30:25]
    node _GEN_2 = mux(_T_1, _GEN_1, UInt<1>("h0")) @[FSM.scala 25:26 FSM.scala 34:25]
    node _T_3 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _T_4 = and(io_start_calculation, io_buffer_ready) @[FSM.scala 42:33]
    node _GEN_3 = mux(_T_4, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 42:52 FSM.scala 43:18 FSM.scala 45:18]
    node _T_5 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_6 = lt(countReg, UInt<5>("h17")) @[FSM.scala 49:20]
    node _T_7 = add(countReg, UInt<1>("h1")) @[FSM.scala 51:30]
    node _T_8 = tail(_T_7, 1) @[FSM.scala 51:30]
    node _GEN_4 = mux(_T_6, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 49:26 FSM.scala 50:18 FSM.scala 54:18]
    node _GEN_5 = mux(_T_6, _T_8, UInt<1>("h0")) @[FSM.scala 49:26 FSM.scala 51:18 FSM.scala 53:18]
    node _T_9 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_6 = mux(_T_9, UInt<2>("h0"), stateReg) @[Conditional.scala 39:67 FSM.scala 58:16 FSM.scala 16:32]
    node _GEN_7 = mux(_T_9, UInt<1>("h0"), countReg) @[Conditional.scala 39:67 FSM.scala 59:16 FSM.scala 17:32]
    node _GEN_8 = mux(_T_5, _GEN_4, _GEN_6) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T_5, _GEN_5, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T_3, _GEN_3, _GEN_8) @[Conditional.scala 40:58]
    node _GEN_11 = mux(_T_3, UInt<1>("h0"), _GEN_9) @[Conditional.scala 40:58 FSM.scala 41:16]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= countReg @[FSM.scala 37:23]
    io_select_for_xor <= _GEN_2
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_10) @[FSM.scala 16:32 FSM.scala 16:32]
    countReg <= mux(reset, UInt<6>("h0"), _GEN_11) @[FSM.scala 17:32 FSM.scala 17:32]