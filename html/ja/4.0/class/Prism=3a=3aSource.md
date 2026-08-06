# class Prism::Source < Object

解析対象のソースコード全体と各行の開始オフセットの表を保持し、バイトオフセットから行番号・桁位置への変換などを提供するクラスです。
[Prism::ParseResult#source](../method/Prism=3a=3aParseResult/i/source.md) で得られます。

実際に得られるインスタンスは、ASCII のみのソース向けに最適化されたサブクラス `Prism::ASCIISource` の場合があります。クラスの判定をする場合は `instance_of?` ではなく `is_a?(Prism::Source)` を使ってください。


```ruby title="例"
require "prism"

source = Prism.parse("foo = 1\nbar = 2\nbaz = foo + bar\n").source
p source.source[0, 7] # => "foo = 1"
p source.line(9)      # => 2 (バイトオフセット 9 は 2 行目)
p source.column(9)    # => 1
p source.offsets      # => [0, 8, 16, 32]
```

## Instance Methods

- [byte_offset](../method/Prism=3a=3aSource/i/byte_offset.md)
- [character_column](../method/Prism=3a=3aSource/i/character_column.md)
- [character_offset](../method/Prism=3a=3aSource/i/character_offset.md)
- [code_units_column](../method/Prism=3a=3aSource/i/code_units_column.md)
- [code_units_offset](../method/Prism=3a=3aSource/i/code_units_offset.md)
- [column](../method/Prism=3a=3aSource/i/column.md)
- [encoding](../method/Prism=3a=3aSource/i/encoding.md)
- [line](../method/Prism=3a=3aSource/i/line.md)
- [line_end](../method/Prism=3a=3aSource/i/line_end.md)
- [line_start](../method/Prism=3a=3aSource/i/line_start.md)
- [lines](../method/Prism=3a=3aSource/i/lines.md)
- [offsets](../method/Prism=3a=3aSource/i/offsets.md)
- [slice](../method/Prism=3a=3aSource/i/slice.md)
- [source](../method/Prism=3a=3aSource/i/source.md)
- [start_line](../method/Prism=3a=3aSource/i/start_line.md)
