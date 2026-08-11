# Numeric#fdiv

### def fdiv(other)   -> Float | Complex

self を other で割った商を [Float](../../../class/Float.md) で返します。
ただし [Complex](../../../class/Complex.md) が関わる場合は例外です。
その場合も成分は Float になります。

self が [Integer](../../../class/Integer.md) や [Rational](../../../class/Rational.md) で、other が虚部を持つ [Complex](../../../class/Complex.md)
の場合は、商を [Float](../../../class/Float.md) に変換できないため [RangeError](../../../class/RangeError.md) が発生します。

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

- **param** `other` -- 自身を割る数を指定します。

```ruby title="例"
p 1.fdiv(3)      # => 0.3333333333333333
p (1+1i).fdiv 1  # => (1.0+1.0i)
1.fdiv(1+1i)   # ~> RangeError: can't convert 0.5-0.5i into Float
```

- **SEE** [Numeric#quo](../../../method/Numeric/i/quo.md)
