# CSV.foreach

### def CSV.foreach(path, options = Hash.new) -> Enumerator
### def CSV.foreach(path, options = Hash.new){|row| ... } -> nil

このメソッドは CSV ファイルを読むための主要なインターフェイスです。
各行が与えられたブロックに渡されます。
ブロックが与えられていない場合、Enumeratorを返します。

```ruby title="例"
require 'csv'

# UTF-32BE な CSV ファイルを読み込んで UTF-8 な row をブロックに渡します
CSV.foreach("a.csv", encoding: "UTF-32BE:UTF-8"){|row| p row }
```

- **param** `path` -- CSV ファイルのパス(文字列)、または [StringIO](../../../class/StringIO.md) オブジェクトを指定します。[StringIO](../../../class/StringIO.md) を渡した場合はその内容から読み込みます。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。
               :encoding というキーを使用すると入出力のエンコーディングを指定できます。
               [Encoding.default_external](../../../method/Encoding/s/default_external.md) と異なるエンコーディングを持つ入力を使用する場合は、必ずエンコーディングを指定してください。

- **SEE** [CSV.new](../../../method/CSV/s/new.md), [File.open](../../../method/File/s/open.md)
