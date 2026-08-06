# library rdoc/markup/to_html

RDoc 形式のドキュメントを HTML に整形するためのサブライブラリです。

```ruby
require 'rdoc/markup/to_html'

h = RDoc::Markup::ToHtml.new
puts h.convert(input_string)
```

変換した結果は文字列で取得できます。
