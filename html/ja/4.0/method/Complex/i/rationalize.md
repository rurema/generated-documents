# Complex#rationalize

### def to_r             -> Rational
### def rationalize      -> Rational
### def rationalize(eps) -> Rational

自身を [Rational](../../../class/Rational.md) に変換します。

- **param** `eps` -- 許容する誤差。常に無視されます。

- **raise** `RangeError` -- 虚部が実数か、0 ではない場合に発生します。

```ruby title="例"
p Complex(3).to_r  # => (3/1)
Complex(3, 2).to_r # ~> RangeError
```
