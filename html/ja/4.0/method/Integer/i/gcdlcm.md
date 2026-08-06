# Integer#gcdlcm

### def gcdlcm(n) -> [Integer]

`self` と整数 `n` の最大公約数と最小公倍数の配列 `[self.gcd(n), self.lcm(n)]`
を返します。

- **raise** `ArgumentError` -- `n` に整数以外のものを指定すると発生します。

```ruby
p 2.gcdlcm(2)                  # => [2, 2]
p 3.gcdlcm(-7)                 # => [1, 21]
p ((1<<31)-1).gcdlcm((1<<61)-1)  # => [1, 4951760154835678088235319297]
```

- **SEE** [Integer#gcd](../../../method/Integer/i/gcd.md), [Integer#lcm](../../../method/Integer/i/lcm.md)
