# Set#flatten

### def flatten -> Set

集合を再帰的に平坦化した集合を新しく作成し、それを返します。

- **raise** `ArgumentError` -- 集合の要素として self が再帰的に現れた場合に発生します。

```ruby
s = Set[Set[1,2], 3]
p s.flatten # => Set[1, 2, 3]
p s         # => Set[Set[1, 2], 3]
```

- **SEE** [Set#flatten!](../../../method/Set/i/flatten=21.md), [Array#flatten](../../../method/Array/i/flatten.md)
