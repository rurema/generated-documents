# library rdoc/markup/to_ansi

RDoc 形式のドキュメントを ANSI エスケープシーケンスで色付けするサブライブラリです。

```ruby
require 'rdoc/markup/to_ansi'

h = RDoc::Markup::ToAnsi.new
puts h.convert(input_string)
```

変換した結果は文字列で取得できます。
