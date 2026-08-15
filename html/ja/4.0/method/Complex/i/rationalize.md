# Complex#rationalize

### def rationalize -> Rational
### def rationalize(eps) -> Rational

`self` の虚部が [Integer](../../../class/Integer.md) か [Rational](../../../class/Rational.md) のゼロであれば実部を [Rational](../../../class/Rational.md) に変換して返します。許容誤差 `eps` を与えることもできます。

- **param** `eps` -- 許容する誤差。

- **raise** `RangeError` -- 虚部がゼロでなかったり [Float](../../../class/Float.md) のゼロである場合に発生します。

```ruby title="例"
p Complex(0.1).rationalize            # => (1/10)
p Complex(Math::PI).rationalize(0.01) # => (22/7)
```

```ruby title="変換できない例"
# 虚部がゼロでない
(1 + 2i).rationalize # ~> RangeError

# 虚部がゼロだが Float の 0.0 である
(1 + 0.0i).rationalize # ~> RangeError
```

- **SEE** [Float#rationalize](../../../method/Float/i/rationalize.md), [Integer#rationalize](../../../method/Integer/i/rationalize.md), [Rational#rationalize](../../../method/Rational/i/rationalize.md)
