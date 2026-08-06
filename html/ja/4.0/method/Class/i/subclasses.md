# Class#subclasses

### def subclasses    -> [Class]

自身が直接のスーパークラスになっている(特異クラスを除く)クラスの配列を返します。
返り値の配列の順序は未定義です。

```ruby title="例"
class A; end
class B < A; end
class C < B; end
class D < A; end

p A.subclasses      # => [D, B]
p B.subclasses      # => [C]
p C.subclasses      # => []
```

- **SEE** [Class#superclass](../../../method/Class/i/superclass.md)
