# RDoc::Context#set_visibility_for

### def set_visibility_for(methods, visibility, singleton = false) -> ()

methods で指定した [RDoc::AnyMethod](../../../class/RDoc=3a=3aAnyMethod.md)、[RDoc::Attr](../../../class/RDoc=3a=3aAttr.md) の内、
singleton で指定した条件と一致するメソッドすべての可視性を visibility
に設定します。

- **param** `methods` -- [RDoc::AnyMethod](../../../class/RDoc=3a=3aAnyMethod.md)、[RDoc::Attr](../../../class/RDoc=3a=3aAttr.md) オブジェクトの配
               列を指定します。

- **param** `visibility` -- 可視性を :public, :protected, :private の内のいずれか
                  で指定します。

- **param** `singleton` -- 特異メソッドの可視性を変更する場合は true、そうでない
                 場合は false を指定します。
