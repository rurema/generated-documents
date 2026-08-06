# Numeric#to_c

### def to_c -> Complex

自身を複素数 ([Complex](../../../class/Complex.md)) に変換します。Complex(self, 0) を返します。

```ruby title="例"
p 1.to_c            # => (1+0i)
p -1.to_c           # => (-1+0i)
p 1.0.to_c          # => (1.0+0i)
p (1/2r).to_c       # => ((1/2)+0i)
```

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。
