# Range#begin

### def begin -> object

始端の要素を返します。
始端を持たない範囲オブジェクトの場合、nil を返します。

```ruby title="例"
# 始端を持つ場合
p (1..5).begin # => 1
p (1..0).begin # => 1

# 始端を持たない場合
p (..5).begin # => nil
```

- **SEE** [Range#end](../../../method/Range/i/end.md), [Range#first](../../../method/Range/i/first.md)
