# Array#take

### def take(n)               -> Array
{: since=""}

配列の先頭から n 要素を配列として返します。
このメソッドは自身を破壊的に変更しません。

- **param** `n` -- 要素数を指定します。

```ruby title="例"
a = [1, 2, 3, 4, 5, 0]
p a.take(3)           # => [1, 2, 3]
```

- **SEE** [Enumerable#take](../../../method/Enumerable/i/take.md)
