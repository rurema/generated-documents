# rb_yield_splat

### VALUE rb_yield_splat(VALUE ary)

配列 `ary` の要素を、それぞれ別の引数としてブロックに `yield` します。
[rb_yield_values2](../function/rb_yield_values2.md) と同じですが、引数を Ruby の配列で指定します。

- **param** `ary` -- 展開して渡す引数の配列です。
- **return** -- ブロックの評価結果です。
- **raise** `LocalJumpError` -- ブロックが渡されていないとき。
