# Enumerable#minmax

### def minmax                 -> [object, object]
### def minmax{|a, b| ... }    -> [object, object]

Enumerable オブジェクトの各要素のうち最小の要素と最大の要素を要素とするサイズ 2 の配列を返します。

該当する要素が複数存在する場合、どの要素を返すかは不定です。

一つ目の形式は、Enumerable オブジェクトのすべての要素が Comparable を実装していることを仮定しています。二つ目の形式では、要素同士の比較をブロックを用いて行います。

```ruby title="例"
a = %w(albatross dog horse)
p a.minmax                               #=> ["albatross", "horse"]
p a.minmax{|a,b| a.length <=> b.length } #=> ["dog", "albatross"]
p [].minmax # => [nil, nil]
```

- **SEE** [Enumerable#sort](../../../method/Enumerable/i/sort.md), [Array#minmax](../../../method/Array/i/minmax.md)
