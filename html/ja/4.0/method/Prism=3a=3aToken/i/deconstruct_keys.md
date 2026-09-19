# Prism::Token#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case token; in {type:, value:}`)で使われます。`type`・`value`・`location` をキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

token, _state = Prism.lex("1 + 2").value.first
case token
in {type:, value:}
  p [type, value]
end
# => [:INTEGER, "1"]
```
