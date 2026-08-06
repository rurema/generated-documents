# Prism?.parse_lex

### module_function def parse_lex(source, **options) -> Prism::ParseLexResult

`source` に対して構文解析と字句解析の両方を行い、
[Prism::ParseLexResult](../../../class/Prism=3a=3aParseLexResult.md) のインスタンスを返します。`value` は
`[構文木, トークンの配列]` という 2 要素配列です。

構文木とトークン列の両方が必要な場合、[Prism?.parse](../../../method/Prism/m/parse.md) と [Prism?.lex](../../../method/Prism/m/lex.md)
を個別に呼び出すよりも効率的です。片方だけが必要な場合はそれぞれ
[Prism?.parse](../../../method/Prism/m/parse.md) または [Prism?.lex](../../../method/Prism/m/lex.md) を使ってください。オプションは
[Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

result = Prism.parse_lex("1 + 2")
p result.class # => Prism::ParseLexResult

ast, tokens = result.value
p ast.class    # => Prism::ProgramNode
p tokens.size  # => 4
```

- **SEE** [Prism?.parse](../../../method/Prism/m/parse.md), [Prism?.lex](../../../method/Prism/m/lex.md)
