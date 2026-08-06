# REXML::Element#raw

### def raw -> bool

その要素が raw モードであるならば真を返します。

以下のいずれかであれば、raw モードであると判定されます。
  - [REXML::Element#context](../../../method/REXML=3a=3aElement/i/context.md) の :raw が :all である
  - context の :raw の配列に self の要素名が含まれる
