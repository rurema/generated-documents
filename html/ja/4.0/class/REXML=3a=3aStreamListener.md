# module REXML::StreamListener

[REXML::Parsers::StreamParser](../class/REXML=3a=3aParsers=3a=3aStreamParser.md)
で使われるコールバックオブジェクトのためのモジュールです。

このモジュールを include して、各メソッドを適切にオーバーライドしたクラスのインスタンスを
[REXML::Parsers::StreamParser.new](../method/REXML=3a=3aParsers=3a=3aStreamParser/s/new.md) や
[REXML::Document.parse_stream](../method/REXML=3a=3aDocument/s/parse_stream.md) の引数として渡します。

このモジュールで定義されているメソッド自体は何もしません。
コールバックのデフォルト動作(何もしない)を定義しているだけです。

詳しい用例などについては [REXML::Parsers::StreamParser#example](../class/REXML=3a=3aParsers=3a=3aStreamParser.md#example) を見てください。

## Instance Methods

- [attlistdecl](../method/REXML=3a=3aStreamListener/i/attlistdecl.md)
- [cdata](../method/REXML=3a=3aStreamListener/i/cdata.md)
- [comment](../method/REXML=3a=3aStreamListener/i/comment.md)
- [doctype](../method/REXML=3a=3aStreamListener/i/doctype.md)
- [doctype_end](../method/REXML=3a=3aStreamListener/i/doctype_end.md)
- [elementdecl](../method/REXML=3a=3aStreamListener/i/elementdecl.md)
- [entity](../method/REXML=3a=3aStreamListener/i/entity.md)
- [entitydecl](../method/REXML=3a=3aStreamListener/i/entitydecl.md)
- [instruction](../method/REXML=3a=3aStreamListener/i/instruction.md)
- [notationdecl](../method/REXML=3a=3aStreamListener/i/notationdecl.md)
- [tag_end](../method/REXML=3a=3aStreamListener/i/tag_end.md)
- [tag_start](../method/REXML=3a=3aStreamListener/i/tag_start.md)
- [text](../method/REXML=3a=3aStreamListener/i/text.md)
- [xmldecl](../method/REXML=3a=3aStreamListener/i/xmldecl.md)
