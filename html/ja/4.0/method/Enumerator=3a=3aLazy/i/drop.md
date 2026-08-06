# Enumerator::Lazy#drop

### def drop(n) -> Enumerator::Lazy

[Enumerable#drop](../../../method/Enumerable/i/drop.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

- **param** `n` -- 要素数を指定します。

- **raise** `ArgumentError` -- n に負の数を指定した場合に発生します。

```ruby title="例"
p 1.step.lazy.drop(3)
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator: 1:step>>:drop(3)>

p 1.step.lazy.drop(3).take(10).force
# => [4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
```

- **SEE** [Enumerable#drop](../../../method/Enumerable/i/drop.md)
