# RDoc::Parser.parser_for

### def RDoc::Parser.parser_for(top_level, file_name, body, options, stats) -> RDoc::Parser

file_name を解析できるパーサのインスタンスを返します。
見つからなかった場合は [RDoc::Parser::Simple](../../../class/RDoc=3a=3aParser=3a=3aSimple.md) のインスタンスを返します。

- **param** `top_level` -- [RDoc::TopLevel](../../../class/RDoc=3a=3aTopLevel.md) オブジェクトを指定します。

- **param** `file_name` -- ファイル名を文字列で指定します。

- **param** `body` -- ソースコードの内容を文字列で指定します。

- **param** `options` -- [RDoc::Options](../../../class/RDoc=3a=3aOptions.md) オブジェクトを指定します。

- **param** `stats` -- [RDoc::Stats](../../../class/RDoc=3a=3aStats.md) オブジェクトを指定します。
