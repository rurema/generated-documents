# OpenURI::Meta#content_type

### def content_type    -> String

対象となるリソースの Content-Type を文字列で返します。Content-Type ヘッダの情報が使われます。
Content-Type ヘッダがない場合は、"application/octet-stream" を返します。

```ruby title="例"
require 'open-uri'
URI.open('http://www.ruby-lang.org/') {|f|
  p f.content_type  #=> "text/html"
}
```
