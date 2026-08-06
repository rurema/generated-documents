# Enumerable#collect

### def collect  -> Enumerator
### def map      -> Enumerator
### def collect {|item| ... } -> [object]
### def map {|item| ... }     -> [object]

各要素に対してブロックを評価した結果を全て含む配列を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
# すべて 3 倍にした配列を返す
p (1..3).map {|n| n * 3 }  # => [3, 6, 9]
p (1..3).collect { "cat" } # => ["cat", "cat", "cat"]
```

- **SEE** [Hash#to_h](../../../method/Hash/i/to_h.md), [Array#collect](../../../method/Array/i/collect.md), [Array#map](../../../method/Array/i/map.md)
