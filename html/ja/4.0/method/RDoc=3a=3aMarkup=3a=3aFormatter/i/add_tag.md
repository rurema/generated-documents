# RDoc::Markup::Formatter#add_tag

### def add_tag(name, start, stop) -> ()

name で登録された規則で取得された文字列を start と stop で囲むように指定します。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を [Symbol](../../../class/Symbol.md) で指定します。

- **param** `start` -- 開始の記号を文字列で指定します。

- **param** `stop` -- 終了の記号を文字列で指定します。

```ruby title="例"
require 'rdoc/markup/to_html'

# :STRIKE のフォーマットを <strike> 〜 </strike> に指定。
h = RDoc::Markup::ToHtml.new
h.add_tag(:STRIKE, "<strike>", "</strike>")
```
