# REXML::Element#write

### def write(output = $stdout, indent = -1, transitive = false, ie_hack = false)

このメソッドは deprecated です。 [REXML::Formatters::Default](../../../class/REXML=3a=3aFormatters=3a=3aDefault.md) を代わりに使ってください。

output にその要素を文字列化したものを(子要素を含め)出力します。

- **param** `output` -- 出力先([IO](../../../class/IO.md) のように << で書き込めるオブジェクト)
- **param** `indent` -- インデントのスペースの数(-1 だとインデントしない)
- **param** `transitive` -- XMLではインデントのスペースでDOMが変化してしまう場合がある。
       これに真を渡すと、XMLのDOMに余計な要素が加わらないように空白の出力を適当に抑制するようになる
- **param** `ie_hack` -- IEはバージョンによってはXMLをちゃんと解釈できないので、それに対応したXMLを出力するかどうかを真偽値で指定する
