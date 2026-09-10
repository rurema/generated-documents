# IO::ConsoleMode#raw

### def raw(min: 1, time: 0, intr: false) -> IO::ConsoleMode

`self` を raw モードに変更したコピーを返します。`self` は変更しません。

キーワード引数の意味は [IO#raw](../../../method/IO/i/raw.md) と同じです。

- **param** `min` -- 入力操作 (read) 時に受信したい最小のバイト数を指定します。
- **param** `time` -- タイムアウトするまでの秒数を指定します。
- **param** `intr` -- true を指定した場合は、割り込み (interrupt) 、中止 (quit) 、停止 (suspend) の各シグナルを生成する制御文字が有効になります。
- **raise** `ArgumentError` -- intr に true または false 以外の値を指定した場合に発生します。
- **SEE** [IO#raw](../../../method/IO/i/raw.md)
