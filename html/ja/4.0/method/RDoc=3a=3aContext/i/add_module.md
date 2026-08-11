# RDoc::Context#add_module

### def add_module(class_type, name) -> RDoc::NormalModule | RDoc::SingleClass | RDoc::NormalClass

引数で指定したモジュールを追加します。

ただし、クラスとして既に同名のものが登録されていた場合は、何もせずにそのクラスを返します。

- **param** `class_type` -- 追加するクラス、モジュールを [RDoc::NormalClass](../../../class/RDoc=3a=3aNormalClass.md)、
                  [RDoc::SingleClass](../../../class/RDoc=3a=3aSingleClass.md)、[RDoc::NormalModule](../../../class/RDoc=3a=3aNormalModule.md) オブジェクトのいずれかで指定します。

- **param** `name` -- クラス名を文字列で指定します。

- **SEE** [RDoc::Context#add_class](../../../method/RDoc=3a=3aContext/i/add_class.md)
