# Set#compare_by_identity?

### def compare_by_identity? -> bool

集合が要素の一致判定をオブジェクトの同一性を用いて行っているならば真を返します。

```ruby title="例"
s1 = Set["a", "b"]
p s1.compare_by_identity? # => false

s1.compare_by_identity

p s1.compare_by_identity? # => true
```

- **SEE** [Set#compare_by_identity](../../../method/Set/i/compare_by_identity.md), [Hash#compare_by_identity?](../../../method/Hash/i/compare_by_identity=3f.md)
