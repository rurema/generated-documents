# RDoc::Markup::Formatter#add_tag

### def add_tag(name, start, stop) -> ()

name で登録された規則で取得された文字列を start と stop で囲むように指定します。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を [Symbol](../../../class/Symbol.md) で指定します。

- **param** `start` -- 開始の記号を文字列で指定します。

- **param** `stop` -- 終了の記号を文字列で指定します。

```ruby title="例"
require 'rdoc'
require 'rdoc/markup/to_html'

m = RDoc::Markup.new
m.add_word_pair("{", "}", :MARK)

# :MARK のフォーマットを <mark> 〜 </mark> に指定。
h = RDoc::Markup::ToHtml.new(RDoc::Options.new, m)
h.add_tag(:MARK, "<mark>", "</mark>")
p h.convert("a {b} c")
# => "\n<p>a <mark>b</mark> c</p>\n"
```
