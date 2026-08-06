# library rdoc/markup

RDoc 形式に整形されたプレインテキストを変換するためのサブライブラリです。

[RDoc::Markup](../class/RDoc=3a=3aMarkup.md) は RDoc 形式のドキュメント、Wiki エントリ、Web上の
FAQ などを想定したプレインテキストから様々なフォーマットへの変換を行うツール群の基礎として作られています。[RDoc::Markup](../class/RDoc=3a=3aMarkup.md) 自身は何の出力も行いません。
それらは [output_format](#output_format) で後述するクラス群に委ねられています。

### Markup

基本的には、[rdoc#markup](../library/rdoc.md#markup) と同じです。ただし、rdoc コマンドとは異なり、Ruby のソースコードのコメント部分ではなく、プレインテキストが変換対象になります。そのため、以下のみがフォーマットされます。

- [rdoc#list](../library/rdoc.md#list)
- [rdoc#labeled_list](../library/rdoc.md#labeled_list)
- [rdoc#headline](../library/rdoc.md#headline)
- [rdoc#ruled_line](../library/rdoc.md#ruled_line)
- [rdoc#italic_bold_typewriter](../library/rdoc.md#italic_bold_typewriter)
- [rdoc#escape](../library/rdoc.md#escape)


### 出力可能な形式 {#output_format}

変換する形式として以下のいずれかを選択できます。

- HTML 形式: [RDoc::Markup::ToHtml](../class/RDoc=3a=3aMarkup=3a=3aToHtml.md)
- HTML 形式: [RDoc::Markup::ToHtmlCrossref](../class/RDoc=3a=3aMarkup=3a=3aToHtmlCrossref.md)
