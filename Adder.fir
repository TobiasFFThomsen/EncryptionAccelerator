;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Adder : 
  module Adder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip r_from_round : UInt<576>, flip r_from_inp : UInt<576>, res : UInt<576>}
    
    node _T = add(io.r_from_round, io.r_from_inp) @[Adder.scala 10:28]
    node _T_1 = tail(_T, 1) @[Adder.scala 10:28]
    io.res <= _T_1 @[Adder.scala 10:10]
    
