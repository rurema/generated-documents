# Float#positive?

### def positive? -> bool

`self` が正の数なら `true` を、そうでないなら `false` を返します。

```ruby title="例"
p 0.1.positive? # => true
p 0.0.positive? # => false
p -0.1.positive?  # => false

# 無限大も正
p Float::INFINITY.positive? # => true

# NaN は正ではない
p Float::NAN.positive? # => false
```

- **SEE** [Float#negative?](../../../method/Float/i/negative=3f.md)
