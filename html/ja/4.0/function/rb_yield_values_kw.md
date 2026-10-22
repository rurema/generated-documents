# rb_yield_values_kw

### VALUE rb_yield_values_kw(int n, const VALUE *argv, int kw_splat)

[rb_yield_values2](../function/rb_yield_values2.md) と同じですが、`argv` の最後の要素をキーワード引数として扱うかどうかを `kw_splat` で指定します。

`kw_splat` には `RB_NO_KEYWORDS`(最後はキーワード引数ではない)か `RB_PASS_KEYWORDS`(最後はキーワード引数)を指定します。
`RB_PASS_CALLED_KEYWORDS` はここでは意味を持ちません。

- **param** `n` -- ブロックに渡す引数の個数です。
- **param** `argv` -- ブロックに渡す引数の配列です。
- **param** `kw_splat` -- キーワード引数の扱いです。
- **return** -- ブロックの評価結果です。
- **raise** `LocalJumpError` -- ブロックが渡されていないとき。
