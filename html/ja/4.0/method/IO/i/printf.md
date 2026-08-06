# IO#printf

### def printf(format, *arg)    -> nil

C 言語の printf と同じように、format に従い引数を文字列に変換して、self に出力します。

第一引数に IO を指定できないこと、引数を省略できないことを除けば [Kernel?.printf](../../../method/Kernel/m/printf.md) と同じです。

- **param** `format` -- [Kernel?.printf](../../../method/Kernel/m/printf.md) と同じです。[print_format](../../../doc/print_format.md) を参照してください。

- **param** `arg` -- [Kernel?.printf](../../../method/Kernel/m/printf.md) と同じです。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- 出力に失敗した場合に発生します。


- **SEE** [Kernel?.printf](../../../method/Kernel/m/printf.md)
