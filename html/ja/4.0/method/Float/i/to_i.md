# Float#to_i

### def to_i -> Integer
### def truncate(ndigits = 0) -> Integer | Float

小数点以下を切り捨てて値を整数に変換します。

- **param** `ndigits` -- 10進数での小数点以下の有効桁数を整数で指定します。
               正の整数を指定した場合、[Float](../../../class/Float.md) を返します。
               小数点以下を、最大 n 桁にします。
               負の整数を指定した場合、[Integer](../../../class/Integer.md) を返します。
               小数点位置から左に少なくとも n 個の 0 が並びます。

```ruby title="例"
p 2.8.truncate         # => 2
p (-2.8).truncate      # => -2
p 1.234567.truncate(2) # => 1.23
p 34567.89.truncate(-2)  # => 34500
```

- **SEE** [Numeric#round](../../../method/Numeric/i/round.md), [Numeric#ceil](../../../method/Numeric/i/ceil.md), [Numeric#floor](../../../method/Numeric/i/floor.md)
