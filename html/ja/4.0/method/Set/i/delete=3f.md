# Set#delete?

### def delete?(o) -> self | nil

集合からオブジェクト o を削除します。

集合の要素が削除された場合には self を、変化がなかった場合には nil を返します。

- **param** `o` -- 削除対象のオブジェクトを指定します。

```ruby
s = Set[20, 30]
p s.delete?(20)  # => Set[30]
p s.delete?(10)  # => nil
```

- **SEE** [Set#delete](../../../method/Set/i/delete.md)
