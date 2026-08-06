# Open3?.popen2e

### module_function def popen2e(*cmd) -> [IO, IO, Thread]
### module_function def popen2e(*cmd) {|stdin, stdout_and_stderr, wait_thr| ... } -> ()

cmdで指定されたコマンドを実行し、そのプロセスの標準入力・標準出力と標準エラーにパイプをつなぎます。Open3.popen3に似ていますが、標準出力と標準エラーが1つの変数で扱われます。

- **param** `cmd` -- 実行するコマンドを指定します。

- **return** -- ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は標準入力、標準出力と標準エラーに
        接続されたパイプと実行したプロセスを待つためのスレッドを返しま
        す。

[Open3?.popen3](../../../method/Open3/m/popen3.md)と同様に引数に環境変数とオプションを指定してコマンドを実行する事ができます。

- **SEE** [Open3?.popen3](../../../method/Open3/m/popen3.md)
