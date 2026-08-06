# Set#intersect?

### def intersect?(set) -> bool

self と set の共通要素がある場合に true を返します。

- **param** `self` -- Set オブジェクトを指定します。
- **raise** `ArgumentError` -- 引数が Set オブジェクトでない場合に発生します。

```ruby
p Set[1, 2, 3].intersect?(Set[3, 4])  # => true
p Set[1, 2, 3].intersect?(Set[4, 5])  # => false
```

- **SEE** [Set#intersection](../../../method/Set/i/intersection.md), [Set#disjoint?](../../../method/Set/i/disjoint=3f.md)
