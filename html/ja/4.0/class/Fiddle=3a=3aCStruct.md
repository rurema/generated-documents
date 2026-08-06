# class Fiddle::CStruct < Object

C の構造体を表すクラスです。

このクラスは直接は使わず、[Fiddle::Importer#struct](../method/Fiddle=3a=3aImporter/i/struct.md) を用いてこのクラスを継承したクラスを生成し、それを利用します。

[Fiddle::Importer#struct](../method/Fiddle=3a=3aImporter/i/struct.md) が生成するクラスには構造体の各メンバへのアクセサが定義されています。
このアクセサはシグネチャの型とメンバ名に従って定義されます。
例えば 

```ruby
require 'fiddle/import'
include Fiddle::Importer
S = struct(["long foo", "void* bar"])
```

とすると、 S#foo, S#foo= というアクセサが Integer とやりとりするように定義され、 S#bar, S#bar= というアクセサが Fiddle::Pointer
でやりとりするように定義されます。

このクラスは実際にはこのドキュメントに書かれているメソッドを保持していません。
[Fiddle::Importer#struct](../method/Fiddle=3a=3aImporter/i/struct.md) によって動的にメソッドが定義されます。
このドキュメントは説明の便宜のためだと考えてください。

## Class Methods

- [malloc](../method/Fiddle=3a=3aCStruct/s/malloc.md)
- [new](../method/Fiddle=3a=3aCStruct/s/new.md)
- [size](../method/Fiddle=3a=3aCStruct/s/size.md)

## Instance Methods

- [to_i](../method/Fiddle=3a=3aCStruct/i/to_i.md)
- [to_ptr](../method/Fiddle=3a=3aCStruct/i/to_ptr.md)
