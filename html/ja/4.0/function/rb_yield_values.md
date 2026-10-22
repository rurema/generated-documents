# rb_yield_values

### VALUE rb_yield_values(int n, ...)

`n` 個の引数をブロックに `yield` します。
[rb_yield](../function/rb_yield.md) と同じですが、引数を可変長で渡します。
Ruby の引数 1 つにつき、C の引数 1 つを使います。

- **param** `n` -- ブロックに渡す引数の個数です。
- **param** `...` -- ブロックに渡す引数です。`n` 個渡します。
- **return** -- ブロックの評価結果です。
- **raise** `LocalJumpError` -- ブロックが渡されていないとき。
