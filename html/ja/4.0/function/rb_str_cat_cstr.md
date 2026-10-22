# rb_str_cat_cstr

### VALUE rb_str_cat_cstr(VALUE dst, const char *src)

文字列 `dst` の末尾に、C の文字列 `src` を破壊的に追加します。
`rb_str_cat(dst, src, strlen(src))` と同じです。
`dst` は [String](../class/String.md) でなければいけません。
`src` は `NULL` であってはいけません。

- **param** `dst` -- 追加先の [String](../class/String.md) です。
- **param** `src` -- 追加する C の文字列です。
- **return** -- 引数の `dst` です。
- **raise** `ArgumentError` -- 結果の文字列が大きすぎるとき。
- **raise** `ArgumentError` -- `src` が `NULL` のとき。
