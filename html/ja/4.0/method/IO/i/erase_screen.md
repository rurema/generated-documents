# IO#erase_screen

### def erase_screen(mode) -> self

カーソル位置を基準にして、画面の一部または全体を消去します。

- **param** `mode` -- 消去する範囲を表す 0 から 3 の整数です。0 はカーソルから画面末尾まで、
           1 は画面先頭からカーソルまで(カーソル位置を含む)、2 は画面全体、
           3 は画面の外にスクロールした部分も含めた全体を消去します。
           nil を指定した場合は 0 として扱われます。
- **raise** `ArgumentError` -- mode が 0 から 3 の範囲外の整数の場合に発生します。

- **SEE** [IO#erase_line](../../../method/IO/i/erase_line.md), [IO#clear_screen](../../../method/IO/i/clear_screen.md)
