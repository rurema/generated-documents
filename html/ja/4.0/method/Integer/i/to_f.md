# Integer#to_f

### def to_f -> Float

`self` を浮動小数点数([Float](../../../class/Float.md))に変換します。

`self` が [Float](../../../class/Float.md) の範囲に収まらない場合、[Float::INFINITY](../../../method/Float/c/INFINITY.md) を返します。

```ruby
p 1.to_f                     # => 1.0
p (Float::MAX.to_i * 2).to_f # => Infinity
p (-Float::MAX.to_i * 2).to_f  # => -Infinity
```
