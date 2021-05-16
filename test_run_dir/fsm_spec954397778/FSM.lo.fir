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
      reset => (UInt<1>("h0"), stateReg) @[FSM.scala 37:32]
    reg countReg : UInt<6>, clock with :
      reset => (UInt<1>("h0"), countReg) @[FSM.scala 38:32]
    node _T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 53:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[FSM.scala 53:27 FSM.scala 54:19 FSM.scala 56:19]
    node _T_1 = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    node _T_2 = and(io_start_calculation, io_buffer_ready) @[FSM.scala 66:33]
    node _GEN_1 = mux(_T_2, UInt<2>("h1"), UInt<2>("h0")) @[FSM.scala 66:52 FSM.scala 68:18 FSM.scala 70:18]
    node _T_3 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
    node _T_4 = lt(countReg, UInt<5>("h18")) @[FSM.scala 76:20]
    node _T_5 = add(countReg, UInt<1>("h1")) @[FSM.scala 78:30]
    node _T_6 = tail(_T_5, 1) @[FSM.scala 78:30]
    node _GEN_2 = mux(_T_4, UInt<2>("h1"), UInt<2>("h2")) @[FSM.scala 76:26 FSM.scala 77:18 FSM.scala 81:18]
    node _GEN_3 = mux(_T_4, _T_6, UInt<1>("h0")) @[FSM.scala 76:26 FSM.scala 78:18 FSM.scala 80:18]
    node _T_7 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
    node _GEN_4 = mux(_T_7, UInt<2>("h0"), stateReg) @[Conditional.scala 39:67 FSM.scala 86:16 FSM.scala 37:32]
    node _GEN_5 = mux(_T_7, UInt<1>("h0"), countReg) @[Conditional.scala 39:67 FSM.scala 87:16 FSM.scala 38:32]
    node _GEN_6 = mux(_T_3, _GEN_2, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_3, _GEN_3, _GEN_5) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T_1, UInt<1>("h0"), _GEN_7) @[Conditional.scala 40:58 FSM.scala 63:16]
    node _GEN_9 = mux(_T_1, _GEN_1, _GEN_6) @[Conditional.scala 40:58]
    io_hash_ready <= _GEN_0
    io_counter_for_test <= countReg @[FSM.scala 59:23]
    io_select_for_xor <= UInt<1>("h1") @[FSM.scala 58:21]
    stateReg <= mux(reset, UInt<2>("h0"), _GEN_9) @[FSM.scala 37:32 FSM.scala 37:32]
    countReg <= mux(reset, UInt<6>("h0"), _GEN_8) @[FSM.scala 38:32 FSM.scala 38:32]