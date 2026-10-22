# rb_fd_set

### void rb_fd_set(int fd, rb_fdset_t *f)

ファイルディスクリプタ `fd` を、`f` に追加します。
`FD_SET(3)` に相当します。

- **param** `fd` -- 追加するファイルディスクリプタです。
- **param** `f` -- 追加先の `rb_fdset_t` です。
