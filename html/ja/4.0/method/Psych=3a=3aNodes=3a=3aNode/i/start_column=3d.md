# Psych::Nodes::Node#start_column=

### def start_column -> Integer | nil
### def start_column=(column)

`self` が表す YAML ドキュメント上の要素が開始する行内の位置(列番号)を返します。

[Psych.parse](../../../method/Psych/s/parse.md) などでパースして得られたノードには、パース時にこの位置情報が設定されます。手動で生成したノードでは nil のままです。

- **param** `column` -- 設定する開始位置の列番号
- **SEE** [Psych::Nodes::Node#start_line](../../../method/Psych=3a=3aNodes=3a=3aNode/i/start_line.md), [Psych::Nodes::Node#end_column](../../../method/Psych=3a=3aNodes=3a=3aNode/i/end_column.md)
