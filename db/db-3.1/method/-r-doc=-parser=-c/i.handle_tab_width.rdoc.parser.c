names=handle_tab_width
visibility=public
kind=defined
source_location=manual/api/rdoc/parser/../parsers/parse_c.md
since_by_name=handle_tab_width=1.9.1
until_by_name=handle_tab_width=3.2
rbs_sig=(uninitialized)

### def handle_tab_width(body) -> String
{: since="1.9.1"}

body に含まれるタブをスペースに変換した文字列を返します。

タブ幅には [m:RDoc::Options#tab_width] の値が使われます。body にタブ文字が
含まれない場合は body をそのまま返します。

- **param** `body` -- 変換対象のソースコードを文字列で指定します。


