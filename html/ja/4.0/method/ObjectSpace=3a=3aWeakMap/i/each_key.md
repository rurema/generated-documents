# ObjectSpace::WeakMap#each_key

### def each_key {|key| ... } -> self
{: since="2.1.0"}

保持しているエントリの参照元オブジェクトを引数としてブロックを評価します。

GC によって参照先が回収されたエントリは反復の対象になりません。反復の順序は不定です。

[Hash](../../../class/Hash.md) など他の反復可能なクラスと異なり、ブロックを省略しても [Enumerator](../../../class/Enumerator.md) は返しません。エントリが1つ以上ある状態でブロックを指定せずに呼び出すと
LocalJumpError が発生します。

```ruby title="例"
weak_map = ObjectSpace::WeakMap.new
key = "text"
weak_map[key] = "test"

weak_map.each_key { |k| p k } # => "text"
```

- **SEE** [ObjectSpace::WeakMap#each](../../../method/ObjectSpace=3a=3aWeakMap/i/each.md), [ObjectSpace::WeakMap#each_value](../../../method/ObjectSpace=3a=3aWeakMap/i/each_value.md)
