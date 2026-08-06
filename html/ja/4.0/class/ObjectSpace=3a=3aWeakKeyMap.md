# class ObjectSpace::WeakKeyMap < Object

キーへの弱参照を持つ、キーと値の組を保持するクラスです。

キーは他から参照されなくなると GC の対象になり、そのときキーと値の組は
map から取り除かれます。値への参照は強参照なので、map に入っている間は
GC されません。

[ObjectSpace::WeakMap](../class/ObjectSpace=3a=3aWeakMap.md) との違いは以下の 3 点です。

  - 値への参照が強参照です。map に入っている間は GC されません。
  - キーの比較が同一性([Object#equal?](../method/Object/i/equal=3f.md))ではなく等値性([Object#eql?](../method/Object/i/eql=3f.md))で
    行われます。
  - GC の対象になるオブジェクトだけをキーにできます。

```ruby
map = ObjectSpace::WeakKeyMap.new
key = "name"
map[key] = 1

# キーは等値性で比較されるので、別のオブジェクトでも引ける
p map["name"] # => 1

key = nil
GC.start
# キーへの参照が無くなったので、キーと値の組が取り除かれる
p map["name"] # => nil
```

上の例の [GC.start](../method/GC/s/start.md) は説明のために書いたもので、いつでもこのとおりに
GC されるとは限りません。

同じ値を表すオブジェクトを 1 つだけ保持しておきたい場合、たとえば軽量な値オブジェクトのキャッシュを実装する用途に向いています。
[ObjectSpace::WeakKeyMap#getkey](../method/ObjectSpace=3a=3aWeakKeyMap/i/getkey.md) を参照してください。

## Instance Methods

- [\[\]](../method/ObjectSpace=3a=3aWeakKeyMap/i/=5b=5d.md)
- [\[\]=](../method/ObjectSpace=3a=3aWeakKeyMap/i/=5b=5d=3d.md)
- [clear](../method/ObjectSpace=3a=3aWeakKeyMap/i/clear.md)
- [delete](../method/ObjectSpace=3a=3aWeakKeyMap/i/delete.md)
- [getkey](../method/ObjectSpace=3a=3aWeakKeyMap/i/getkey.md)
- [inspect](../method/ObjectSpace=3a=3aWeakKeyMap/i/inspect.md)
- [key?](../method/ObjectSpace=3a=3aWeakKeyMap/i/key=3f.md)
