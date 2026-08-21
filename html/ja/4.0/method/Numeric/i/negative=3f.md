# Numeric#negative?

### def negative? -> bool

`self` が負の数なら `true` を、そうでないなら `false` を返します。

一般の複素数には正・負の概念が無いので [Complex](../../../class/Complex.md) では未定義化されています。

```ruby title="例"
p -1.negative? # => true
p 0.negative?  # => false
p 1.negative?  # => false
```

- **SEE** [Numeric#positive?](../../../method/Numeric/i/positive=3f.md)
