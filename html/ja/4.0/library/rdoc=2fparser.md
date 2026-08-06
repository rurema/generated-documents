# library rdoc/parser

rdoc で解析できるファイルの種類を追加するためのサブライブラリです。

以下のメソッドを定義したクラスを作成する事で、新しいパーサクラスを作成する事ができます。

- #initialize(top_level, file_name, body, options, stats)
- #scan

initialize メソッドは以下の引数を受け取ります。

- top_level [RDoc::TopLevel](../class/RDoc=3a=3aTopLevel.md) オブジェクトを指定します。
- file_name: file_name ファイル名を文字列で指定します。
- body: ソースコードの内容を文字列で指定します。
- options: [RDoc::Options](../class/RDoc=3a=3aOptions.md) オブジェクトを指定します。
- stats: [RDoc::Stats](../class/RDoc=3a=3aStats.md) オブジェクトを指定します。

scan メソッドは引数を受け取りません。処理の後は必ず
[RDoc::TopLevel](../class/RDoc=3a=3aTopLevel.md) オブジェクトを返す必要があります。

また、[RDoc::Parser](../class/RDoc=3a=3aParser.md) はファイル名からパーサクラスを取得するのにも使われます。このために、新しく作成するパーサクラスでは [RDoc::Parser](../class/RDoc=3a=3aParser.md)
を継承し、parse_files_matching メソッドで自身が解析できるファイル名のパターンを登録しておく必要があります。

```ruby title="例"
require "rdoc/parser"
  
class RDoc::Parser::Xyz < RDoc::Parser
  parse_files_matching /\.xyz$/
  
  def initialize(file_name, body, options)
    # ...
  end
  
  def scan
    # ...
  end
end
```
