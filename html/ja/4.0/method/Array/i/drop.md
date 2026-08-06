# Array#drop

### def drop(n)               -> Array
{: since=""}

配列の先頭の n 要素を捨てて、残りの要素を配列として返します。
このメソッドは自身を破壊的に変更しません。

- **param** `n` -- 捨てる要素数。

```ruby title="例"
a = [1, 2, 3, 4, 5, 0]
p a.drop(3)           # => [4, 5, 0]

# 変数aの値は変化しない
p a                   # => [1, 2, 3, 4, 5, 0]
```

- **SEE** [Enumerable#drop](../../../method/Enumerable/i/drop.md), [Array#drop_while](../../../method/Array/i/drop_while.md), [Array#shift](../../../method/Array/i/shift.md)
