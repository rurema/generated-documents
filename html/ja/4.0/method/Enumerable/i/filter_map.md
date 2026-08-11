# Enumerable#filter_map

### def filter_map {|item| ... } -> [object]
### def filter_map -> Enumerator

各要素に対してブロックを評価した値のうち、真であった値の配列を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
p (1..10).filter_map { |i| i * 2 if i.even? } # => [4, 8, 12, 16, 20]
```

- **SEE** [Enumerable#filter](../../../method/Enumerable/i/filter.md), [Enumerable#map](../../../method/Enumerable/i/map.md)
