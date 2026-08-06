# Module#constants

### def constants(inherit = true) -> [Symbol]

そのモジュール(またはクラス)で定義されている定数名の配列を返します。

inherit に真を指定するとスーパークラスやインクルードしているモジュールの定数も含みます。
[Object](../../../class/Object.md) のサブクラスの場合、Objectやそのスーパークラスで定義されている定数は含まれません。 Object.constants とすると Object クラスで定義された定数の配列が得られます。

得られる定数の順序は保証されません。

- **param** `inherit` -- true を指定するとスーパークラスや include したモジュールで
       定義された定数が対象にはなります。false を指定した場合 対象にはなりません。

- **SEE** [Module.constants](../../../method/Module/s/constants.md), [Kernel?.local_variables](../../../method/Kernel/m/local_variables.md), [Kernel?.global_variables](../../../method/Kernel/m/global_variables.md), [Object#instance_variables](../../../method/Object/i/instance_variables.md), [Module#class_variables](../../../method/Module/i/class_variables.md)

```ruby title="Module.constants と Module#constants の違い"
# 出力の簡略化のため起動時の定数一覧を取得して後で差し引く
$clist = Module.constants

class Circle
  PI = 3.14
end
class Shape
  SIDES = 4

  # Shape は SIDES を含む
  p constants                         # => [:SIDES]
  # 出力に PI は含まれない
  p Module.constants - $clist         # => [:SIDES, :Circle, :Shape]
  class Square
    # Square は定数を含まない
    p constants                       # => []

    # ネストしたクラスでは、外側のクラスで定義した定数は
    # 参照可能なので、SIDES は、Module.constants には含まれる
    # (クラス Square も Shape の定数なので同様)
    p Module.constants - $clist       # => [:Square, :SIDES, :Circle, :Shape]
  end
end
```
