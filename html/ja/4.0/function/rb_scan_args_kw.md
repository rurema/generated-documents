# rb_scan_args_kw

### int rb_scan_args_kw(int kw_splat, int argc, const VALUE *argv, const char *fmt, ...)

[rb_scan_args](../function/rb_scan_args.md) と同じように、`argc` と `argv` の引数を `fmt` の書式に従って、続く VALUE への参照に格納します。
キーワード引数が渡されているかどうかを、Ruby からの呼び出しで決めるのではなく、`kw_splat` で指定する点が異なります。
`fmt` の書式は [rb_scan_args](../function/rb_scan_args.md) と同じです。

`kw_splat` には次のどれかを指定します。

- `RB_SCAN_ARGS_PASS_CALLED_KEYWORDS` -- [rb_scan_args](../function/rb_scan_args.md) と同じ動作です。
- `RB_SCAN_ARGS_KEYWORDS` -- 最後の引数をキーワード引数のハッシュとして扱います。
- `RB_SCAN_ARGS_LAST_HASH_KEYWORDS` -- 最後の引数がハッシュならキーワード引数として扱い、そうでなければ扱いません。

- **param** `kw_splat` -- キーワード引数の扱いです。
- **param** `argc` -- `argv` の要素数です。
- **param** `argv` -- 解析する引数の配列です。
- **param** `fmt` -- 引数の形式を表す書式文字列です。
- **param** `...` -- 値を格納する変数への参照です。
- **return** -- 実際に解析した引数の個数です。
- **raise** `fatal` -- `fmt` の形式が不正なとき。
- **raise** `ArgumentError` -- 引数の個数が合わないとき。
