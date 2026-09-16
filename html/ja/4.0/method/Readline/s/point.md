# Readline.point

### def Readline.point=(pos)
{: since="2.1.0"}
### def Readline.point -> Integer
{: since="1.9.2"}

編集中の行における現在のカーソル位置のインデックスを設定・取得します。

`Readline.point=` は、カーソル位置のインデックスを pos に設定します。

`Readline.point` は、[Readline.line_buffer](../../../method/Readline/s/line_buffer.md) における現在のカーソル位置のインデックスを返します。 completion_proc に渡される入力文字列の開始位置に対応する [Readline.line_buffer](../../../method/Readline/s/line_buffer.md) 中のインデックスは、入力文字列の長さから `Readline.point` を引くことで求められます。

- **param** `pos` -- カーソル位置のインデックスを整数で指定します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。
