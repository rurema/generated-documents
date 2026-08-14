# Float#zero?

### def zero?  -> bool

`self` がゼロなら `true` を、そうでなければ `false` を返します。

```ruby title="例"
p 0.0.zero?            # => true
p -0.0.zero?           # => true
p Float::EPSILON.zero? # => false
```
