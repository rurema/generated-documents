# library rdoc/parser/changelog

ChangeLog ファイルを解析するためのサブライブラリです。

ChangeLog ファイルを解析して、`RDoc::Markup::Document` オブジェクトに変換します。出力される HTML はサイドバーに日ごとに分けられます。

このサブライブラリは主に MRI の ChangeLog を解析するために使われますが、
GNU style の ChangeLog(<http://www.gnu.org/prep/standards/html_node/Style-of-Change-Logs.html>
参照)であれば解析できます。
