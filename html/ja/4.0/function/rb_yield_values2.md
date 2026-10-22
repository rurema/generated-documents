# rb_yield_values2

### VALUE rb_yield_values2(int n, const VALUE *argv)

`n` 個の引数をブロックに `yield` します。
[rb_yield_values](../function/rb_yield_values.md) と同じですが、引数を C の配列 `argv` で渡します。

- **param** `n` -- ブロックに渡す引数の個数です。
- **param** `argv` -- ブロックに渡す引数の配列です。
- **return** -- ブロックの評価結果です。
- **raise** `LocalJumpError` -- ブロックが渡されていないとき。
