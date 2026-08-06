# ERB::Util?.h

### module_function def html_escape(s) -> String
### module_function def h(s) -> String

文字列 s を HTML用にエスケープした文字列を返します。

文字列 s 中に含まれる  &"<> を、実体参照 &amp; &quot; &lt; &gt; にそれぞれ変更した文字列を返します
([CGI.escapeHTML](../../../method/CGI/s/escapeHTML.md)とほぼ同じです)。

- **param** `s` -- HTMLエスケープを行う文字列

```ruby title="例"
require "erb"
include ERB::Util

puts html_escape("is a > 0 & a < 10?")
# is a &gt; 0 &amp; a &lt; 10?
```
