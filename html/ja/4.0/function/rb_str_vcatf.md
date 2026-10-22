# rb_str_vcatf

### VALUE rb_str_vcatf(VALUE dst, const char *fmt, va_list ap)

[rb_str_catf](../function/rb_str_catf.md) と同じですが、値を `va_list` で渡します。
[rb_vsprintf](../function/rb_vsprintf.md) の結果を、新しい文字列を作る代わりに、指定した文字列の末尾に追加します。
`rb_str_append(dst, rb_vsprintf(fmt, ap))` と同じ結果になります。

- **param** `dst` -- 追加先の [String](../class/String.md) です。
- **param** `fmt` -- `printf` のような書式文字列です。
- **param** `ap` -- 書式に埋め込む値です。
- **return** -- 引数の `dst` です。
- **raise** `TypeError` -- `dst` が [String](../class/String.md) でないとき。
