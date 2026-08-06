# RDoc::TopLevel#add_class_or_module

### def add_class_or_module(collection, class_type, name, superclass) -> RDoc::NormalClass | RDoc::SingleClass | RDoc::NormalModule

collection に name で指定したクラス、モジュールを追加します。

- **param** `collection` -- クラス、モジュールを追加する先を [Hash](../../../class/Hash.md) オブジェ
                  クトで指定します。

- **param** `class_type` -- 追加するクラス、モジュールを [RDoc::NormalClass](../../../class/RDoc=3a=3aNormalClass.md)、
                  [RDoc::SingleClass](../../../class/RDoc=3a=3aSingleClass.md)、[RDoc::NormalModule](../../../class/RDoc=3a=3aNormalModule.md) オ
                  ブジェクトのいずれかで指定します。

- **param** `name` -- クラス名を文字列で指定します。

- **param** `superclass` -- 追加するクラスの親クラスを [RDoc::NormalClass](../../../class/RDoc=3a=3aNormalClass.md) オ
                  ブジェクトで指定します。

既に登録済みであった場合は、引数で指定した情報で内容を更新します。ただし、`RDoc::CodeObject#done_documenting` が true を返す場合、何も行われません。
