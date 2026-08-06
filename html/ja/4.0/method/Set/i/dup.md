# Set#dup

### def clone -> Set
### def dup -> Set

集合を複製して返します。

dup は、集合の内容のみコピーします。
clone は、それに加えて、freeze 情報と特異メソッドをコピーします。
いずれも共通して、集合の要素そのものはコピーしません。

```ruby
s1 = Set[10, 20]
s2 = s1.dup
s2 << 30
p s1 # => Set[10, 20]
p s2 # => Set[10, 20, 30]
```

- **SEE** [Object#clone](../../../method/Object/i/clone.md)
