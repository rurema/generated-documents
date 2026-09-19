# Prism::Source.for

### def Prism::Source.for(source, start_line, offsets) -> Prism::Source

指定したソースコード文字列から `Prism::Source` のインスタンスを作成します。

`new` の代わりにこのメソッドを使うことが推奨されます。ソースコードにマルチバイト文字が含まれない場合は、より高速に動作する特化版のサブクラス `Prism::ASCIISource` のインスタンスを返します。

- **param** `source` -- ソースコードの文字列を指定します。
- **param** `start_line` -- ソースコードが開始する行番号を指定します。通常は 1 ですが、このソースコードがより大きなソースコードの一部である場合や、`eval` の場合はそれ以外の値になることがあります。
- **param** `offsets` -- ソースコード中の各行の開始バイトオフセットの配列を指定します。先頭の要素は必ず 0 です。

```ruby title="例"
require "prism"

source = Prism::Source.for("foo = 1\nbar = 2\n", 1, [0, 8, 16])
p source.class   # => Prism::ASCIISource
p source.line(9) # => 2
```

- **SEE** [Prism::ParseResult#source](../../../method/Prism=3a=3aParseResult/i/source.md)
