# Ripper.new

### def Ripper.new(src, filename = "(ripper)", lineno = 1) -> Ripper

Ripper オブジェクトを作成します。

- **param** `src` -- Ruby プログラムを文字列か IO オブジェクトで指定します。

- **param** `filename` -- src のファイル名を文字列で指定します。省略すると "(ripper)" になります。

- **param** `lineno` -- src の開始行番号を指定します。省略すると 1 になります。

src の解析を行うには更に [Ripper#parse](../../../method/Ripper/i/parse.md) などの呼び出しが必要です。

- **SEE** [Ripper.parse](../../../method/Ripper/s/parse.md), [Ripper#parse](../../../method/Ripper/i/parse.md)
