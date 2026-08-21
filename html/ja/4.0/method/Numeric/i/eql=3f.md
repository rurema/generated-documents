# Numeric#eql?

### def eql?(other) -> bool

`self` と `other` のクラスが等しくかつ `==` メソッドで比較して等しい場合に `true` を返します。
そうでない場合に `false` を返します。

`Numeric` のサブクラスは、`eql?` で比較して等しい数値同士が同じハッシュ値を返すように `hash` メソッドを適切に定義する必要があります。

- **param** `other` -- 比較対象

```ruby title="例"
p 1.eql?(1)    # => true
p 1.eql?(1.0)  # => false
p 1 == 1.0     # => true
```

- **SEE** [Object#equal?](../../../method/Object/i/equal=3f.md), [Object#eql?](../../../method/Object/i/eql=3f.md), [Object#==](../../../method/Object/i/=3d=3d.md), [Object#===](../../../method/Object/i/=3d=3d=3d.md)
