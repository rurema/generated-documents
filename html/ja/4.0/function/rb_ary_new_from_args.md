# rb_ary_new_from_args

### VALUE rb_ary_new_from_args(long n, ...)

可変長引数で渡されたオブジェクトから、要素数 `n` の配列を作成します。

- **param** `n` -- 続く引数の個数です。
- **param** `...` -- 配列に入れる Ruby のオブジェクトです。`n` 個渡します。
- **return** -- 要素数 `n` の新しい配列です。
