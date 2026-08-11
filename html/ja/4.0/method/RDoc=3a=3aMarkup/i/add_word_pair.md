# RDoc::Markup#add_word_pair

### def add_word_pair(start, stop, name) -> ()

start と stop ではさまれる文字列(例. *bold*)をフォーマットの対象にします。

- **param** `start` -- 開始となる文字列を指定します。

- **param** `stop` -- 終了となる文字列を指定します。start と同じ文字列にする事も可能です。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を
            [Symbol](../../../class/Symbol.md) で指定します。

- **raise** `RuntimeError` -- start に "<" で始まる文字列を指定した場合に発生します。

```ruby title="例"
require 'rdoc/markup/simple_markup'
require 'rdoc/markup/simple_markup/to_html'
m = SM::SimpleMarkup.new
m.add_word_pair("{", "}", :STRIKE)

h = SM::ToHtml.new
h.add_tag(:STRIKE, "<strike>", "</strike>")
puts m.convert(input_string, h)
```

変換時に実際にフォーマットを行うには [RDoc::Markup::Formatter#add_tag](../../../method/RDoc=3a=3aMarkup=3a=3aFormatter/i/add_tag.md) のように、フォーマッタ側でも操作を行う必要があります。
