# rb_yield_splat_kw

### VALUE rb_yield_splat_kw(VALUE ary, int kw_splat)

[rb_yield_splat](../function/rb_yield_splat.md) と同じですが、`ary` の最後の要素をキーワード引数として扱うかどうかを `kw_splat` で指定します。

`kw_splat` には `RB_NO_KEYWORDS`(最後はキーワード引数ではない)か `RB_PASS_KEYWORDS`(最後はキーワード引数)を指定します。
`RB_PASS_CALLED_KEYWORDS` はここでは意味を持ちません。

- **param** `ary` -- 展開して渡す引数の配列です。
- **param** `kw_splat` -- キーワード引数の扱いです。
- **return** -- ブロックの評価結果です。
- **raise** `LocalJumpError` -- ブロックが渡されていないとき。
