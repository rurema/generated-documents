# ObjectSpace::WeakMap#each

### def each {|key, value| ... } -> self
{: since="2.1.0"}
### def each_pair {|key, value| ... } -> self
{: since="2.1.0"}

保持しているエントリの参照元オブジェクトと参照先オブジェクトを引数としてブロックを評価します。

GC によって参照先が回収されたエントリは反復の対象になりません。反復の順序は不定です。

[Hash](../../../class/Hash.md) など他の反復可能なクラスと異なり、ブロックを省略しても [Enumerator](../../../class/Enumerator.md) は返しません。エントリが1つ以上ある状態でブロックを指定せずに呼び出すと
LocalJumpError が発生します。

each_pair は each のエイリアスです。

```ruby title="例"
weak_map = ObjectSpace::WeakMap.new
key = "text"
weak_map[key] = "test"

weak_map.each { |k, v| p [k, v] } # => ["text", "test"]
```

- **SEE** [ObjectSpace::WeakMap#each_key](../../../method/ObjectSpace=3a=3aWeakMap/i/each_key.md), [ObjectSpace::WeakMap#each_value](../../../method/ObjectSpace=3a=3aWeakMap/i/each_value.md)
