# RDoc::Markup#add_word_pair

### def add_word_pair(start, stop, name) -> ()

start と stop ではさまれる文字列(例. *bold*)をフォーマットの対象にします。

- **param** `start` -- 開始となる文字列を指定します。

- **param** `stop` -- 終了となる文字列を指定します。start と同じ文字列にする事も可能です。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を
            [Symbol](../../../class/Symbol.md) で指定します。

- **raise** `ArgumentError` -- start に "<" で始まる文字列を指定した場合に発生します。

```ruby title="例"
require 'rdoc'
require 'rdoc/markup/to_html'

m = RDoc::Markup.new
m.add_word_pair("{", "}", :MARK)

h = RDoc::Markup::ToHtml.new(RDoc::Options.new, m)
h.add_tag(:MARK, "<mark>", "</mark>")
p h.convert("a {b} c")
# => "\n<p>a <mark>b</mark> c</p>\n"
```

変換時に実際にフォーマットを行うには [RDoc::Markup::Formatter#add_tag](../../../method/RDoc=3a=3aMarkup=3a=3aFormatter/i/add_tag.md) のように、フォーマッタ側でも操作を行う必要があります。
