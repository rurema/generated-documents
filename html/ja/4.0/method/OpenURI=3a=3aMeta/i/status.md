# OpenURI::Meta#status

### def status    -> [String]

対象となるリソースのステータスコードと reason phrase を文字列の配列として返します。

```ruby title="例"
require 'open-uri'
URI.open('http://example.com/') {|f|
  p f.status  #=> ["200", "OK"]
}
```
