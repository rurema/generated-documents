# REXML::Element#whitespace

### def whitespace -> bool

要素(self)内で空白が考慮されるならば真を返します。

これは、
  - [REXML::Element#context](../../../method/REXML=3a=3aElement/i/context.md) に :respect_whitespace も :compress_whitespace も
    含まれない
  - context の :respect_whitespace に self の要素名が含まれていて、
    :compress_whitespace に self の要素名が含まれていない。
    「含まれている」というのには :all が指定されている場合と、
    配列に含まれている場合の両方があります。
のいずれかの場合に真を返します。

要素名として [REXML::Namespace#expanded_name](../../../method/REXML=3a=3aNamespace/i/expanded_name.md) が使われるので、名前空間の prefix は判定に影響します。
