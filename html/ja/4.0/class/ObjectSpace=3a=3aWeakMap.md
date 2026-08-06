# class ObjectSpace::WeakMap < Object

GC の対象になるオブジェクトへの weak reference を持つクラスです。
[WeakRef](../class/WeakRef.md) クラスの内部で使用されているほか、[ObjectSpace?._id2ref](../method/ObjectSpace/m/_id2ref.md) が
deprecated になった Ruby 4.0 以降では、オブジェクト ID からオブジェクトを引く用途([Object#object_id](../method/Object/i/object_id.md) をキーとしてオブジェクトを保持しておく方法)
の代替としても案内されています。詳しくは [ObjectSpace?._id2ref](../method/ObjectSpace/m/_id2ref.md) を参照してください。

キーだけを弱参照にし、値は強参照で保持するものとして
[ObjectSpace::WeakKeyMap](../class/ObjectSpace=3a=3aWeakKeyMap.md) があります。
このクラスと違い、キーは同一性ではなく等値性で比較されます。

## Instance Methods

- [\[\]](../method/ObjectSpace=3a=3aWeakMap/i/=5b=5d.md)
- [\[\]=](../method/ObjectSpace=3a=3aWeakMap/i/=5b=5d=3d.md)
- [delete](../method/ObjectSpace=3a=3aWeakMap/i/delete.md)
- [each](../method/ObjectSpace=3a=3aWeakMap/i/each.md)
- [each_pair](../method/ObjectSpace=3a=3aWeakMap/i/each_pair.md)
- [each_key](../method/ObjectSpace=3a=3aWeakMap/i/each_key.md)
- [each_value](../method/ObjectSpace=3a=3aWeakMap/i/each_value.md)
- [include?](../method/ObjectSpace=3a=3aWeakMap/i/include=3f.md)
- [key?](../method/ObjectSpace=3a=3aWeakMap/i/key=3f.md)
- [member?](../method/ObjectSpace=3a=3aWeakMap/i/member=3f.md)
- [inspect](../method/ObjectSpace=3a=3aWeakMap/i/inspect.md)
- [keys](../method/ObjectSpace=3a=3aWeakMap/i/keys.md)
- [length](../method/ObjectSpace=3a=3aWeakMap/i/length.md)
- [size](../method/ObjectSpace=3a=3aWeakMap/i/size.md)
- [values](../method/ObjectSpace=3a=3aWeakMap/i/values.md)
