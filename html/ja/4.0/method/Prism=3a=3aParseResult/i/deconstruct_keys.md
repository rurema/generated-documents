# Prism::ParseResult#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case result; in {value:}`)で使われます。`comments` などの付随情報と、構文木そのものである `value` をキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

result = Prism.parse("1 + 2")
case result
in {value:}
  p value.class
end
# => Prism::ProgramNode
```
