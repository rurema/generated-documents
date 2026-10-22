# rb_warn

### void rb_warn(const char *fmt, ...)

`fmt` に従って整形した警告メッセージを出力します。
`$VERBOSE` が `nil` のときは何もしません。
`$VERBOSE` が `false` でも出力される点が [rb_warning](../function/rb_warning.md) と異なります。

- **param** `fmt` -- [rb_sprintf](../function/rb_sprintf.md) と互換の書式文字列です。
- **param** `...` -- 書式に埋め込む値です。
