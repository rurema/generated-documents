# class RDoc::RDoc < Object

rdoc ドキュメントの作成を行うクラスです。

以下のようにして、rdoc コマンドを実行するのと同様に実行します。

```ruby
require 'rdoc/rdoc'
rdoc = RDoc::RDoc.new
rdoc.document(args)
```

args には rdoc コマンドに渡すのと同様の引数を文字列の配列で指定します。

rdoc コマンドと同様に変換結果はファイルに出力されるため、テキストを
HTML に変換する部分をライブラリとして使用したい場合、
[rdoc/markup](../library/rdoc=2fmarkup.md) を参照してください。

## Class Methods

- [add_generator](../method/RDoc=3a=3aRDoc/s/add_generator.md)

## Instance Methods

- [document](../method/RDoc=3a=3aRDoc/i/document.md)
