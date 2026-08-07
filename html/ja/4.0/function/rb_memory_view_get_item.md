# rb_memory_view_get_item

### VALUE rb_memory_view_get_item(rb_memory_view_t *view, const ssize_t *indices)

`indices` が示す要素の Ruby オブジェクトとしての表現を返します。
必要であれば `view->item_desc` を初期化します。
この関数は [rb_memory_view_get_item_pointer](../function/rb_memory_view_get_item_pointer.md) を使います。
