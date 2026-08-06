# RDoc::Context#add_class

### def add_class(class_type, name, superclass) -> RDoc::SingleClass | RDoc::NormalClass

引数で指定したクラスを追加します。

- **param** `class_type` -- 追加するクラス、モジュールを [RDoc::NormalClass](../../../class/RDoc=3a=3aNormalClass.md)、
                  [RDoc::SingleClass](../../../class/RDoc=3a=3aSingleClass.md)、[RDoc::NormalModule](../../../class/RDoc=3a=3aNormalModule.md) オ
                  ブジェクトのいずれかで指定します。

- **param** `name` -- クラス名を文字列で指定します。

- **param** `superclass` -- 追加するクラスの親クラスを [RDoc::NormalClass](../../../class/RDoc=3a=3aNormalClass.md) オ
                  ブジェクトで指定します。
