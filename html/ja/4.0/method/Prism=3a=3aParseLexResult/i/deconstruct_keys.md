# Prism::ParseLexResult#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case result; in {value:}`)で使われます。[Prism::Result#comments](../../../method/Prism=3a=3aResult/i/comments.md) などの付随情報と `value` をキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

result = Prism.parse_lex("1 + 2")
case result
in {value:}
  ast, tokens = value
  p [ast.class, tokens.size]
end
# => [Prism::ProgramNode, 4]
```
