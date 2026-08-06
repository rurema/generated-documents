# OpenURI::Meta#content_encoding

### def content_encoding    -> [String]

対象となるリソースの Content-Encoding を文字列の配列として返します。
Content-Encoding ヘッダがない場合は、空の配列を返します。

例:

```ruby title="例"
require 'open-uri'
URI.open('http://example.com/f.tar.gz') {|f|
  p f.content_encoding  #=> ["x-gzip"]
}
```
