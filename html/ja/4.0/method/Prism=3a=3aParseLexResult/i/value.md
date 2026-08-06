# Prism::ParseLexResult#value

### def value -> Array

`[構文木, トークンの配列]` という 2 要素配列を返します。構文木は
`Prism::ProgramNode`、トークンの配列は [Prism::LexResult](../../../class/Prism=3a=3aLexResult.md) の
`value` と同じ「[Prism::Token](../../../class/Prism=3a=3aToken.md) と字句解析器の状態の整数のペア」の配列です。

```ruby title="例"
require "prism"

ast, tokens = Prism.parse_lex("1 + 2").value
p ast.class      # => Prism::ProgramNode
p tokens.map { |token, _state| token.type }
# => [:INTEGER, :PLUS, :INTEGER, :EOF]
```
