# CGI.unescapeURIComponent

### def CGI.unescapeURIComponent(string) -> String

与えられた文字列を [CGI.escapeURIComponent](../../../method/CGI/s/escapeURIComponent.md) でエンコードされたものとして URL デコードした文字列を新しく作成し返します。

- **param** `string` -- URL エンコードされている文字列を指定します。

```ruby
require "cgi"

p CGI.unescapeURIComponent("%27Stop%21%27%20said%20Fred") # => "'Stop!' said Fred"
```

- **SEE** [CGI.unescape](../../../method/CGI/s/unescape.md), [CGI.escapeURIComponent](../../../method/CGI/s/escapeURIComponent.md)
