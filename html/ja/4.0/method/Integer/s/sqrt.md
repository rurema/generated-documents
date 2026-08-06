# Integer.sqrt

### def Integer.sqrt(n) -> Integer

非負整数 `n` の整数の平方根を返します。すなわち `n` の平方根以下の最大の非負整数を返します。

- **param** `n` -- 非負整数。`Integer` ではない場合は、最初に `Integer` に変換されます。
- **raise** `Math::DomainError` -- `n` が負の整数の時に発生します。

```ruby
p Integer.sqrt(0)      # => 0
p Integer.sqrt(1)      # => 1
p Integer.sqrt(24)     # => 4
p Integer.sqrt(25)     # => 5
p Integer.sqrt(10**400) == 10**200 # => true
```

Math.sqrt(n).floor と同等ですが、後者は浮動小数点数の精度の限界によって真の値とは違う結果になることがあります。

```ruby
p Integer.sqrt(10**46)   #=> 100000000000000000000000
p Math.sqrt(10**46).floor  #=>  99999999999999991611392 (!)
```

- **SEE** [Math?.sqrt](../../../method/Math/m/sqrt.md)
