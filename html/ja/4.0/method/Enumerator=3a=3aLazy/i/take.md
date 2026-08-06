# Enumerator::Lazy#take

### def take(n) -> Enumerator::Lazy

[Enumerable#take](../../../method/Enumerable/i/take.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

n が大きな数 (100000とか) の場合に備えて再定義されています。
配列が必要な場合は [Enumerable#first](../../../method/Enumerable/i/first.md) を使って下さい。

- **param** `n` -- 要素数を指定します。

- **raise** `ArgumentError` -- n に負の数を指定した場合に発生します。

```ruby title="例"
p 1.step.lazy.take(5)
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator: 1:step>>:take(5)>

p 1.step.lazy.take(5).force
# => [1, 2, 3, 4, 5]
```

- **SEE** [Enumerable#take](../../../method/Enumerable/i/take.md)
