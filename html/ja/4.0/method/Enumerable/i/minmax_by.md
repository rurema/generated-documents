# Enumerable#minmax_by

### def minmax_by                -> Enumerator
### def minmax_by {|obj| ... }   -> [object, object]

Enumerable オブジェクトの各要素をブロックに渡して評価し、その結果を <=> で比較して最小の要素と最大の要素を要素とするサイズ 2 の配列を返します。

該当する要素が複数存在する場合、どの要素を返すかは不定です。

[Enumerable#minmax](../../../method/Enumerable/i/minmax.md) と [Enumerable#minmax_by](../../../method/Enumerable/i/minmax_by.md) の違いは sort と sort_by の違いと同じです。
詳細は [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md) を参照してください。

```ruby title="例"
a = %w(albatross dog horse)
p a.minmax_by {|x| x.length } # => ["dog", "albatross"]

p [].minmax_by{} # => [nil, nil]
```

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **SEE** [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md)
