# Numeric#integer?

### def integer?    -> bool

`false` を返します。

[Integer](../../../class/Integer.md) では `true` を返すよう再定義されています。

数値として整数であるかを問うものではありません。

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

```ruby title="true を返す例"
p 1.integer? # => true
```

```ruby title="数学的には整数でも false を返す例"
p 1.0.integer?    # => false
p 1r.integer?     # => false
p (1+0i).integer? # => false
```

- **SEE** [Numeric#real?](../../../method/Numeric/i/real=3f.md)
