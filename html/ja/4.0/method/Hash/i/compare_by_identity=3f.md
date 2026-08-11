# Hash#compare_by_identity?

### def compare_by_identity? -> bool

ハッシュがキーの一致判定をオブジェクトの同一性を用いて行っているならば真を返します。

```ruby title="例"
h1 = {}
p h1.compare_by_identity? # => false

h1.compare_by_identity

p h1.compare_by_identity? # => true
```

- **SEE** [Hash#compare_by_identity](../../../method/Hash/i/compare_by_identity.md)
