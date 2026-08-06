# Hash#values

### def values -> [object]

ハッシュの全値の配列を返します。

```ruby title="例"
h1 = { "a" => 100, 2 => ["some"], :c => "c" }
p h1.values         #=> [100, ["some"], "c"]
```

- **SEE** [Hash#keys](../../../method/Hash/i/keys.md),[Hash#to_a](../../../method/Hash/i/to_a.md)
