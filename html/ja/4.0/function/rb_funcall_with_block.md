# rb_funcall_with_block

### VALUE rb_funcall_with_block(VALUE recv, ID mid, int argc, const VALUE *argv, VALUE procval)

[rb_funcallv_public](../function/rb_funcallv_public.md) と同じですが、ブロックを渡せます。
ブロックには [Proc](../class/Proc.md) のインスタンスを指定します。
`to_proc` による変換が必要なときは、この関数に渡す前に済ませてください。
ただし `nil` とシンボルは特別に受け付けます。

- **param** `recv` -- メソッドのレシーバです。
- **param** `mid` -- 呼び出すメソッドの名前です。
- **param** `argc` -- `argv` の要素数です。
- **param** `argv` -- メソッドに渡す引数の配列です。
- **param** `procval` -- ブロックとして渡す [Proc](../class/Proc.md)、シンボル、または `nil` です。
- **return** -- 呼び出したメソッドの返り値です。
- **raise** `NoMethodError` -- メソッドがないとき、またはメソッドが private か protected のとき。
- **raise** `Exception` -- 呼び出したメソッドの中で例外が発生したとき。
