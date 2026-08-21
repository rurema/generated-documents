# Numeric#phase

### def arg   -> 0 | Math::PI
### def angle -> 0 | Math::PI
### def phase -> 0 | Math::PI

`self` の複素数としての偏角（argument）を返します。

`self` が正の実数か `0.0` なら `0`、負の実数か `-0.0` なら [Math::PI](../../../method/Math/c/PI.md) となります。
（`-0.0` は [Float#negative?](../../../method/Float/i/negative=3f.md) では負とはみなされませんが、`arg` は符号ビットに従います）。

```ruby title="実数に対する arg の例"
p 1.arg    # => 0
p 0.arg    # => 0
p -1.arg   # => 3.141592653589793
p -0.0.arg # => 3.141592653589793
```

```ruby title="複素数に対する arg の例"
p 1i.arg # => 1.5707963267948966
```

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

- **SEE** [Complex#arg](../../../method/Complex/i/arg.md)
