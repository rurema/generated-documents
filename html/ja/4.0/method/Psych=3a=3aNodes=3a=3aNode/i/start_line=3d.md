# Psych::Nodes::Node#start_line=

### def start_line -> Integer | nil
### def start_line=(line)

`self` が表す YAML ドキュメント上の要素が開始する行番号を返します。

[Psych.parse](../../../method/Psych/s/parse.md) などでパースして得られたノードには、パース時にこの位置情報が設定されます。手動で生成したノードでは nil のままです。

- **param** `line` -- 設定する開始行番号
- **SEE** [Psych::Nodes::Node#start_column](../../../method/Psych=3a=3aNodes=3a=3aNode/i/start_column.md), [Psych::Nodes::Node#end_line](../../../method/Psych=3a=3aNodes=3a=3aNode/i/end_line.md)
