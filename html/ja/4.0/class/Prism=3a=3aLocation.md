# class Prism::Location < Object

ソースコード上の範囲(開始バイトオフセットと長さ)を表すクラスです。
構文木の各ノードのほか、[Prism::Comment](../class/Prism=3a=3aComment.md)・[Prism::MagicComment](../class/Prism=3a=3aMagicComment.md)・
[Prism::ParseError](../class/Prism=3a=3aParseError.md)・[Prism::ParseWarning](../class/Prism=3a=3aParseWarning.md)・[Prism::Token](../class/Prism=3a=3aToken.md) などの
`location` メソッドから得られます。

行番号・桁位置への変換や、該当範囲の文字列の取り出しなどのメソッドを持ちます。桁位置を表すメソッドには「バイト単位」(`start_column` など)と「文字単位」(`start_character_column` など)の系列があります。

```ruby title="例"
require "prism"

node = Prism.parse("x = 1 + 2").value.statements.body[0]
loc = node.location
p loc.slice        # => "x = 1 + 2"
p loc.start_line   # => 1
p loc.start_offset # => 0
p loc.length       # => 9

loc = node.value.location # 右辺の 1 + 2
p loc.slice        # => "1 + 2"
p loc.start_column # => 4
```

## Instance Methods

- [==](../method/Prism=3a=3aLocation/i/=3d=3d.md)
- [adjoin](../method/Prism=3a=3aLocation/i/adjoin.md)
- [chop](../method/Prism=3a=3aLocation/i/chop.md)
- [comments](../method/Prism=3a=3aLocation/i/comments.md)
- [copy](../method/Prism=3a=3aLocation/i/copy.md)
- [end_character_column](../method/Prism=3a=3aLocation/i/end_character_column.md)
- [end_character_offset](../method/Prism=3a=3aLocation/i/end_character_offset.md)
- [end_code_units_column](../method/Prism=3a=3aLocation/i/end_code_units_column.md)
- [end_code_units_offset](../method/Prism=3a=3aLocation/i/end_code_units_offset.md)
- [end_column](../method/Prism=3a=3aLocation/i/end_column.md)
- [end_line](../method/Prism=3a=3aLocation/i/end_line.md)
- [end_offset](../method/Prism=3a=3aLocation/i/end_offset.md)
- [join](../method/Prism=3a=3aLocation/i/join.md)
- [leading_comments](../method/Prism=3a=3aLocation/i/leading_comments.md)
- [length](../method/Prism=3a=3aLocation/i/length.md)
- [slice](../method/Prism=3a=3aLocation/i/slice.md)
- [slice_lines](../method/Prism=3a=3aLocation/i/slice_lines.md)
- [source_lines](../method/Prism=3a=3aLocation/i/source_lines.md)
- [start_character_column](../method/Prism=3a=3aLocation/i/start_character_column.md)
- [start_character_offset](../method/Prism=3a=3aLocation/i/start_character_offset.md)
- [start_code_units_column](../method/Prism=3a=3aLocation/i/start_code_units_column.md)
- [start_code_units_offset](../method/Prism=3a=3aLocation/i/start_code_units_offset.md)
- [start_column](../method/Prism=3a=3aLocation/i/start_column.md)
- [start_line](../method/Prism=3a=3aLocation/i/start_line.md)
- [start_line_slice](../method/Prism=3a=3aLocation/i/start_line_slice.md)
- [start_offset](../method/Prism=3a=3aLocation/i/start_offset.md)
- [trailing_comments](../method/Prism=3a=3aLocation/i/trailing_comments.md)
