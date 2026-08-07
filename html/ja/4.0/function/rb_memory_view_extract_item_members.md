# rb_memory_view_extract_item_members

### VALUE rb_memory_view_extract_item_members(const void *ptr, const rb_memory_view_item_component_t *members, const size_t n_members)

要素メンバからなるオブジェクトを返します。

要素が単一メンバの場合、戻り値は単一のオブジェクトになります。

要素が複数メンバからなる場合、 [Array](../class/Array.md) を返します。
