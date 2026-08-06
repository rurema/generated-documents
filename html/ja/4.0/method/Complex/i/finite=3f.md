# Complex#finite?

### def finite? -> bool

実部と虚部の両方が有限値の場合に true を、そうでない場合に false を返します。

```ruby title="例"
p (1 + 1i).finite?               # => true
p (Float::INFINITY + 1i).finite? # => false
```

- **SEE** [Complex#infinite?](../../../method/Complex/i/infinite=3f.md)
