# Integer#upto

### def upto(max) {|n| ... } -> Integer
### def upto(max) -> Enumerator

`self` から `max` まで `1` ずつ増やしながら繰り返します。
`self > max` であれば何もしません。

- **param** `max` --   数値
- **return** --      `self` を返します。

```ruby
p 5.upto(10) {|i| print i, " " } # => 5 6 7 8 9 10
```

- **SEE** [Integer#downto](../../../method/Integer/i/downto.md), [Numeric#step](../../../method/Numeric/i/step.md), [Integer#times](../../../method/Integer/i/times.md)
