# rb_funcallv_public

### VALUE rb_funcallv_public(VALUE recv, ID mid, int argc, const VALUE *argv)

`recv` のメソッド `mid` を、引数を C の配列で渡して呼び出します。
[rb_funcallv](../function/rb_funcallv.md) と異なり、public のメソッドだけを呼び出せます。
Ruby の [Object#public_send](../method/Object/i/public_send.md) に近い動作です。

- **param** `recv` -- メソッドのレシーバです。
- **param** `mid` -- 呼び出すメソッドの名前です。
- **param** `argc` -- `argv` の要素数です。
- **param** `argv` -- メソッドに渡す引数の配列です。
- **return** -- 呼び出したメソッドの返り値です。
- **raise** `NoMethodError` -- メソッドがないとき。
- **raise** `NoMethodError` -- メソッドが private か protected のとき。
- **raise** `Exception` -- 呼び出したメソッドの中で例外が発生したとき。
