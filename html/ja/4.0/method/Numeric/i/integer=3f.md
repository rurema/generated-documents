# Numeric#integer?

### def integer?    -> bool

自身が [Integer](../../../class/Integer.md) かそのサブクラスのインスタンスの場合にtrue を返します。そうでない場合に false を返します。

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

```ruby title="例"
p (1.0).integer? # => false
p (1).integer? # => true
```

- **SEE** [Numeric#real?](../../../method/Numeric/i/real=3f.md)
