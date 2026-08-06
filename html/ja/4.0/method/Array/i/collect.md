# Array#collect

### def collect  -> Enumerator
{: since=""}
### def map      -> Enumerator
{: since=""}
### def collect {|item| ... } -> [object]
{: since=""}
### def map {|item| ... }     -> [object]
{: since=""}

各要素に対してブロックを評価した結果を全て含む配列を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
# すべて 3 倍にする
p [1, 2, 3].map {|n| n * 3 }  # => [3, 6, 9]
```

- **SEE** [Hash#to_h](../../../method/Hash/i/to_h.md), [Enumerable#collect](../../../method/Enumerable/i/collect.md), [Enumerable#map](../../../method/Enumerable/i/map.md)
