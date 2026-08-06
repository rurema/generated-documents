# Numeric#quo

### def quo(other)    -> Rational | Float | Complex

self を other で割った商を返します。
整商を得たい場合は [Numeric#div](../../../method/Numeric/i/div.md) を使ってください。

[Numeric#fdiv](../../../method/Numeric/i/fdiv.md) が結果を [Float](../../../class/Float.md) で返すメソッドなのに対して quo はなるべく正確な数値を返すことを意図しています。
具体的には有理数の範囲に収まる計算では [Rational](../../../class/Rational.md) の値を返します。
[Float](../../../class/Float.md) や [Complex](../../../class/Complex.md) が関わるときはそれらのクラスになります。

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

- **param** `other` -- 自身を割る数を指定します。

```ruby title="例"
p 1.quo(3)    #=> (1/3)
p 1.0.quo(3)  #=> 0.3333333333333333
p 1.quo(3.0)  #=> 0.3333333333333333
p 1.quo(0.5)  #=> 2.0

p (1+1i).quo(1)  #=> ((1/1)+(1/1)*i)
p 1.quo(1+1i)    #=> ((1/2)-(1/2)*i)
```

- **SEE** [Numeric#fdiv](../../../method/Numeric/i/fdiv.md)
