# rb_check_arity

### int rb_check_arity(int argc, int min, int max)

引数の個数 `argc` が `min` 以上 `max` 以下の範囲にあることを検査します。
`max` に `UNLIMITED_ARGUMENTS` を指定すると、上限は検査しません。
範囲外のときは [ArgumentError](../class/ArgumentError.md) が発生します。
[rb_scan_args](../function/rb_scan_args.md) が使えるときは、そちらのほうが強力で分かりやすいので、そちらを使ってください。

- **param** `argc` -- 引数の個数です。
- **param** `min` -- 許される最小の個数です。
- **param** `max` -- 許される最大の個数です。`UNLIMITED_ARGUMENTS` なら上限はありません。
- **return** -- 引数の `argc` です。
- **raise** `ArgumentError` -- `argc` が範囲外のとき。
