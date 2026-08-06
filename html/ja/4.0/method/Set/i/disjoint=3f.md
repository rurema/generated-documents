# Set#disjoint?

### def disjoint?(set) -> bool

self と set が互いに素な集合である場合に true を返します。

逆に self と set の共通集合かを確認する場合には [Set#intersect?](../../../method/Set/i/intersect=3f.md) を使用します。

- **param** `self` -- Set オブジェクトを指定します。
- **raise** `ArgumentError` -- 引数が Set オブジェクトでない場合に発生します。

```ruby
p Set[1, 2, 3].disjoint? Set[3, 4] # => false
p Set[1, 2, 3].disjoint? Set[4, 5] # => true
```

- **SEE** [Set#intersect?](../../../method/Set/i/intersect=3f.md)
