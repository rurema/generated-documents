# ruby_run_node

### int ruby_run_node(void *n)

コンパイル済みのソースを実行し、このプロセスを終了します。
`n` には `rb_load_file` などで得た、中身の見えない「ノード」のポインタを渡します。

- **param** `n` -- 実行するソースを表す、中身の見えないノードのポインタです。
- **return** -- ソースの実行に成功すると `EXIT_SUCCESS` です。エラーが起きたときは `EXIT_FAILURE` です。
