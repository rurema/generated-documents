# RDoc::Markup::ToHtmlCrossref.new

### def RDoc::Markup::ToHtmlCrossref.new(options, from_path, context, markup = nil) -> RDoc::Markup::ToHtmlCrossref

自身を初期化します。

- **param** `options` -- [RDoc::Options](../../../class/RDoc=3a=3aOptions.md) オブジェクトを指定します。`hyperlink_all` と `show_hash` の設定をここから取得します。

- **param** `from_path` -- 生成するファイルのパスを文字列で指定します。

- **param** `context` -- [RDoc::Context](../../../class/RDoc=3a=3aContext.md) オブジェクトかそのサブクラスのオブジェクトを指定します。

- **param** `markup` -- [RDoc::Markup](../../../class/RDoc=3a=3aMarkup.md) オブジェクトを指定します。省略した場合は新しく作成します。

- **raise** `ArgumentError` -- `from_path` に nil を指定した場合に発生します。
