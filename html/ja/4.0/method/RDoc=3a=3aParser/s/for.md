# RDoc::Parser.for

### def RDoc::Parser.for(top_level, body, options, stats) -> RDoc::Parser | nil

ファイルを解析できるパーサのインスタンスを返します。
解析できるパーサが見つからなかった場合やバイナリファイルの場合は nil を返します。

- **param** `top_level` -- [RDoc::TopLevel](../../../class/RDoc=3a=3aTopLevel.md) オブジェクトを指定します。

- **param** `body` -- ソースコードの内容を文字列で指定します。

- **param** `options` -- [RDoc::Options](../../../class/RDoc=3a=3aOptions.md) オブジェクトを指定します。

- **param** `stats` -- [RDoc::Stats](../../../class/RDoc=3a=3aStats.md) オブジェクトを指定します。

ファイル名は `top_level` から取得します。
