circuit catTest :
  module catTest :
    input clock : Clock
    input reset : UInt<1>
    input io_cat_in_0 : UInt<64>
    input io_cat_in_1 : UInt<64>
    output io_cat_out : UInt<256>

    node _T = cat(io_cat_in_0, io_cat_in_1) @[Cat.scala 30:58]
    io_cat_out <= _T @[catTest.scala 11:14]