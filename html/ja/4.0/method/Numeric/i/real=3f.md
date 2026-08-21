# Numeric#real?

### def real?    -> bool

`true` を返します。

[Complex](../../../class/Complex.md) では `false` を返すよう再定義されています。

つまり、`self` が「実数を表すクラスのインスタンス」であれば `true` を、そうでなければ `false` を返すものです。

「実数であるか」を返すものではありません（例参照）。

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

```ruby title="true を返す例"
# Integer, Float, Rational のインスタンスは `true` を返す
p -10.real?    # => true
p 0.1.real?    # => true
p (2/3r).real? # => true
```

```ruby title="false を返す例"
# Complex のインスタンスはたとえ虚部がゼロでも `false` を返す
p Complex(1, 0).real? # => false
```

- **SEE** [Numeric#integer?](../../../method/Numeric/i/integer=3f.md)、[Complex#real?](../../../method/Complex/i/real=3f.md)
