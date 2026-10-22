# rb_ary_cat

### VALUE rb_ary_cat(VALUE ary, const VALUE *train, long len)

配列 `ary` の末尾に、`train` が指す `len` 個のオブジェクトを破壊的に追加します。

- **param** `ary` -- 追加先の配列です。
- **param** `train` -- 追加するオブジェクトの C の配列です。
- **param** `len` -- `train` の要素数です。
- **return** -- 引数の `ary` です。
- **raise** `IndexError` -- `len` が大きすぎるとき。
- **raise** `FrozenError` -- `ary` が凍結されているとき。
