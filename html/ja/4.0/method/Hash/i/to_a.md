# Hash#to_a

### def to_a -> [Array]

キーと値からなる 2 要素の配列を並べた配列を生成して返します。

```ruby title="例"
h1 = { "a" => 100, 2 => ["some"], :c => "c" }
p h1.to_a           #=> [["a", 100], [2, ["some"]], [:c, "c"]]
```

- **SEE** [Hash#keys](../../../method/Hash/i/keys.md),[Hash#values](../../../method/Hash/i/values.md)
