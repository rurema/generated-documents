# OptionParser#help_exit

### def help_exit -> ()

サマリ([OptionParser#help](../../../method/OptionParser/i/help.md) と同じ内容)を表示してから、プロセスを終了します。

標準出力がターミナル(tty)に接続されており、かつ環境変数 `RUBY_PAGER` か `PAGER`
のいずれかが空でない値に設定されている場合は、そのページャー経由でサマリを表示します。
それ以外の場合は標準出力に直接出力します。

デフォルトで利用可能な `--help` オプションの処理で使われるメソッドです。

内部で `exit` を呼び出すため、呼び出し元には戻りません。

- **SEE** [OptionParser#help](../../../method/OptionParser/i/help.md)
