# IO#cursor

### def cursor -> [Integer, Integer] | nil
### def cursor=(pos)

現在のカーソル位置を取得し、または移動します。

`cursor` は現在のカーソル位置を、行と列からなる要素数 2 の配列で返します。行・列とも
0 から始まる整数です。端末が対応していないなど、位置を取得できない場合は nil を返します。

`cursor=` はカーソル位置を pos で移動します。`io.cursor = [line, column]` は
`io.goto(line, column)` と同じです。

- **param** `pos` -- 移動先の位置を表す、行と列からなる要素数 2 の配列です。
- **raise** `ArgumentError` -- pos が要素数 2 の配列に変換できない場合に発生します。

- **SEE** [IO#goto](../../../method/IO/i/goto.md)
