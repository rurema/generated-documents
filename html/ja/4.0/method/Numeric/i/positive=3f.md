# Numeric#positive?

### def positive? -> bool

`self` が正の数なら `true` を、そうでないなら `false` を返します。

一般の複素数には正・負の概念が無いので [Complex](../../../class/Complex.md) では未定義化されています。

```ruby title="例"
p 1.positive?  # => true
p 0.positive?  # => false
p -1.positive? # => false
```

- **SEE** [Numeric#negative?](../../../method/Numeric/i/negative=3f.md)
