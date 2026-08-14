# Float#numerator

### def numerator -> Integer

`self` を [Float#to_r](../../../method/Float/i/to_r.md) で [Rational](../../../class/Rational.md) に変換したときの分子（numerator）を返します。

```ruby title="例"
p 2.0.numerator # => 2
p 0.5.numerator # => 1

p 0.1.numerator # => 3602879701896397
# リテラル `0.1` で生成される Float オブジェクトは
# 1/10 からわずかにずれた値であるため
```

- **SEE** [Float#denominator](../../../method/Float/i/denominator.md)
