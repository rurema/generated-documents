names=must_be_close_to,must_be_within_delta
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/minitest/spec.rd

--- must_be_within_delta(expected, delta = 0.001) -> true
--- must_be_close_to(expected, delta = 0.001) -> true

自身と期待値の差の絶対値が与えられた絶対誤差以下である場合、検査にパスしたことになります。

@param expected 期待値を指定します。

@param delta 許容する絶対誤差を指定します。

@raise MiniTest::Assertion 与えられた期待値と実際の値の差の絶対値が与えられた差分を越える場合に発生します。

@see [[m:MiniTest::Assertions#assert_in_delta]]

