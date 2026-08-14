# Float#arg

### def arg   -> 0 | Float
### def angle -> 0 | Float
### def phase -> 0 | Float

`self` の偏角を返します。

`self` が正の数か `0.0` なら `0`、負の数か `-0.0` なら [Math::PI](../../../method/Math/c/PI.md) となります。
（`-0.0` は [Float#negative?](../../../method/Float/i/negative=3f.md) では負とはみなされませんが、`arg` は符号ビットに従います）。

`self` が NaN の場合は NaN を返します。

```ruby title="例"
p 1.0.arg  # => 0
p 0.0.arg  # => 0
p -1.0.arg # => 3.141592653589793
p -0.0.arg # => 3.141592653589793
p Float::NAN.arg # => NaN
```
