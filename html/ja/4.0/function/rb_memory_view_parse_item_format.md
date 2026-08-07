# rb_memory_view_parse_item_format

### ssize_t rb_memory_view_parse_item_format(const char *format, rb_memory_view_item_component_t **members, size_t *n_members, const char **err)

`format` を分解して `members` を埋め、 `members` の数を `n_members` に設定します。

全体のバイトサイズを返します。

処理に失敗した場合はエラーのあった文字を `err` に設定し、 `-1` を返します。
