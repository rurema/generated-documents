# REXML::Element.new

### def REXML::Element.new(arg = UNDEFINED, parent = nil, context = nil) -> REXML::Element

要素オブジェクトを生成します。

arg が文字列の場合、新たな要素の名前は arg に設定されます。
arg が [REXML::Element](../../../class/REXML=3a=3aElement.md) オブジェクトの場合は、新たな要素の名前、属性、context が arg のもので初期化されます。

parent で親ノードを指定します。

context には hash table で要素のコンテキストを指定します。
基本的には text node ([REXML::Text](../../../class/REXML=3a=3aText.md)) での特別な文字、特に空白についての取り扱いを指定できます。
以下の [Symbol](../../../class/Symbol.md) をハッシュのキーとして使います。

- **`:respect_whitespace`**:
  空白を考慮して欲しい要素の名前の集合を文字列の配列で指定します。
  また、すべての要素で空白を考慮して欲しい場合には
  :all を指定します。
  デフォルト値は :all です。
  [REXML::Element#whitespace](../../../method/REXML=3a=3aElement/i/whitespace.md) も参照してください。
- **`:compress_whitespace`**:
  空白を無視して欲しい要素の名前の集合を文字列の配列で指定します。
  この指定は :respect_whitespace での指定を上書きします。
  すべての要素で空白を無視して欲しい場合には
  :all を指定します。
  [REXML::Element#whitespace](../../../method/REXML=3a=3aElement/i/whitespace.md) も参照してください。
- **`:ignore_whitespace_nodes`**:
  空白のみからなるノードを無視して欲しい要素の名前の集合を
  文字列の配列で指定します。
  すべての要素で無視して欲しい場合は :all を指定します。
  これが設定された場合、空白のみからなる text node は追加されません。
  `REXML::Element#ignore_whitespace_nodes` も参照してください。
- **`:raw`**:
  raw mode で取り扱いをして欲しい要素の名前の集合を
  文字列の配列で指定します。
  すべてのノードを raw mode で取り扱って欲しい場合は :all を指定します。
  raw mode においては、text 中の特殊文字は一切変換されません。
  [REXML::Element#raw](../../../method/REXML=3a=3aElement/i/raw.md) も参照してください。

- **param** `arg` -- 要素の名前(String)もしくは初期化に使う [REXML::Element](../../../class/REXML=3a=3aElement.md)
       オブジェクト
- **param** `parent` -- 親ノード
- **param** `context` -- コンテキスト([Hash](../../../class/Hash.md))
- **SEE** [REXML::Parent.new](../../../method/REXML=3a=3aParent/s/new.md), [REXML::Child.new](../../../method/REXML=3a=3aChild/s/new.md)
