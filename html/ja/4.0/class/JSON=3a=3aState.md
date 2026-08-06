# class JSON::State < Object

Ruby オブジェクトから JSON 形式の文字列を生成する間、
JSON 形式の文字列を生成するための設定を保持しておくために使用するクラスです。

実体は [JSON::Ext::Generator::State](../class/JSON=3a=3aExt=3a=3aGenerator=3a=3aState.md) であり、JSON::State はそれを指す別名(定数)です。
そのため、生成したインスタンスの `class` メソッドや `inspect` の結果には
`JSON::Ext::Generator::State` と表示されます。

## Class Methods

- [from_state](../method/JSON=3a=3aState/s/from_state.md)
- [new](../method/JSON=3a=3aState/s/new.md)

## Instance Methods

- [\[\]](../method/JSON=3a=3aState/i/=5b=5d.md)
- [\[\]=](../method/JSON=3a=3aState/i/=5b=5d=3d.md)
- [allow_nan?](../method/JSON=3a=3aState/i/allow_nan=3f.md)
- [array_nl](../method/JSON=3a=3aState/i/array_nl.md)
- [array_nl=](../method/JSON=3a=3aState/i/array_nl=3d.md)
- [ascii_only?](../method/JSON=3a=3aState/i/ascii_only=3f.md)
- [buffer_initial_length](../method/JSON=3a=3aState/i/buffer_initial_length.md)
- [buffer_initial_length=](../method/JSON=3a=3aState/i/buffer_initial_length=3d.md)
- [check_circular?](../method/JSON=3a=3aState/i/check_circular=3f.md)
- [configure](../method/JSON=3a=3aState/i/configure.md)
- [merge](../method/JSON=3a=3aState/i/merge.md)
- [depth](../method/JSON=3a=3aState/i/depth.md)
- [depth=](../method/JSON=3a=3aState/i/depth=3d.md)
- [generate](../method/JSON=3a=3aState/i/generate.md)
- [indent](../method/JSON=3a=3aState/i/indent.md)
- [indent=](../method/JSON=3a=3aState/i/indent=3d.md)
- [max_nesting](../method/JSON=3a=3aState/i/max_nesting.md)
- [max_nesting=](../method/JSON=3a=3aState/i/max_nesting=3d.md)
- [object_nl](../method/JSON=3a=3aState/i/object_nl.md)
- [object_nl=](../method/JSON=3a=3aState/i/object_nl=3d.md)
- [space](../method/JSON=3a=3aState/i/space.md)
- [space=](../method/JSON=3a=3aState/i/space=3d.md)
- [space_before](../method/JSON=3a=3aState/i/space_before.md)
- [space_before=](../method/JSON=3a=3aState/i/space_before=3d.md)
- [to_h](../method/JSON=3a=3aState/i/to_h.md)
- [to_hash](../method/JSON=3a=3aState/i/to_hash.md)
