;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit catTest : 
  module catTest : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip cat_in : UInt<64>[2], cat_out : UInt<256>}
    
    node _T = cat(io.cat_in[0], io.cat_in[1]) @[Cat.scala 30:58]
    io.cat_out <= _T @[catTest.scala 11:14]
    
