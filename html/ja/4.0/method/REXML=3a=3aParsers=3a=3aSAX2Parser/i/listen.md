# REXML::Parsers::SAX2Parser#listen

### def listen(sym, ary) { ... } -> ()
### def listen(sym) { ... } -> ()
### def listen(ary, listener) -> ()
### def listen(ary) { ... } -> ()
### def listen(listener) -> ()

コールバックをパーサに登録します。

引数の種類やブロックの有無でどのような場合に何がコールバックされかが変わります。

ブロックを指定した場合はそのブロックがコールバックされます。
ブロックを指定しない場合は [REXML::SAX2Listener](../../../class/REXML=3a=3aSAX2Listener.md) を include したクラスのオブジェクトを指定します。

sym は以下のシンボルが指定でき、どの場合にコールバックが呼び出されるかを指定します。どのような場合にどのような引数でコールバックが呼び出されるかについては、
[REXML::SAX2Listener](../../../class/REXML=3a=3aSAX2Listener.md) の対応するメソッドで詳しく説明されていますのでそちらを参照してください。

  - :start_document
    (XML文書開始, [REXML::SAX2Listener#start_document](../../../method/REXML=3a=3aSAX2Listener/i/start_document.md))
  - :end_document
    (XML文書終了, [REXML::SAX2Listener#end_document](../../../method/REXML=3a=3aSAX2Listener/i/end_document.md))
  - :start_element
    (要素開始, [REXML::SAX2Listener#start_element](../../../method/REXML=3a=3aSAX2Listener/i/start_element.md))
  - :end_element
    (要素終了, [REXML::SAX2Listener#end_element](../../../method/REXML=3a=3aSAX2Listener/i/end_element.md))
  - :start_prefix_mapping
    (名前空間接頭辞導入, [REXML::SAX2Listener#start_prefix_mapping](../../../method/REXML=3a=3aSAX2Listener/i/start_prefix_mapping.md))
  - :end_prefix_mapping
    (名前空間接頭辞適用終了, [REXML::SAX2Listener#end_prefix_mapping](../../../method/REXML=3a=3aSAX2Listener/i/end_prefix_mapping.md))
  - :characters (文字データ, [REXML::SAX2Listener#characters](../../../method/REXML=3a=3aSAX2Listener/i/characters.md))
  - :processing_instruction
    (XML 処理命令 [REXML::SAX2Listener#processing_instruction](../../../method/REXML=3a=3aSAX2Listener/i/processing_instruction.md))
  - :doctype
    (DTD, [REXML::SAX2Listener#doctype](../../../method/REXML=3a=3aSAX2Listener/i/doctype.md))
  - :attlistdecl
    (DTDの属性リスト宣言, [REXML::SAX2Listener#attlistdecl](../../../method/REXML=3a=3aSAX2Listener/i/attlistdecl.md))
  - :entitydecl
    (DTDの実体宣言, [REXML::SAX2Listener#entitydecl](../../../method/REXML=3a=3aSAX2Listener/i/entitydecl.md))
  - :notationdecl
    (DTDの記法宣言, [REXML::SAX2Listener#notationdecl](../../../method/REXML=3a=3aSAX2Listener/i/notationdecl.md))
  - :cdata
    (CDATA セクション, [REXML::SAX2Listener#cdata](../../../method/REXML=3a=3aSAX2Listener/i/cdata.md))
  - :xmldecl
    (XML 宣言, [REXML::SAX2Listener#xmldecl](../../../method/REXML=3a=3aSAX2Listener/i/xmldecl.md))
  - :comment
    (コメント, [REXML::SAX2Listener#comment](../../../method/REXML=3a=3aSAX2Listener/i/comment.md))
  - :progress
    (入力を読み進める, [REXML::SAX2Listener#progress](../../../method/REXML=3a=3aSAX2Listener/i/progress.md))

ary には配列を指定し、要素名によるコールバック呼び出し条件を指定します。
配列の要素としては、文字列か正規表現が指定できます。
start_element, end_element に関しては、指定した名前を持つ要素の開始時と終了時にのみコールバックが呼び出されるようになります。
start_prefix_mapping, end_prefix_mapping では、その名前空間が導入された要素の要素名、つまり xmlns:foo="bar" という属性を持つ要素の名前でフィルタリングされるようになります。
それ以外(character, cdataなど)では、指定した名前を要素として持つ要素の直下のみコールバックが呼び出されます。
フィルタリングに使われる名前は QName、つまり prefix を含む文字列です。

- **param** `sym` -- イベント名(シンボル)
- **param** `ary` -- 要素名によるコールバック呼び出し条件の指定(文字列もしくは正規表現の配列)
- **param** `listener` -- コールバックオブジェクト

### 例

```text
# CDATAセクションに出会った場合にブロックが呼び出される。
parser.listen(:cdata){|data| ... }

# h1, h2 という要素名を持つ要素が開始した場合にブロックが呼び出される
parser.listen(:start_element, ["h1", "h2"]){|uri, localname, qname, attrs|
  ...
}

# /\Ah[1234]\z/ という正規表現にマッチする要素(h1, .. h4)の直下の
# 文字データに出会った場合に呼び出される
parser.listen(:characters, [/\Ah[1234]\z/]){|data|
  ...
}
```
