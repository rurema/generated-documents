# Numeric#real

### def real     -> Numeric

自身を返します。

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

```ruby title="例"
p 10.real             # => 10
p -10.real            # => -10
p 0.1.real            # => 0.1
p (2/3r).real         # => (2/3)
```

- **SEE** [Numeric#imag](../../../method/Numeric/i/imag.md)、[Complex#real](../../../method/Complex/i/real.md)
