# rb_fd_clr

### void rb_fd_clr(int fd, rb_fdset_t *f)

ファイルディスクリプタ `fd` を、`f` から取り除きます。
`FD_CLR(3)` に相当します。

- **param** `fd` -- 取り除くファイルディスクリプタです。
- **param** `f` -- `fd` を持つ `rb_fdset_t` です。
