# OpenURI::Meta#base_uri

### def base_uri    -> URI

リソースの実際の URI を URI オブジェクトとして返します。
リダイレクトされた場合は、リダイレクトされた後のデータが存在する URI を返します。

```ruby title="例"
require 'open-uri'
URI.open('http://www.ruby-lang.org/') {|f|
  p f.base_uri
  # => #<URI::HTTP:0xb7043aa0 URL:http://www.ruby-lang.org/en/>
}
```
