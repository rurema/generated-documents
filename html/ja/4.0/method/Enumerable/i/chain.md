# Enumerable#chain

### def chain(*enums) -> Enumerator::Chain

自身と enums 引数を続けて繰り返す [Enumerator::Chain](../../../class/Enumerator=3a=3aChain.md) を返します。

```ruby title="例"
e = (1..3).chain([4, 5])
p e.to_a # => [1, 2, 3, 4, 5]
```

- **SEE** [Enumerator#+](../../../method/Enumerator/i/=2b.md)
