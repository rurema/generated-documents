# Rational#rationalize

### def rationalize(eps = 0) -> Rational

`self` から `eps` で指定した許容誤差の範囲に収まるような [Rational](../../../class/Rational.md) を返します。

`eps` を省略した場合は `self` を返します。

- **param** `eps` -- 許容する誤差

```ruby title="例"
r = Rational(5033165, 16777216)
p r.rationalize                 # => (5033165/16777216)
p r.rationalize(Rational(0.01)) # => (3/10)
p r.rationalize(Rational(0.1))  # => (1/3)
```
