circuit catTest :
  module catTest :
    input clock : Clock
    input reset : UInt<1>
    input io_cat_in_0 : UInt<64>
    input io_cat_in_1 : UInt<64>
    input io_cat_in_2 : UInt<64>
    input io_cat_in_3 : UInt<64>
    output io_cat_out : UInt<256>

    node lo = cat(io_cat_in_2, io_cat_in_3) @[Cat.scala 30:58]
    node hi = cat(io_cat_in_0, io_cat_in_1) @[Cat.scala 30:58]
    node _T = cat(hi, lo) @[Cat.scala 30:58]
    io_cat_out <= _T @[catTest.scala 11:14]