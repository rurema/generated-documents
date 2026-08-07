# Integer#rationalize

### def rationalize      -> Rational
### def rationalize(eps) -> Rational

`self` を [Rational](../../../class/Rational.md) に変換して返します。

- **param** `eps` -- 許容する誤差

このメソッドは [Rational#rationalize](../../../method/Rational/i/rationalize.md) や [Float#rationalize](../../../method/Float/i/rationalize.md) などに合わせて用意されていますが、`Integer` においては引数 `eps` は常に無視され、[Integer#to_r](../../../method/Integer/i/to_r.md) と同じ値を返します。

```ruby
p 2.rationalize    # => (2/1)
p 2.rationalize(100) # => (2/1)
p 2.rationalize(0.1) # => (2/1)
```
