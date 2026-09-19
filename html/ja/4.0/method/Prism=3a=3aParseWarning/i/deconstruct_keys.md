# Prism::ParseWarning#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case warning; in {message:}`)で使われます。`message`・`location` をキーに持つハッシュを返します。

Ruby 3.4 以降は `type`・`level` もキーに含まれます。


- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

warning = Prism.parse("foo *[1]\n").warnings.first
case warning
in {message:}
  p message
end
# => "ambiguous `*` has been interpreted as an argument prefix"
```
