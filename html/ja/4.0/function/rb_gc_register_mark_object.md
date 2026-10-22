# rb_gc_register_mark_object

### void rb_gc_register_mark_object(VALUE object)

`object` を GC から保護します。
どこからも参照されていないオブジェクトも、GC に回収されなくなります。
`object` は移動もされなくなります。

関連する関数に [rb_gc_register_address](../function/rb_gc_register_address.md) があります。

- **param** `object` -- 保護する Ruby のオブジェクトです。
