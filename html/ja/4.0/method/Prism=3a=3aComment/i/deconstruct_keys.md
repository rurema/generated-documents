# Prism::Comment#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case comment; in {location:}`)で使われます。`location` をキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列を指定します。すべて取り出す場合は nil を指定します。

```ruby title="例"
require "prism"

comment = Prism.parse("# hello\n1 + 1").comments.first
case comment
in {location:}
  p location.slice
end
# => "# hello"
```
