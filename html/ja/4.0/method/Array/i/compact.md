# Array#compact

### def compact     -> Array

自身から nil を取り除いた配列を生成して返します。

```ruby title="例"
ary = [1, nil, 2, nil, 3, nil]
p ary.compact   # => [1, 2, 3]
p ary           # => [1, nil, 2, nil, 3, nil]
```

- **SEE** [Array#compact!](../../../method/Array/i/compact=21.md)
