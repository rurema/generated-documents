# ObjectSpace::WeakMap#values

### def values -> [object]
{: since="2.1.0"}

保持しているエントリの参照先オブジェクトからなる配列を返します。

GC によって回収されたエントリの値は含まれません。返される配列の要素の順序は不定です。

```ruby title="例"
weak_map = ObjectSpace::WeakMap.new
key = "text"
weak_map[key] = "test"

p weak_map.values # => ["test"]
```

- **SEE** [ObjectSpace::WeakMap#keys](../../../method/ObjectSpace=3a=3aWeakMap/i/keys.md)
