# class Class < Module

クラスのクラスです。

より正確に言えば、個々のクラスはそれぞれメタクラスと呼ばれる名前のないクラスをクラスとして持っていて、Class はそのメタクラスのクラスです。この関係は少し複雑ですが、Ruby を利用するにあたっては特に重要ではありません。

クラスとモジュールには

  - クラスはインスタンスを作成できるが、モジュールはできない。
  - モジュールを他のモジュールやクラスにインクルードすることはできるが、クラスをインクルードすることはできない。

という違いがありますが、それ以外のほとんどの機能は [Module](../class/Module.md) から継承されています。Module のメソッドのうち

  - [Module#module_function](../method/Module/i/module_function.md)
  - [Module#extend_object](../method/Module/i/extend_object.md)
  - [Module#append_features](../method/Module/i/append_features.md)
  - [Module#prepend_features](../method/Module/i/prepend_features.md)
  - [Module#refine](../method/Module/i/refine.md)

は Class では未定義にされています。

## Class Methods

- [new](../method/Class/s/new.md)

## Instance Methods

- [_load](../method/Class/i/_load.md)
- [allocate](../method/Class/i/allocate.md)
- [attached_object](../method/Class/i/attached_object.md)
- [json_creatable?](../method/Class/i/json_creatable=3f.md)
- [new](../method/Class/i/new.md)
- [subclasses](../method/Class/i/subclasses.md)
- [superclass](../method/Class/i/superclass.md)

## Private Instance Methods

- [inherited](../method/Class/i/inherited.md)
