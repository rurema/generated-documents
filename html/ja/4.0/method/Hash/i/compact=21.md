# Hash#compact!

### def compact! -> self | nil

自身から破壊的に value が nil のものを取り除き、変更が行われた場合は self を、そうでなければ nil を返します。

```ruby title="例"
hash = {a: 1, b: nil, c: 3}
hash.compact!
p hash          # => {:a=>1, :c=>3}
p hash.compact! # =>  nil
```

- **SEE** [Hash#compact](../../../method/Hash/i/compact.md), [Array#compact!](../../../method/Array/i/compact=21.md)
