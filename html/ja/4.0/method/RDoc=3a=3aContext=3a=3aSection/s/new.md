# RDoc::Context::Section.new

### def RDoc::Context::Section.new(parent, title, comment) -> RDoc::Context::Section

自身を初期化します。

- **param** `parent` -- [RDoc::Context](../../../class/RDoc=3a=3aContext.md) オブジェクトを指定します。

- **param** `title` -- section のタイトルを文字列で指定します。

- **param** `comment` -- section のコメントを `RDoc::Comment` オブジェクト(またはその配列)で指定します。nil も指定できます。

- **raise** `TypeError` -- `comment` に文字列など受け付けない型のオブジェクトを指定した場合に発生します。
