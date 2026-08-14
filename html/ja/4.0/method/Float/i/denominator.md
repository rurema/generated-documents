# Float#denominator

### def denominator -> Integer

`self` を [Float#to_r](../../../method/Float/i/to_r.md) で [Rational](../../../class/Rational.md) に変換したときの分母（denominator）を返します。

```ruby title="例"
p 2.0.denominator # => 1
p 0.5.denominator # => 2

p 0.1.denominator # => 36028797018963968
# リテラル `0.1` で生成される Float オブジェクトは
# 1/10 からわずかにずれた値であるため
```

- **SEE** [Float#numerator](../../../method/Float/i/numerator.md)
