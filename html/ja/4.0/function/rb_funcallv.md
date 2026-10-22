# rb_funcallv

### VALUE rb_funcallv(VALUE recv, ID mid, int argc, const VALUE *argv)

`recv` のメソッド `mid` を、引数を C の配列で渡して呼び出します。
private や protected のメソッドも呼び出せます。
[rb_funcall](../function/rb_funcall.md) とは、引数の渡し方だけが異なります。

- **param** `recv` -- メソッドのレシーバです。
- **param** `mid` -- 呼び出すメソッドの名前です。
- **param** `argc` -- `argv` の要素数です。
- **param** `argv` -- メソッドに渡す引数の配列です。
- **return** -- 呼び出したメソッドの返り値です。
- **raise** `NoMethodError` -- メソッドがないとき。
- **raise** `Exception` -- 呼び出したメソッドの中で例外が発生したとき。
