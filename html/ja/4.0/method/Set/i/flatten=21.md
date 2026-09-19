# Set#flatten!

### def flatten! -> self | nil

集合を再帰的かつ破壊的に平坦化します。集合の要素に変更が発生した場合には self を、そうでない場合には nil を返します。

- **raise** `ArgumentError` -- 集合の要素として self が再帰的に現れた場合に発生します。

```ruby
s = Set[Set[1,2], 3]
s.flatten!
p s           # => Set[1, 2, 3]
p s.flatten!  # => nil
```

- **SEE** [Set#flatten](../../../method/Set/i/flatten.md), [Array#flatten!](../../../method/Array/i/flatten=21.md)
