# Numeric#ceil

### def ceil(ndigits = 0) -> Integer | Float

`self` と等しいかより大きな整数のうち最小のものを返します。

`self` を `to_f` で [Float](../../../class/Float.md) に変換してから [Float#ceil](../../../method/Float/i/ceil.md) を呼び出すのと同じです。

[Complex](../../../class/Complex.md) では未定義化されています。

- **param** `ndigits` -- 10進数での小数点以下の有効桁数を整数で指定します。
               正の整数を指定した場合、[Float](../../../class/Float.md) を返します。
               小数点以下を、最大 `ndigits` 桁にします。
               負の整数を指定した場合、[Integer](../../../class/Integer.md) を返します。
               小数点位置から左に少なくとも `ndigits` 個の `0` が並びます。

```ruby title="例"
p 1.ceil      # => 1
p 1.2.ceil    # => 2
p (-1.2).ceil # => -1
p (-1.5).ceil # => -1

p 1.234567.ceil(2)   # => 1.24
p 34567.89.ceil(-2)  # => 34600
```

- **SEE** [Numeric#floor](../../../method/Numeric/i/floor.md), [Numeric#round](../../../method/Numeric/i/round.md), [Numeric#truncate](../../../method/Numeric/i/truncate.md)
