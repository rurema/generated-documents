# Complex#fdiv

### def fdiv(other) -> Complex

self を other で割った商を返します。
実部と虚部が共に [Float](../../../class/Float.md) の値になります。

- **param** `other` -- 自身を割る数

```ruby title="例"
p Complex(11, 22).fdiv(3) # => (3.6666666666666665+7.333333333333333i)
p Complex(11, 22).quo(3)  # => ((11/3)+(22/3)*i)
```

- **SEE** [Complex#quo](../../../method/Complex/i/quo.md)
