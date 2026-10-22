# rb_funcall_with_block_kw

### VALUE rb_funcall_with_block_kw(VALUE recv, ID mid, int argc, const VALUE *argv, VALUE procval, int kw_splat)

[rb_funcall_with_block](../function/rb_funcall_with_block.md) と同じですが、`argv` の最後の要素をキーワード引数として扱うかどうかを `kw_splat` で指定します。

`kw_splat` には次のどれかを指定します。

- `RB_NO_KEYWORDS` -- `argv` の最後はキーワード引数ではありません。
- `RB_PASS_KEYWORDS` -- `argv` の最後はキーワード引数です。
- `RB_PASS_CALLED_KEYWORDS` -- 現在のメソッドがキーワード引数付きで呼ばれていれば、キーワード引数を渡します。

- **param** `recv` -- メソッドのレシーバです。
- **param** `mid` -- 呼び出すメソッドの名前です。
- **param** `argc` -- `argv` の要素数です。
- **param** `argv` -- メソッドに渡す引数の配列です。
- **param** `procval` -- ブロックとして渡す [Proc](../class/Proc.md)、シンボル、または `nil` です。
- **param** `kw_splat` -- キーワード引数の扱いです。
- **return** -- 呼び出したメソッドの返り値です。
- **raise** `NoMethodError` -- メソッドがないとき、またはメソッドが private か protected のとき。
- **raise** `Exception` -- 呼び出したメソッドの中で例外が発生したとき。
