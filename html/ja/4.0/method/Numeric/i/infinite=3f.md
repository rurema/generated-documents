# Numeric#infinite?

### def infinite? -> nil

常に nil を返します。
自身が [Float](../../../class/Float.md) か[Complex](../../../class/Complex.md)、もしくはそのサブクラスのインスタンスの場合は、self の絶対値が負の無限大の場合に-1を、正の無限大の場合に1を、有限値の場合に nil を返します。

```ruby title="例"
p 10.infinite?   # => nil
p (3r).infinite? # => nil
```

- **SEE** [Numeric#finite?](../../../method/Numeric/i/finite=3f.md)、[Float#infinite?](../../../method/Float/i/infinite=3f.md)、[Complex#infinite?](../../../method/Complex/i/infinite=3f.md)
