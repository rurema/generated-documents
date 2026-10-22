# rb_io_wait_writable

### int rb_io_wait_writable(int fd)

ファイルディスクリプタ `fd` が書き込み可能になるまでブロックします。
[rb_io_wait_readable](../function/rb_io_wait_readable.md) の書き込み版です。

この関数は非推奨です。
新しく書くコードでは、`rb_io_maybe_wait_writable` を使ってください。

- **param** `fd` -- 待つファイルディスクリプタです。
- **return** -- 書き込みできるようになったときは真 (1)、回復できないエラーのときは偽 (0) です。
- **raise** `IOError` -- `fd` が不正なファイルディスクリプタのとき。
