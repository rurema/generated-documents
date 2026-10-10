# RDoc::Markup#add_regexp_handling

### def add_regexp_handling(pattern, name) -> ()

pattern で指定した正規表現にマッチする文字列をフォーマットの対象にします。

例えば WikiWord のような、[RDoc::Markup#add_word_pair](../../../method/RDoc=3a=3aMarkup/i/add_word_pair.md)、
[RDoc::Markup#add_html](../../../method/RDoc=3a=3aMarkup/i/add_html.md) でフォーマットできないものに対して使用します。

- **param** `pattern` -- 正規表現を指定します。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を
            [Symbol](../../../class/Symbol.md) で指定します。


```ruby title="例"
require 'rdoc'
require 'rdoc/markup/to_html'

class WikiHtml < RDoc::Markup::ToHtml
  def handle_regexp_WIKIWORD(target)
    "<font color=red>" + target.text + "</font>"
  end
end

m = RDoc::Markup.new
m.add_regexp_handling(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

h = WikiHtml.new(RDoc::Options.new, m)
p h.convert("see WikiWord here")
# => "\n<p>see <font color=red>WikiWord</font> here</p>\n"
```

変換時に実際にフォーマットを行うには、フォーマッタ側で `handle_regexp_<name で指定した名前>(target)` を定義します。
`target` は `RDoc::Markup::RegexpHandling` オブジェクトで、`target.text` でマッチした文字列(正規表現にグループがある場合は最初のグループ)を取得できます。
また、フォーマッタの生成時に、この [RDoc::Markup](../../../class/RDoc=3a=3aMarkup.md) オブジェクトを渡す必要があります。
