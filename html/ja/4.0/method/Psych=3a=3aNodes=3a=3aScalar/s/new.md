# Psych::Nodes::Scalar.new

### def Psych::Nodes::Scalar.new(value, anchor=nil, tag=nil, plain=true, quoted=false, style=ANY) -> Psych::Nodes:Scalar

Scalar オブジェクトを生成します。

value は scalar の値を文字列で指定します。

anchor には scalar に付加されている anchor を文字列で指定します。
anchor を付けない場合には nil を指定します。

tag には scalar に付加されている tag を文字列で指定します。
tag を付けない場合には nil を指定します。

plain は plain style であるかどうか、quoted は quoted style であるかどうかを指定します。style には node の style を整数値で渡します。
style は次の値のいずれかです。
  - [Psych::Nodes::Scalar::ANY](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/ANY.md)
  - [Psych::Nodes::Scalar::PLAIN](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/PLAIN.md)
  - [Psych::Nodes::Scalar::SINGLE_QUOTED](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/SINGLE_QUOTED.md)
  - [Psych::Nodes::Scalar::DOUBLE_QUOTED](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/DOUBLE_QUOTED.md)
  - [Psych::Nodes::Scalar::LITERAL](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/LITERAL.md)
  - [Psych::Nodes::Scalar::FOLDED](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/FOLDED.md)

- **param** `value` -- スカラー値
- **param** `anchor` -- 関連付けられた anchor の名前
- **param** `tag` -- タグ名
- **param** `plain` -- plain style であるかどうか
- **param** `quoted` -- quoted style であるかどうか
- **param** `style` -- スカラーのスタイル
