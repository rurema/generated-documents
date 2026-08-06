# Kernel#message

### def message(format, *arg) -> nil

[Kernel?.printf](../../../method/Kernel/m/printf.md) と同じように標準出力にメッセージを出力します。
メッセージ出力後すぐに [IO#flush](../../../method/IO/i/flush.md) します。

$VERBOSE が真のときは何もしません。

- **param** `format` -- フォーマット文字列です。

- **param** `arg` -- フォーマットされる引数です。

- **SEE** [Kernel?.printf](../../../method/Kernel/m/printf.md)
