# Set#delete

### def delete(o) -> self

集合からオブジェクト o を削除します。

常に self を返します。

- **param** `o` -- 削除対象のオブジェクトを指定します。

```ruby
s = Set[10, 20, 30]
s.delete(10)
p s              # => Set[20, 30]
```

- **SEE** [Set#delete?](../../../method/Set/i/delete=3f.md)
