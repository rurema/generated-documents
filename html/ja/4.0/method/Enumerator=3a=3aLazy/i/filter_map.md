# Enumerator::Lazy#filter_map

### def filter_map {|item| ... } -> Enumerator::Lazy

[Enumerable#filter_map](../../../method/Enumerable/i/filter_map.md) と同じですが、配列ではなく Enumerator::Lazy を返します。

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。

```ruby title="例"
p 1.step.lazy.filter_map { |n| n * 2 if n.even? }
# => #<Enumerator::Lazy: #<Enumerator::Lazy: (1.step)>:filter_map>

p 1.step.lazy.filter_map { |n| n * 2 if n.even? }.take(10).force
# => [4, 8, 12, 16, 20, 24, 28, 32, 36, 40]
```

- **SEE** [Enumerable#filter_map](../../../method/Enumerable/i/filter_map.md)
