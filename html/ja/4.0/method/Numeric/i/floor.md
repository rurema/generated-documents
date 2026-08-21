# Numeric#floor

### def floor(ndigits = 0) -> Integer

`self` と等しいかより小さな整数のうち最大のものを返します。

[Complex](../../../class/Complex.md) では未定義化されています。

- **param** `ndigits` -- 10進数での小数点以下の有効桁数を整数で指定します。
               負の整数を指定した場合、小数点位置から左に少なくとも `n` 個の `0` が並びます。

```ruby title="例"
p 1.floor      # => 1
p 1.2.floor    # => 1
p (-1.2).floor # => -2
p (-1.5).floor # => -2
```

- **SEE** [Numeric#ceil](../../../method/Numeric/i/ceil.md), [Numeric#round](../../../method/Numeric/i/round.md), [Numeric#truncate](../../../method/Numeric/i/truncate.md)
- **SEE** [Integer#floor](../../../method/Integer/i/floor.md)
