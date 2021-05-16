circuit FSM :
  module FSM :
    input clock : Clock
    input reset : UInt<1>
    input io_start_calculation : UInt<1>
    output io_hash_ready : UInt<1>
    output io_counter_for_test : UInt<64>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 37:32]
    reg countReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), countReg) @[FSM.scala 38:32]
    reg buffer_counter : UInt<1>, clock with :
      reset => (UInt<1>("h0"), buffer_counter) @[FSM.scala 39:32]
    reg round_counter : UInt<1>, clock with :
      reset => (UInt<1>("h0"), round_counter) @[FSM.scala 40:32]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 53:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 53:27 FSM.scala 54:19 FSM.scala 56:19]
    node _T_1 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _GEN_1 = mux(io_start_calculation, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 62:33 FSM.scala 63:18 FSM.scala 65:18]
    node _T_2 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_3 = lt(countReg, UInt<5>("h18")) @[FSM.scala 69:20]
    node _T_4 = add(countReg, UInt<1>("h1")) @[FSM.scala 71:30]
    node _T_5 = tail(_T_4, 1) @[FSM.scala 71:30]
    node _GEN_2 = mux(_T_3, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 69:26 FSM.scala 70:18 FSM.scala 74:18]
    node _GEN_3 = mux(_T_3, _T_5, UInt<1>("h0")) @[FSM.scala 69:26 FSM.scala 71:18 FSM.scala 73:18]
    node _T_6 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_4 = mux(_T_6, UInt<1>("h0"), countReg) @[Conditional.scala 39:67 FSM.scala 78:16 FSM.scala 38:32]
    node _GEN_5 = mux(_T_2, _GEN_2, stateReg) @[Conditional.scala 39:67 FSM.scala 37:32]
    node _GEN_6 = mux(_T_2, _GEN_3, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_1, _GEN_1, _GEN_5) @[Conditional.scala 40:58]
    node _GEN_8 = mux(_T_1, countReg, _GEN_6) @[Conditional.scala 40:58 FSM.scala 38:32]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= countReg @[FSM.scala 59:23]
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_7) @[FSM.scala 37:32 FSM.scala 37:32]
    countReg <= mux(reset, UInt<1>("h0"), _GEN_8) @[FSM.scala 38:32 FSM.scala 38:32]
    buffer_counter <= mux(reset, UInt<1>("h0"), buffer_counter) @[FSM.scala 39:32 FSM.scala 39:32 FSM.scala 39:32]
    round_counter <= mux(reset, UInt<1>("h0"), round_counter) @[FSM.scala 40:32 FSM.scala 40:32 FSM.scala 40:32]