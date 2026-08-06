# Numeric#conj

### def conj      -> Numeric
### def conjugate -> Numeric

常に self を返します。

自身が [Complex](../../../class/Complex.md) かそのサブクラスのインスタンスの場合は、自身の共役複素数(実数の場合は常に自身)を返します。

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

```ruby title="例"
p 10.conj     # => 10
p 0.1.conj    # => 0.1
p (2/3r).conj # => (2/3)
```

- **SEE** [Complex#conj](../../../method/Complex/i/conj.md)
