# Numeric#finite?

### def finite? -> bool

self の絶対値が有限値の場合に true を、そうでない場合に false を返します。

```ruby title="例"
p 10.finite?                    # => true
p 3r.finite?                    # => true

p Float::INFINITY.finite?       # => false
p Float::INFINITY.is_a?(Numeric)  # => true
```

- **SEE** [Numeric#infinite?](../../../method/Numeric/i/infinite=3f.md)
