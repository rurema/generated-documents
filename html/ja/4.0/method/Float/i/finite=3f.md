# Float#finite?

### def finite? -> bool

`self` が ∞, -∞, NaN のどれでもない場合に `true` を返します。
それ以外の場合に `false` を返します。

```ruby title="例"
p 3.14.finite? # => true
inf = 1.0/0
p inf.finite? # => false
```

- **SEE** [Float#infinite?](../../../method/Float/i/infinite=3f.md)
