# Shellwords.join

### def Shellwords.join(array) -> String

配列の各要素である文字列に対して、Bourne シェルのコマンドライン中で安全に使えるためのエスケープを適用し、空白文字を介してそれらを連結したコマンドライン文字列を生成します。

このメソッドは、[Shellwords?.shelljoin](../../../method/Shellwords/m/shelljoin.md) の別名です。

- **param** `array` -- エスケープ対象の文字列を要素とする配列を指定します。
- **return** -- エスケープ結果を連結した文字列を返します。
