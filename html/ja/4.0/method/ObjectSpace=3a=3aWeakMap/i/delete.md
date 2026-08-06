# ObjectSpace::WeakMap#delete

### def delete(key) -> object | nil
### def delete(key) {|key| ... } -> object

引数 key に対応するエントリを取り除きます。

- **param** `key` -- 取り除くエントリの参照元のオブジェクトを指定します。

- **return** -- 取り除かれたエントリの参照先のオブジェクトを返します。
        key に対応するエントリが存在しない場合は nil を返します。

ブロックを指定した場合、key に対応するエントリが存在しない時に限りブロックが評価され、その結果を返します。key に対応するエントリが存在する場合、ブロックは評価されません。

```ruby title="例"
weak_map = ObjectSpace::WeakMap.new
key = "foo"
weak_map[key] = "test"

p weak_map.delete(key) # => "test"
p weak_map[key]        # => nil
p weak_map.delete(key) # => nil

p weak_map.delete("bar") { |k| "#{k} not found" } # => "bar not found"
```

- **SEE** [ObjectSpace::WeakMap#\[\]=](../../../method/ObjectSpace=3a=3aWeakMap/i/=5b=5d=3d.md)
