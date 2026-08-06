# CGI::HtmlExtension#base

### def base(href = "") -> String

base 要素を生成します。

- **param** `href` -- 文字列を指定します。属性をハッシュで指定することもできます。

```ruby title="例"
p base("http://www.example.com/cgi")
  # => "<BASE HREF=\"http://www.example.com/cgi\">"
```
