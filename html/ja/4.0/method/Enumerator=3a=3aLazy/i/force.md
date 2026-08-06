# Enumerator::Lazy#force

### def force(*args) -> [object]
{: since="2.3.0"}

全ての要素を含む配列を返します。Lazy から実際に値を取り出すのに使います。

[Enumerable#to_a](../../../method/Enumerable/i/to_a.md) のエイリアスです。

```ruby title="例"
p 1.step.lazy.take(10).force
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p 1.step.lazy.take(10).to_a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```
