# Enumerator::Lazy#reject

### def reject {|item| ... } -> Enumerator::Lazy

[Enumerable#reject](../../../method/Enumerable/i/reject.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。

```ruby title="例"
p 1.step.lazy.reject { |i| i.even? }
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator: 1:step>>:reject>

p 1.step.lazy.reject { |i| i.even? }.take(10).force
# => [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
```

- **SEE** [Enumerable#reject](../../../method/Enumerable/i/reject.md)
