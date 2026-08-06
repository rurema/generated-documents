# Array#drop_while

### def drop_while                    -> Enumerator
{: since=""}
### def drop_while {|element| ... }   -> Array
{: since=""}

ブロックを評価して最初に偽となった要素の手前の要素まで捨て、残りの要素を配列として返します。
このメソッドは自身を破壊的に変更しません。

ブロックを指定しなかった場合は、[Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
a = [1, 2, 3, 4, 5, 0]
p a.drop_while {|i| i < 3 } # => [3, 4, 5, 0]

# 変数aの値は変化しない
p a                         # => [1, 2, 3, 4, 5, 0]
```

- **SEE** [Enumerable#drop_while](../../../method/Enumerable/i/drop_while.md), [Array#drop](../../../method/Array/i/drop.md)
