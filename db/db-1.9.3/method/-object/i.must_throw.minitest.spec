names=must_throw
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/minitest/spec.rd

--- must_throw(tag) -> true
自身を評価中に、与えられたタグが [[m:Kernel.#throw]] された場合、検査にパスしたことになります。

@param tag 自身を評価中に [[m:Kernel.#throw]] されるタグを任意のオブジェクトとして指定します。

@raise MiniTest::Assertion 与えられたタグが [[m:Kernel.#throw]] されなかった場合に発生します。

@see [[m:MiniTest::Assertions#assert_throws]]

