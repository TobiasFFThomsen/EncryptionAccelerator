;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit FSM : 
  module FSM : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip start_calculation : UInt<1>, hash_ready : UInt<1>, buffer_ready : UInt<1>, counter_for_test : UInt<64>}
    
    reg stateReg : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[FSM.scala 37:32]
    reg countReg : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[FSM.scala 38:32]
    reg buffer_counter : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[FSM.scala 39:32]
    reg round_counter : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[FSM.scala 40:32]
    io.hash_ready <= UInt<1>("h00") @[FSM.scala 41:17]
    io.buffer_ready <= UInt<1>("h00") @[FSM.scala 42:19]
    node _T = eq(UInt<2>("h00"), stateReg) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      io.counter_for_test <= UInt<1>("h00") @[FSM.scala 45:27]
      when io.start_calculation : @[FSM.scala 46:33]
        io.buffer_ready <= UInt<1>("h01") @[FSM.scala 47:25]
        stateReg <= UInt<2>("h01") @[FSM.scala 48:18]
        skip @[FSM.scala 46:33]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<2>("h01"), stateReg) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _T_2 = lt(countReg, UInt<5>("h018")) @[FSM.scala 53:20]
        when _T_2 : @[FSM.scala 53:26]
          node _T_3 = add(countReg, UInt<1>("h01")) @[FSM.scala 54:30]
          node _T_4 = tail(_T_3, 1) @[FSM.scala 54:30]
          countReg <= _T_4 @[FSM.scala 54:18]
          io.counter_for_test <= countReg @[FSM.scala 55:29]
          skip @[FSM.scala 53:26]
        else : @[FSM.scala 56:18]
          stateReg <= UInt<2>("h02") @[FSM.scala 57:18]
          skip @[FSM.scala 56:18]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_5 = eq(UInt<2>("h02"), stateReg) @[Conditional.scala 37:30]
        when _T_5 : @[Conditional.scala 39:67]
          io.hash_ready <= UInt<1>("h01") @[FSM.scala 62:23]
          skip @[Conditional.scala 39:67]
    
