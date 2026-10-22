# rb_fd_term

### void rb_fd_term(rb_fdset_t *f)

`rb_fdset_t` を破棄し、使っていたメモリなどの資源を解放します。
`fd_set` のメモリを `free(3)` で解放することに相当します。
再び使うには、[rb_fd_init](../function/rb_fd_init.md) で初期化し直す必要があります。
破棄後の `f` はファイルディスクリプタを持ちません。

- **param** `f` -- 破棄する `rb_fdset_t` です。
