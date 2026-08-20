# REXML::Document#write

### def write(output = $stdout, indent = -1, transitive = false, ie_hack = false, encoding=nil) -> ()
### def write(output: $stdout, indent: -1, transitive: false, ie_hack: false, encoding: nil) -> ()

output に XML 文書を出力します。

XML宣言、DTD、処理命令を(もしあるならば)含む文書を出力します。

注意すべき点として、元の XML 文書が XML宣言を含んでいなくとも出力される XML はデフォルトの XML 宣言を含んでいるべきであるが、
REXML は明示しない限り(つまりXML宣言を [REXML::Document#add](../../../method/REXML=3a=3aDocument/i/add.md) で追加しない限り)
それをしない、ということである。XML-RPCのような利用法ではネットワークバンドを少しでも節約する必要があるためである。

Ruby 2.0 以降ではキーワード引数による引数指定が可能です。

- **param** `output` -- 出力先([IO](../../../class/IO.md) のように << で書き込めるオブジェクト)
- **param** `indent` -- インデントのスペースの数(-1 だとインデントしない)
- **param** `transitive` -- XMLではインデントのスペースでDOMが変化してしまう場合がある。
       これに真を渡すと、XMLのDOMに余計な要素が加わらないように空白の出力を適当に抑制するようになる
- **param** `ie_hack` -- IEはバージョンによってはXMLをちゃんと解釈できないので、それに対応したXMLを出力するかどうかを真偽値で指定する
