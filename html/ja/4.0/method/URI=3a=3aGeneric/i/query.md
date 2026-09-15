# URI::Generic#query

### def query     -> String | nil

自身の query を文字列で返します。設定されていない場合は nil を返します。

```ruby title="例"
require 'uri'
p URI('http://example.com/?hoge').query   # => "hoge"
```
