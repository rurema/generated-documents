# RDoc::Markup#add_special

### def add_special(pattern, name) -> ()

pattern で指定した正規表現にマッチする文字列をフォーマットの対象にします。

例えば WikiWord のような、[RDoc::Markup#add_word_pair](../../../method/RDoc=3a=3aMarkup/i/add_word_pair.md)、
[RDoc::Markup#add_html](../../../method/RDoc=3a=3aMarkup/i/add_html.md) でフォーマットできないものに対して使用します。

- **param** `pattern` -- 正規表現を指定します。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を
            [Symbol](../../../class/Symbol.md) で指定します。

```ruby title="例"
require 'rdoc/markup/simple_markup'
require 'rdoc/markup/simple_markup/to_html'

class WikiHtml < SM::ToHtml
  def handle_special_WIKIWORD(special)
    "<font color=red>" + special.text + "</font>"
  end
end

m = SM::SimpleMarkup.new
m.add_special(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

h = WikiHtml.new
puts m.convert(input_string, h)
```

変換時に実際にフォーマットを行うには SM::ToHtml#accept_special_<name で指定した名前>
のように、フォーマッタ側でも操作を行う必要があります。
