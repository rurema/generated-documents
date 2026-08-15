# Complex#to_r

### def to_r             -> Rational

`self` の虚部がゼロであれば実部を [Rational](../../../class/Rational.md) に変換して返します。

- **raise** `RangeError` -- 虚部がゼロでない場合に発生します。

```ruby title="例"
p (0.75 + 0i).to_r   # => (3/4)
p (0.75 + 0ri).to_r  # => (3/4)
p (0.75 + 0.0i).to_r # => (3/4)
```

```ruby title="変換できない例"
# 虚部がゼロでない
(1 + 2i).to_r # ~> RangeError
```
