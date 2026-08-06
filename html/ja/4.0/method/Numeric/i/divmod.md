# Numeric#divmod

### def divmod(other)    -> [Numeric]

self を other で割った商 q と余り r を、
[q, r] という 2 要素の配列にして返します。
商 q は常に整数ですが、余り r は整数であるとは限りません。

ここで、商 q と余り r は、

  - self == other * q + r
と
  - other > 0 のとき:  0     <= r < other
  - other < 0 のとき:  other <  r <= 0
  - q は整数
をみたす数です。
divmod が返す商は [Numeric#div](../../../method/Numeric/i/div.md) と同じです。
また余りは、[Numeric#modulo](../../../method/Numeric/i/modulo.md) と同じです。
このメソッドは、メソッド / と % によって定義されています。

- **param** `other` -- 自身を割る数を指定します。

```ruby title="例"
p 11.divmod(3)       #=> [3, 2]
p (11.5).divmod(3.5) #=> [3, 1.0]
p 11.divmod(-3)      #=> [-4, -1]
p 11.divmod(3.5)     #=> [3, 0.5]
p (-11).divmod(3.5)  #=> [-4, 3.0]
```

- **SEE** [Numeric#div](../../../method/Numeric/i/div.md), [Numeric#modulo](../../../method/Numeric/i/modulo.md)
