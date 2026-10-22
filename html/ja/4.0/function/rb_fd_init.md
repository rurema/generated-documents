# rb_fd_init

### void rb_fd_init(rb_fdset_t *f)

`rb_fdset_t` を初期化します。
ほかの `rb_fd_*` を使う前に、必ず初期化してください。
`fd_set` のためのメモリを `malloc(3)` で確保することに相当します。
初期化後の `f` はファイルディスクリプタを持ちません。

- **param** `f` -- 初期化する `rb_fdset_t` です。
