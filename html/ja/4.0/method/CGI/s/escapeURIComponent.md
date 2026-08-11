# CGI.escapeURIComponent

### def CGI.escapeURIComponent(string) -> String

与えられた文字列を [RFC:3986] に従って URL エンコードした文字列を新しく作成し返します。

[CGI.escape](../../../method/CGI/s/escape.md) と異なり、空白文字を `+` ではなく `%20` に変換します。
[JavaScript の encodeURIComponent 関数](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent) と同じ結果になります。

- **param** `string` -- URL エンコードしたい文字列を指定します。

```ruby
require "cgi"

p CGI.escapeURIComponent("'Stop!' said Fred") # => "%27Stop%21%27%20said%20Fred"

# CGI.escape は空白を + にするが、escapeURIComponent は %20 にする
p CGI.escape("a b")             # => "a+b"
p CGI.escapeURIComponent("a b") # => "a%20b"
```

- **SEE** [CGI.escape](../../../method/CGI/s/escape.md), [CGI.unescapeURIComponent](../../../method/CGI/s/unescapeURIComponent.md)
