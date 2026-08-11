# Open3?.popen2

### module_function def popen2(*cmd) -> [IO, IO, Thread]
### module_function def popen2(*cmd) {|stdin, stdout, wait_thr| ... } -> ()

cmdで指定されたコマンドを実行し、そのプロセスの標準入力・標準出力にパイプをつなぎます。Open3.popen3に似ていますが、標準エラーを扱いません。

- **param** `cmd` -- 実行するコマンドを指定します。

- **return** -- ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は標準入力、標準出力に接続されたパイプと実行したプロセスを待つためのスレッドを返します。

[Open3?.popen3](../../../method/Open3/m/popen3.md)と同様に引数に環境変数とオプションを指定してコマンドを実行する事ができます。

- **SEE** [Open3?.popen3](../../../method/Open3/m/popen3.md)
