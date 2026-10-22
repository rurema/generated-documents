# rb_str_catf

### VALUE rb_str_catf(VALUE dst, const char *fmt, ...)

[rb_sprintf](../function/rb_sprintf.md) と同じ書式で整形した結果を、文字列 `dst` の末尾に追加します。
新しい文字列を作る代わりに、指定した文字列に出力します。
`rb_str_append(dst, rb_sprintf(fmt, ...))` と同じ結果になります。

- **param** `dst` -- 追加先の [String](../class/String.md) です。
- **param** `fmt` -- `printf` のような書式文字列です。
- **param** `...` -- 書式に埋め込む値です。
- **return** -- 引数の `dst` です。
- **raise** `TypeError` -- `dst` が [String](../class/String.md) でないとき。
