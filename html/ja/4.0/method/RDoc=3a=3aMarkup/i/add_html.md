# RDoc::Markup#add_html

### def add_html(tag, name) -> ()

tag で指定したタグをフォーマットの対象にします。

- **param** `tag` -- 追加するタグ名を文字列で指定します。大文字、小文字のどちらを指定しても同一のものとして扱われます。

- **param** `name` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md) などのフォーマッタに識別させる時の名前を
            [Symbol](../../../class/Symbol.md) で指定します。

```ruby title="例"
require 'rdoc'
require 'rdoc/markup/to_html'

m = RDoc::Markup.new
m.add_html("no", :MARK)

h = RDoc::Markup::ToHtml.new(RDoc::Options.new, m)
h.add_tag(:MARK, "<mark>", "</mark>")
p h.convert("a <no>b</no> c")
# => "\n<p>a <mark>b</mark> c</p>\n"
```

変換時に実際にフォーマットを行うには [RDoc::Markup::Formatter#add_tag](../../../method/RDoc=3a=3aMarkup=3a=3aFormatter/i/add_tag.md) のように、フォーマッタ側でも操作を行う必要があります。
