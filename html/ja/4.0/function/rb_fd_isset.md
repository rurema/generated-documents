# rb_fd_isset

### int rb_fd_isset(int fd, const rb_fdset_t *f)

ファイルディスクリプタ `fd` が `f` に含まれているかどうかを調べます。
`FD_ISSET(3)` に相当します。

- **param** `fd` -- 調べるファイルディスクリプタです。
- **param** `f` -- 調べる `rb_fdset_t` です。
- **return** -- 含まれていれば `1`、含まれていなければ `0` です。
