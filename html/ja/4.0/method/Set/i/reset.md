# Set#reset

### def reset -> self

キーのハッシュ値を再計算します。

既存の要素の変更後、内部状態をリセットして self を返します。

要素はインデックスし直され、重複削除されます。

```ruby
array = [1]
set = Set[array]
p set  # => Set[[1]]
array << 2
set.add(array)
p set  # => Set[[1, 2], [1, 2]]
set.reset
p set  # => Set[[1, 2]]
```

- **SEE** [Hash#rehash](../../../method/Hash/i/rehash.md)
