# Prism::Location#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case loc; in {start_offset:, end_offset:}`)で使われます。`start_offset`・`end_offset` をキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

loc = Prism.parse("1 + 2").value.location
case loc
in {start_offset:, end_offset:}
  p [start_offset, end_offset]
end
# => [0, 5]
```
