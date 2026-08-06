# Integer#rationalize

### def rationalize      -> Rational
### def rationalize(eps) -> Rational

`self` を [Rational](../../../class/Rational.md) に変換します。

- **param** `eps` -- 許容する誤差

引数 `eps` は常に無視されます。

```ruby
p 2.rationalize    # => (2/1)
p 2.rationalize(100) # => (2/1)
p 2.rationalize(0.1) # => (2/1)
```
