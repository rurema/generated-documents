# Integer#downto

### def downto(min) {|n| ... } -> self
### def downto(min) -> Enumerator

`self` から `min` まで `1` ずつ減らしながらブロックを繰り返し実行します。
`self < min` であれば何もしません。

- **param** `min` --   数値
- **return** --      `self` を返します。

```ruby
2.downto(-1) { |i| p i }
# => 2
#    1
#    0
#    -1
```

- **SEE** [Integer#upto](../../../method/Integer/i/upto.md), [Numeric#step](../../../method/Numeric/i/step.md), [Integer#times](../../../method/Integer/i/times.md)
