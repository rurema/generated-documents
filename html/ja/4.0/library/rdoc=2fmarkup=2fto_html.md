# library rdoc/markup/to_html

RDoc 形式のドキュメントを HTML に整形するためのサブライブラリです。

```ruby
require 'rdoc'
require 'rdoc/markup/to_html'

h = RDoc::Markup::ToHtml.new(RDoc::Options.new)
p h.convert("*bold*")
# => "\n<p><strong>bold</strong></p>\n"
```

変換した結果は文字列で取得できます。
