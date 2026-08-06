# Psych::Nodes::Mapping.new

### def Psych::Nodes::Mapping.new(anchor=nil, tag=nil, implicit=true, style=BLOCK) -> Psych::Nodes::Mapping

新たな mapping オブジェクトを生成します。

anchor には mapping に付加されている anchor を文字列で指定します。
anchor を付けない場合には nil を指定します。

tag には mapping に付加されている tag を文字列で指定します。
tag を付けない場合には nil を指定します。

implicit には mapping が implicit に開始されたかどうかを真偽値で指定します。

style には YAML ドキュメント上の style を整数で指定します。以下のいずれかを指定できます。
  - [Psych::Nodes::Mapping::ANY](../../../method/Psych=3a=3aNodes=3a=3aMapping/c/ANY.md)
  - [Psych::Nodes::Mapping::BLOCK](../../../method/Psych=3a=3aNodes=3a=3aMapping/c/BLOCK.md)
  - [Psych::Nodes::Mapping::FLOW](../../../method/Psych=3a=3aNodes=3a=3aMapping/c/FLOW.md)

- **param** `anchor` -- mapping に付加された anchor
- **param** `tag` -- mapping に付加された tag
- **param** `implicit` -- mapping が implicit に開始されたかどうか
- **param** `style` -- YAML ドキュメント上の style
