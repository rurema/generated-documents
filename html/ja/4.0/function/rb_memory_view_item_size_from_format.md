# rb_memory_view_item_size_from_format

### ssize_t rb_memory_view_item_size_from_format(const char *format, const char **err)

要素が使用するバイト数を計算します。

計算に失敗した場合は、フォーマットでの失敗した位置を `err` に保存し、 `-1` を返します。
