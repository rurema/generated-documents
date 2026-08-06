# module REXML::SAX2Listener

[REXML::Parsers::SAX2Parser](../class/REXML=3a=3aParsers=3a=3aSAX2Parser.md)
で使われるコールバックオブジェクトのためのモジュールです。

このモジュールを include して、各メソッドを適切にオーバーライドしたクラスのインスタンスを
[REXML::Parsers::SAX2Parser#listen](../method/REXML=3a=3aParsers=3a=3aSAX2Parser/i/listen.md) で渡します。

[REXML::Parsers::SAX2Parser#listen](../method/REXML=3a=3aParsers=3a=3aSAX2Parser/i/listen.md) ではこのモジュールを使わずにブロックを使う方法もあります。

このモジュールで定義されているメソッド自体は何もしません。
コールバックのデフォルト動作(何もしない)を定義しているだけです。

## Instance Methods

- [attlistdecl](../method/REXML=3a=3aSAX2Listener/i/attlistdecl.md)
- [cdata](../method/REXML=3a=3aSAX2Listener/i/cdata.md)
- [characters](../method/REXML=3a=3aSAX2Listener/i/characters.md)
- [comment](../method/REXML=3a=3aSAX2Listener/i/comment.md)
- [doctype](../method/REXML=3a=3aSAX2Listener/i/doctype.md)
- [elementdecl](../method/REXML=3a=3aSAX2Listener/i/elementdecl.md)
- [end_document](../method/REXML=3a=3aSAX2Listener/i/end_document.md)
- [end_element](../method/REXML=3a=3aSAX2Listener/i/end_element.md)
- [end_prefix_mapping](../method/REXML=3a=3aSAX2Listener/i/end_prefix_mapping.md)
- [entitydecl](../method/REXML=3a=3aSAX2Listener/i/entitydecl.md)
- [notationdecl](../method/REXML=3a=3aSAX2Listener/i/notationdecl.md)
- [processing_instruction](../method/REXML=3a=3aSAX2Listener/i/processing_instruction.md)
- [progress](../method/REXML=3a=3aSAX2Listener/i/progress.md)
- [start_document](../method/REXML=3a=3aSAX2Listener/i/start_document.md)
- [start_element](../method/REXML=3a=3aSAX2Listener/i/start_element.md)
- [start_prefix_mapping](../method/REXML=3a=3aSAX2Listener/i/start_prefix_mapping.md)
- [xmldecl](../method/REXML=3a=3aSAX2Listener/i/xmldecl.md)
