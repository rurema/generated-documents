# Integer#ceildiv

### def ceildiv(other) -> Integer

`self` を `other` で割り、その(剰余を考えない)商を整数に切り上げたものを返します。
すなわち、`self` を `other` で割った商を `q` とすると、`q` 以上で最小の整数を返します。

- **param** `other` -- `self` を割る数を指定します。

```ruby
p 3.ceildiv(3)  # => 1
p 4.ceildiv(3)  # => 2
p 5.ceildiv(3)  # => 2
p 3.ceildiv(1.2)  # => 3
p -5.ceildiv(3) # => -1
p -5.ceildiv(-3)  # => 2
```
