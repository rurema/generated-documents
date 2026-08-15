# Complex#to_i

### def to_i -> Integer

`self` の虚部が [Integer](../../../class/Integer.md) か [Rational](../../../class/Rational.md) のゼロであれば実部を [Integer](../../../class/Integer.md) に変換して返します。

- **raise** `RangeError` -- 虚部がゼロでなかったり [Float](../../../class/Float.md) のゼロである場合に発生します。

```ruby title="例"
p (1.9 + 0i).to_i  # => 1
p (1.9 + 0ri).to_i # => 1
```

```ruby title="変換できない例"
# 虚部がゼロでない
(1 + 2i).to_i # ~> RangeError

# 虚部がゼロだが Float の 0.0 である
(1 + 0.0i).to_i # ~> RangeError
```
