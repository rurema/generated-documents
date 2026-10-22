# rb_vsprintf

### VALUE rb_vsprintf(const char *fmt, va_list ap)

[rb_sprintf](../function/rb_sprintf.md) と同じですが、値を `va_list` で渡します。
`fmt` に従って整形した文字列を、新しい [String](../class/String.md) として作成します。

- **param** `fmt` -- `printf` のような書式文字列です。
- **param** `ap` -- 書式に埋め込む値です。
- **return** -- 整形した結果の新しい [String](../class/String.md) です。
