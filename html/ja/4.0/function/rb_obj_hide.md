# rb_obj_hide

### VALUE rb_obj_hide(VALUE obj)

オブジェクトを Ruby のコードから見えなくします。
`RBasic::klass` フィールドを消去し、オブジェクトを内部オブジェクトにします。
[ObjectSpace?.each_object](../method/ObjectSpace/m/each_object.md) ではこのオブジェクトを列挙できなくなります。
同時に、そのオブジェクトに対してメソッドを呼び出す手段も失われます。

GC の管理下に置いたまま、内部のデータ構造を Ruby から見えなくしたいときに便利です。
元に戻すには [rb_obj_reveal](../function/rb_obj_reveal.md) を使います。

- **param** `obj` -- 隠す Ruby のオブジェクトです。
- **return** -- 引数の `obj` です。
