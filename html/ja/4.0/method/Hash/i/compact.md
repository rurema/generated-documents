# Hash#compact

### def compact -> Hash

自身から value が nil のもの取り除いた Hash を生成して返します。

```ruby title="例"
hash = {a: 1, b: nil, c: 3}
p hash.compact  # => {:a=>1, :c=>3}
p hash          # => {:a=>1, :b=>nil, :c=>3}
```

- **SEE** [Hash#compact!](../../../method/Hash/i/compact=21.md), [Array#compact](../../../method/Array/i/compact.md)
