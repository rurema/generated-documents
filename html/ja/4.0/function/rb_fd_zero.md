# rb_fd_zero

### void rb_fd_zero(rb_fdset_t *f)

`f` からすべてのファイルディスクリプタを取り除きます。
`FD_ZERO(3)` に相当します。

- **param** `f` -- 空にする `rb_fdset_t` です。
