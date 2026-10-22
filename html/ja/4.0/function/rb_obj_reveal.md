# rb_obj_reveal

### VALUE rb_obj_reveal(VALUE obj, VALUE klass)

[rb_obj_hide](../function/rb_obj_hide.md) で隠したオブジェクトを、再び見えるようにします。
`RBasic::klass` を `klass` に戻します。
`obj` が本来属していたクラスを、呼び出し側が正しく渡してください。
この関数をクラス情報の変更に使ってはいけません。

- **param** `obj` -- 隠されていた Ruby のオブジェクトです。
- **param** `klass` -- `obj` のクラスです。
- **return** -- 引数の `obj` です。
