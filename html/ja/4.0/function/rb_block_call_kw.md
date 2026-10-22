# rb_block_call_kw

### VALUE rb_block_call_kw(VALUE obj, ID mid, int argc, const VALUE *argv, rb_block_call_func_t proc, VALUE data2, int kw_splat)

[rb_block_call](../function/rb_block_call.md) と同じですが、`argv` の最後の要素をキーワード引数として扱うかどうかを `kw_splat` で指定します。

`kw_splat` には次のどれかを指定します。

- `RB_NO_KEYWORDS` -- `argv` の最後はキーワード引数ではありません。
- `RB_PASS_KEYWORDS` -- `argv` の最後はキーワード引数です。
- `RB_PASS_CALLED_KEYWORDS` -- 現在のメソッドがキーワード引数付きで呼ばれていれば、キーワード引数を渡します。

- **param** `obj` -- メソッドのレシーバです。
- **param** `mid` -- 呼び出すメソッドの名前です。
- **param** `argc` -- キーワード引数を含めた引数の個数です。
- **param** `argv` -- メソッドに渡す引数の配列です。
- **param** `proc` -- ブロックとして働く関数です。
- **param** `data2` -- `proc` の第 2 引数として渡される値です。
- **param** `kw_splat` -- キーワード引数の扱いです。
- **return** -- `obj` のメソッド `mid` の返り値です。
