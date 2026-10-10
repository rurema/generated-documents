# library rdoc/parser

rdoc で解析できるファイルの種類を追加するためのサブライブラリです。

以下のメソッドを定義したクラスを作成する事で、新しいパーサクラスを作成する事ができます。

- `#initialize(top_level, body, options, stats)`
- `#scan`

initialize メソッドは以下の引数を受け取ります。

- `top_level`: [RDoc::TopLevel](../class/RDoc=3a=3aTopLevel.md) オブジェクトを指定します。
- `body`: ソースコードの内容を文字列で指定します。
- `options`: [RDoc::Options](../class/RDoc=3a=3aOptions.md) オブジェクトを指定します。
- `stats`: [RDoc::Stats](../class/RDoc=3a=3aStats.md) オブジェクトを指定します。

ファイル名は `top_level` から取得します。

scan メソッドは引数を受け取りません。処理の後は必ず
[RDoc::TopLevel](../class/RDoc=3a=3aTopLevel.md) オブジェクトを返す必要があります。

また、[RDoc::Parser](../class/RDoc=3a=3aParser.md) はファイル名からパーサクラスを取得するのにも使われます。このために、新しく作成するパーサクラスでは [RDoc::Parser](../class/RDoc=3a=3aParser.md)
を継承し、parse_files_matching メソッドで自身が解析できるファイル名のパターンを登録しておく必要があります。

```ruby title="例"
require "rdoc"

class RDoc::Parser::Xyz < RDoc::Parser
  parse_files_matching /\.xyz$/

  def initialize(top_level, body, options, stats)
    super
    # ...
  end

  def scan
    # ...
  end
end
```
