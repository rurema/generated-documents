# Psych::Nodes::Sequence.new

### def Psych::Nodes::Sequence.new(anchor=nil, tag=nil, implicit=true, style=BLOCK) -> Psych::Nodes::Sequence

新たな sequence オブジェクトを生成します。

anchor には sequence に付加されている anchor を文字列で指定します。
anchor を付けない場合には nil を指定します。

tag には sequence に付加されている tag を文字列で指定します。
tag を付けない場合には nil を指定します。

implicit には sequence が implicit に開始されたかどうかを真偽値で指定します。

style には YAML ドキュメント上の style を整数で指定します。以下のいずれかを指定できます。
  - [Psych::Nodes::Sequence::ANY](../../../method/Psych=3a=3aNodes=3a=3aSequence/c/ANY.md)
  - [Psych::Nodes::Sequence::BLOCK](../../../method/Psych=3a=3aNodes=3a=3aSequence/c/BLOCK.md)
  - [Psych::Nodes::Sequence::FLOW](../../../method/Psych=3a=3aNodes=3a=3aSequence/c/FLOW.md)

- **param** `anchor` -- sequence に付加された anchor
- **param** `tag` -- sequence に付加された tag
- **param** `implicit` -- sequence が implicit に開始されたかどうか
- **param** `style` -- YAML ドキュメント上の style
