# Prism?.lex

### module_function def lex(source, **options) -> Prism::LexResult

`source` を字句解析し、[Prism::LexResult](../../../class/Prism=3a=3aLexResult.md) のインスタンスを返します。
`value` は `[トークン, 直前からの字句解析器の状態(Integer)]` という
2 要素配列の配列です。これは [Ripper](../../../class/Ripper.md) の [Ripper.lex](../../../method/Ripper/s/lex.md) の戻り値の形式に近いものになっています。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

result = Prism.lex("1 + 2")
p result.class   # => Prism::LexResult
result.value.each { |token, state| p [token.type, token.value, state] }
# => [:INTEGER, "1", 2]
# => [:PLUS, "+", 1]
# => [:INTEGER, "2", 2]
# => [:EOF, "", 2]
```

- **SEE** [Prism?.parse](../../../method/Prism/m/parse.md), [Ripper](../../../class/Ripper.md)
