# Complex#angle

### def arg   -> Float
### def angle -> Float
### def phase -> Float

`self` の偏角を [-π,π] の範囲で返します。

```ruby title="例"
p Complex.polar(3, Math::PI/2).arg # => 1.5707963267948966
```

非正の実軸付近での挙動に注意してください。以下の例のように虚部が 0.0 と
-0.0 では値が変わります。

```ruby title="例"
p Complex(-1, 0).arg            # =>  3.141592653589793
p Complex(-1, -0).arg           # =>  3.141592653589793
p Complex(-1, -0.0).arg         # => -3.141592653589793

p Complex(0, 0.0).arg           # =>  0.0
p Complex(0, -0.0).arg          # => -0.0
p Complex(-0.0, 0).arg          # =>  3.141592653589793
p Complex(-0.0, -0.0).arg       # => -3.141592653589793
```

メソッド名の `arg` は argument（偏角）に由来しますが、「引数」の argument と紛らわしいためか、`argument` というエイリアスは用意されていません。

- **SEE** [Numeric#arg](../../../method/Numeric/i/arg.md)
