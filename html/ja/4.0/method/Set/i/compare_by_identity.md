# Set#compare_by_identity

### def compare_by_identity -> self

集合の要素の一致判定をオブジェクトの同一性で判定するように変更します。

デフォルトでは、要素の内容が [Object#eql?](../../../method/Object/i/eql=3f.md) で等しければ同じ要素とみなされますが、より厳密に
[Object#object_id](../../../method/Object/i/object_id.md) が一致しているかどうかを条件とするように self を変更します。

self が変化する破壊的メソッドです。

- **return** -- self を返します。

```ruby title="例"
s1 = Set["a", "b"]
a  = "a"

p s1.compare_by_identity? # => false
p s1.include?(a)          # => true

s1.compare_by_identity

p s1.compare_by_identity? # => true
p s1.include?(a)          # => false
p s1.include?("a")        # => false
```

- **SEE** [Set#compare_by_identity?](../../../method/Set/i/compare_by_identity=3f.md), [Hash#compare_by_identity](../../../method/Hash/i/compare_by_identity.md)
