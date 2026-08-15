# Complex#to_f

### def to_f -> Float

`self` の虚部が [Integer](../../../class/Integer.md) か [Rational](../../../class/Rational.md) のゼロであれば実部を [Float](../../../class/Float.md) に変換して返します。

- **raise** `RangeError` -- 虚部がゼロでなかったり [Float](../../../class/Float.md) のゼロである場合に発生します。

```ruby title="例"
p (1 + 0i).to_f  # => 1.0
p (1 + 0ri).to_f # => 1.0
```

```ruby title="変換できない例"
# 虚部がゼロでない
(1 + 2i).to_f # ~> RangeError

# 虚部がゼロだが Float の 0.0 である
(1 + 0.0i).to_f # ~> RangeError
```
