# Numeric#to_c

### def to_c -> Complex

`Complex(self, 0)` を返します。

[Complex](../../../class/Complex.md) では `self` を返すよう再定義されています。

つまり、`self` を [Complex](../../../class/Complex.md) に型変換するメソッドです。

```ruby title="例"
p 1.to_c            # => (1+0i)
p -1.to_c           # => (-1+0i)
p 1.0.to_c          # => (1.0+0i)
p (1/2r).to_c       # => ((1/2)+0i)
```

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。
