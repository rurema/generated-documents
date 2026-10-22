# rb_warning

### void rb_warning(const char *fmt, ...)

`fmt` に従って整形した警告メッセージを出力します。
`$VERBOSE` が真のときだけ出力し、それ以外では何もしません。

メッセージは [Warning.warn](../method/Warning/s/warn.md) に渡されます。
標準では、[Warning.warn](../method/Warning/s/warn.md) が標準エラー出力へ書き出します。

- **param** `fmt` -- [rb_sprintf](../function/rb_sprintf.md) と互換の書式文字列です。
- **param** `...` -- 書式に埋め込む値です。
