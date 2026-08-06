# Enumerable#take_while

### def take_while                    -> Enumerator
### def take_while {|element| ... }   -> Array

Enumerable オブジェクトの要素を順に偽になるまでブロックで評価します。
最初に偽になった要素の手前の要素までを配列として返します。

```ruby title="例"
e = [1, 2, 3, 4, 5, 0].each
p e.take_while {|i| i < 3 } # => [1, 2]
```

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **SEE** [Array#take_while](../../../method/Array/i/take_while.md)
