# IO#erase_line

### def erase_line(mode) -> self

カーソル位置を基準にして、行の一部または全体を消去します。

- **param** `mode` -- 消去する範囲を表す 0 から 2 の整数です。0 はカーソルから行末まで、
           1 は行頭からカーソルまで(カーソル位置を含む)、2 は行全体を消去します。
           nil を指定した場合は 0 として扱われます。
- **raise** `ArgumentError` -- mode が 0 から 2 の範囲外の整数の場合に発生します。

- **SEE** [IO#erase_screen](../../../method/IO/i/erase_screen.md)
