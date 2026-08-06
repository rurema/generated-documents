# Integer#ceil

### def ceil(ndigits = 0) -> Integer
{: since=""}

`self` と等しいかより大きな整数のうち最小のものを返します。

- **param** `ndigits` -- 10進数での小数点以下の有効桁数を整数で指定します。
               負の整数を指定した場合、小数点位置から左に少なくとも `n` 個の `0` が並びます。

```ruby
p 1.ceil         # => 1
p 1.ceil(2)      # => 1
p 18.ceil(-1)    # => 20
p (-18).ceil(-1) # => -10
```

- **SEE** [Numeric#ceil](../../../method/Numeric/i/ceil.md)
