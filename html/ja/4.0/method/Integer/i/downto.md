# Integer#downto

### def downto(min) {|n| ... } -> self
### def downto(min) -> Enumerator

`self` から `min` まで `1` ずつ減らしながらブロックを繰り返し実行します。
`self < min` であれば何もしません。

- **param** `min` --   数値
- **return** --      `self` を返します。

```ruby
p 5.downto(1) {|i| print i, " " } # => 5 4 3 2 1
```

- **SEE** [Integer#upto](../../../method/Integer/i/upto.md), [Numeric#step](../../../method/Numeric/i/step.md), [Integer#times](../../../method/Integer/i/times.md)
