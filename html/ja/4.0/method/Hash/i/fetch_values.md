# Hash#fetch_values

### def fetch_values(key, ...)               -> [object]
### def fetch_values(key, ...) { |key| ... } -> [object]

引数で指定されたキーに関連づけられた値の配列を返します。

該当するキーが登録されていない時には、ブロックが与えられていればそのブロックを評価した値を返します。ブロックが与えられていない時は
[KeyError](../../../class/KeyError.md) が発生します。

self にデフォルト値が設定されていても無視されます（挙動に変化がありません）。

- **param** `key` -- 探索するキーを任意個指定します。

- **raise** `KeyError` -- ブロックが与えられてない時にキーの探索に失敗すると発生します。

```ruby title="例"
h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }

p h.fetch_values("cow", "cat")                 # => ["bovine", "feline"]
h.fetch_values("cow", "bird")                  # raises KeyError
p h.fetch_values("cow", "bird") { |k| k.upcase } # => ["bovine", "BIRD"]
```

- **SEE** [Hash#values_at](../../../method/Hash/i/values_at.md), [Hash#fetch](../../../method/Hash/i/fetch.md)
