# Set#hash

### def hash -> Integer
{: since=""}

self のハッシュ値を返します。

同じ要素を持つ集合は、要素の順序にかかわらず同じハッシュ値を返します。
そのため、Set を [Hash](../../../class/Hash.md) のキーとして使えます。

```ruby title="例"
p Set[1, 2].hash == Set[2, 1].hash # => true
h = {Set[1, 2] => :a}
p h[Set[2, 1]]                      # => :a
```

- **SEE** [Set#eql?](../../../method/Set/i/eql=3f.md), [Object#hash](../../../method/Object/i/hash.md)
