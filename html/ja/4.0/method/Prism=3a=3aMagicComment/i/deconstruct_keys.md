# Prism::MagicComment#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case magic; in {key_loc:, value_loc:}`)で使われます。`key_loc`・`value_loc` をキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

magic = Prism.parse("# frozen_string_literal: true\n").magic_comments.first
case magic
in {key_loc:, value_loc:}
  p [key_loc.slice, value_loc.slice]
end
# => ["frozen_string_literal", "true"]
```
