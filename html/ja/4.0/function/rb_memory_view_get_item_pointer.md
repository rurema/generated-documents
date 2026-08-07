# rb_memory_view_get_item_pointer

### void * rb_memory_view_get_item_pointer(rb_memory_view_t *view, const ssize_t *indices)

`indices` が示す要素の位置を計算します。
`indices` の長さは `view->ndim` と等しくなければなりません。
