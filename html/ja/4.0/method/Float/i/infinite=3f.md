# Float#infinite?

### def infinite? -> 1 | -1 | nil

`self` が +∞ のとき `1`、-∞のとき `-1` を返します。それ以外は `nil` を返します。

```ruby title="例"
inf = 1.0/0
p inf            # => Infinity
p inf.infinite?  # => 1

inf = -1.0/0
p inf            # => -Infinity
p inf.infinite?  # => -1
```

- **SEE** [Float#finite?](../../../method/Float/i/finite=3f.md)
