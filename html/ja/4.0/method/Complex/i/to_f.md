# Complex#to_f

### def to_f -> Float

自身を [Float](../../../class/Float.md) に変換します。

- **raise** `RangeError` -- 虚部が実数か、0 ではない場合に発生します。

```ruby title="例"
p Complex(3).to_f  # => 3.0
p Complex(3.5).to_f  # => 3.5
Complex(3, 2).to_f # ~> RangeError
```
