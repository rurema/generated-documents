# rb_memory_view_available_p

### bool rb_memory_view_available_p(VALUE obj)

`obj` がメモリビューのエクスポートをサポートしていれば `true` を返します。サポートしていない場合は `false` を返します。

この関数が `true` を返しても [rb_memory_view_get](../function/rb_memory_view_get.md) 関数が成功するとは限りません。

`rb_memory_view_entry_t->available_p_func` が呼ばれます。
