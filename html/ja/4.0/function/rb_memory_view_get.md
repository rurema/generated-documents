# rb_memory_view_get

### bool rb_memory_view_get(VALUE obj, rb_memory_view_t *view, int flags)

`obj` が `flags` に適合するメモリビューのエクスポートをサポートする場合、 `view` をメモリビューの情報で埋めて `true` を返します。その場合、 `view->obj` の参照カウントが増えます。

`obj` と `flags` の組み合わせがメモリビューをエクスポートできない場合、 `false` を返します。この場合 `view` の内容は変わりません。

エクスポートされたメモリビューは不要になった時に [rb_memory_view_release](../function/rb_memory_view_release.md) で解放しなければなりません。

`flags` は以下をビット OR で組み合わせて指定します。

```c
RUBY_MEMORY_VIEW_SIMPLE            = 0
RUBY_MEMORY_VIEW_WRITABLE          = (1<<0)
RUBY_MEMORY_VIEW_FORMAT            = (1<<1)
RUBY_MEMORY_VIEW_MULTI_DIMENSIONAL = (1<<2)
RUBY_MEMORY_VIEW_STRIDES           = (1<<3) | RUBY_MEMORY_VIEW_MULTI_DIMENSIONAL
RUBY_MEMORY_VIEW_ROW_MAJOR         = (1<<4) | RUBY_MEMORY_VIEW_STRIDES
RUBY_MEMORY_VIEW_COLUMN_MAJOR      = (1<<5) | RUBY_MEMORY_VIEW_STRIDES
RUBY_MEMORY_VIEW_ANY_CONTIGUOUS    = RUBY_MEMORY_VIEW_ROW_MAJOR | RUBY_MEMORY_VIEW_COLUMN_MAJOR
RUBY_MEMORY_VIEW_INDIRECT          = (1<<6) | RUBY_MEMORY_VIEW_STRIDES
```

`rb_memory_view_entry_t->get_func` が呼ばれます。
