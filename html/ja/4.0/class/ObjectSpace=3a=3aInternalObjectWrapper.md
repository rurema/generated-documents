# class ObjectSpace::InternalObjectWrapper < Object

Ruby の内部オブジェクトをラップするクラスです。

内部オブジェクトとは、include したモジュールを表す iclass(`T_ICLASS`)のように、CRuby の実装の都合で作られ、通常は Ruby のコードからは直接見えないオブジェクトです。

[ObjectSpace?.reachable_objects_from](../method/ObjectSpace/m/reachable_objects_from.md) と [ObjectSpace?.reachable_objects_from_root](../method/ObjectSpace/m/reachable_objects_from_root.md) は、到達できるオブジェクトが内部オブジェクトのときにこのクラスのインスタンスを返します。[ObjectSpace?.internal_super_of](../method/ObjectSpace/m/internal_super_of.md) など他の ObjectSpace のメソッドもラップされた内部オブジェクトを返すことがあります。

このクラスはデバッグやイントロスペクションのためのものです。アプリケーションのコードでは使わないでください。ラップされるオブジェクトやこのクラスの詳細は処理系に依存し、将来のバージョンで変更される可能性があります。

## Instance Methods

- [inspect](../method/ObjectSpace=3a=3aInternalObjectWrapper/i/inspect.md)
- [internal_object_id](../method/ObjectSpace=3a=3aInternalObjectWrapper/i/internal_object_id.md)
- [type](../method/ObjectSpace=3a=3aInternalObjectWrapper/i/type.md)
