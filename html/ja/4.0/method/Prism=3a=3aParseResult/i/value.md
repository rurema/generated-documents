# Prism::ParseResult#value

### def value -> Prism::ProgramNode

構文解析によって得られた構文木のルートノードを返します。
[Prism?.parse](../../../method/Prism/m/parse.md) や [Prism?.parse_file](../../../method/Prism/m/parse_file.md) の戻り値として得られる
`Prism::ParseResult` では、これは常に `Prism::ProgramNode`
(`Prism::Node` のサブクラス)のインスタンスです。

構文エラーがあった場合でも nil にはならず、prism が構築できた範囲の構文木が返ります。エラーの有無は [Prism::ParseResult#success?](../../../method/Prism=3a=3aParseResult/i/success=3f.md) で確認してください。

```ruby title="例"
require "prism"

result = Prism.parse("1 + 2")
p result.value.class # => Prism::ProgramNode

result = Prism.parse("1 +")
p result.value.class # => Prism::ProgramNode (エラーがあっても構文木は返る)
```
