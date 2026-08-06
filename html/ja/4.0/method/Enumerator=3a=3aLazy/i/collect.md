# Enumerator::Lazy#collect

### def map {|item| ... } -> Enumerator::Lazy
### def collect {|item| ... } -> Enumerator::Lazy

[Enumerable#map](../../../method/Enumerable/i/map.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。

```ruby title="例"
p 1.step.lazy.map{ |n| n % 3 == 0 }
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator: 1:step>>:map>

p 1.step.lazy.collect{ |n| n.succ }.take(10).force
# => [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
```

- **SEE** [Enumerable#map](../../../method/Enumerable/i/map.md)
