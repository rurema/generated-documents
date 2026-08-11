# Array#slice

### def slice(nth)       -> object | nil

指定された自身の要素を返します。[Array#\[\]](../../../method/Array/i/=5b=5d.md) と同じです。

- **param** `nth` -- 要素のインデックスを整数で指定します。[Array#\[\]](../../../method/Array/i/=5b=5d.md) と同じです。

```ruby title="例"
p [0, 1, 2].slice(1)    # => 1
p [0, 1, 2].slice(2)    # => 2
p [0, 1, 2].slice(10)   # => nil
```

### def slice(pos, len)  -> Array | nil
### def slice(range)     -> Array | nil

指定された自身の部分配列を返します。[Array#\[\]](../../../method/Array/i/=5b=5d.md) と同じです。

- **param** `pos` -- [Array#\[\]](../../../method/Array/i/=5b=5d.md) と同じです。

- **param** `len` -- [Array#\[\]](../../../method/Array/i/=5b=5d.md) と同じです。

- **param** `range` -- [Array#\[\]](../../../method/Array/i/=5b=5d.md) と同じです。

```ruby title="例"
p [0, 1, 2].slice(0, 2)    # => [0, 1]
p [0, 1, 2].slice(2..3)    # => [2]
p [0, 1, 2].slice(10, 1)   # => nil
```
