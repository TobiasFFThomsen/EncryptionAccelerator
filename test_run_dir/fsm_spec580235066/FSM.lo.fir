circuit FSM :
  module FSM :
    input clock : Clock
    input reset : UInt<1>
    input io_start_calculation : UInt<1>
    output io_hash_ready : UInt<1>
    output io_buffer_ready : UInt<1>
    output io_counter_for_test : UInt<64>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 37:32]
    reg countReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), countReg) @[FSM.scala 38:32]
    reg buffer_counter : UInt<1>, clock with :
      reset => (UInt<1>("h0"), buffer_counter) @[FSM.scala 39:32]
    reg round_counter : UInt<1>, clock with :
      reset => (UInt<1>("h0"), round_counter) @[FSM.scala 40:32]
    node _T = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _GEN_0 = mux(io_start_calculation, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 46:33 FSM.scala 47:25 FSM.scala 43:19]
    node _GEN_1 = mux(io_start_calculation, UInt<2>("h1"), stateReg) @[FSM.scala 46:33 FSM.scala 48:18 FSM.scala 37:32]
    node _T_1 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_2 = lt(countReg, UInt<5>("h18")) @[FSM.scala 53:20]
    node _T_3 = add(countReg, UInt<1>("h1")) @[FSM.scala 54:30]
    node _T_4 = tail(_T_3, 1) @[FSM.scala 54:30]
    node _GEN_2 = mux(_T_2, _T_4, countReg) @[FSM.scala 53:26 FSM.scala 54:18 FSM.scala 38:32]
    node _GEN_3 = mux(_T_2, countReg, UInt<1>("h0")) @[FSM.scala 53:26 FSM.scala 55:29 FSM.scala 41:23]
    node _GEN_4 = mux(_T_2, stateReg, UInt<2>("h2")) @[FSM.scala 53:26 FSM.scala 37:32 FSM.scala 57:18]
    node _T_5 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_5 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[Conditional.scala 39:67 FSM.scala 62:23 FSM.scala 42:17]
    node _GEN_6 = mux(_T_1, _GEN_2, countReg) @[Conditional.scala 39:67 FSM.scala 38:32]
    node _GEN_7 = mux(_T_1, _GEN_3, UInt<1>("h0")) @[Conditional.scala 39:67 FSM.scala 41:23]
    node _GEN_8 = mux(_T_1, _GEN_4, stateReg) @[Conditional.scala 39:67 FSM.scala 37:32]
    node _GEN_9 = mux(_T_1, UInt<1>("h0"), _GEN_5) @[Conditional.scala 39:67 FSM.scala 42:17]
    node _GEN_10 = mux(_T, _GEN_0, UInt<1>("h0")) @[Conditional.scala 40:58 FSM.scala 43:19]
    node _GEN_11 = mux(_T, _GEN_1, _GEN_8) @[Conditional.scala 40:58]
    node _GEN_12 = mux(_T, countReg, _GEN_6) @[Conditional.scala 40:58 FSM.scala 38:32]
    node _GEN_13 = mux(_T, UInt<1>("h0"), _GEN_7) @[Conditional.scala 40:58 FSM.scala 41:23]
    node _GEN_14 = mux(_T, UInt<1>("h0"), _GEN_9) @[Conditional.scala 40:58 FSM.scala 42:17]
    io_hash_ready <= _GEN_14
    io_buffer_ready <= _GEN_10
    io_counter_for_test <= _GEN_13
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_11) @[FSM.scala 37:32 FSM.scala 37:32]
    countReg <= mux(reset, UInt<1>("h0"), _GEN_12) @[FSM.scala 38:32 FSM.scala 38:32]
    buffer_counter <= mux(reset, UInt<1>("h0"), buffer_counter) @[FSM.scala 39:32 FSM.scala 39:32 FSM.scala 39:32]
    round_counter <= mux(reset, UInt<1>("h0"), round_counter) @[FSM.scala 40:32 FSM.scala 40:32 FSM.scala 40:32]