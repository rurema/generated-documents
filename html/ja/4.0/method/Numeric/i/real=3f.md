# Numeric#real?

### def real?    -> bool

常に true を返します。([Complex](../../../class/Complex.md) またはそのサブクラスではないことを意味します。)

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

```ruby title="例"
p 10.real?             # => true
p -10.real?            # => true
p 0.1.real?            # => true
p (2/3r).real?         # => true
```

- **SEE** [Numeric#integer?](../../../method/Numeric/i/integer=3f.md)、[Complex#real?](../../../method/Complex/i/real=3f.md)
