# Integer#remainder

### def remainder(other) -> Numeric

`self` を `other` で割った余り `r` を返します。

`r` の符号は `self` と同じになります。

- **param** `other` -- `self` を割る数。

```ruby
p 5.remainder(3)  # =>  2
p -5.remainder(3) # => -2
p 5.remainder(-3) # =>  2
p -5.remainder(-3)  # => -2

p -1234567890987654321.remainder(13731)    # => -6966
p -1234567890987654321.remainder(13731.24) # => -9906.22531493148
```

- **SEE** [Integer#divmod](../../../method/Integer/i/divmod.md), [Integer#modulo](../../../method/Integer/i/modulo.md), [Numeric#modulo](../../../method/Numeric/i/modulo.md)
