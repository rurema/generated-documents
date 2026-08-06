# Array#take_while

### def take_while                    -> Enumerator
{: since=""}
### def take_while {|element| ... }   -> Array
{: since=""}

配列の要素を順に偽になるまでブロックで評価します。
最初に偽になった要素の手前の要素までを配列として返します。
このメソッドは自身を破壊的に変更しません。

```ruby title="例"
a = [1, 2, 3, 4, 5, 0]
p a.take_while {|i| i < 3 } # => [1, 2]
```

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **SEE** [Enumerable#take_while](../../../method/Enumerable/i/take_while.md)
