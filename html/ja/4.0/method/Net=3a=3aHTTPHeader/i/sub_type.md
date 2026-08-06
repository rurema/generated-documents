# Net::HTTPHeader#sub_type

### def sub_type -> String|nil

"text/html" における "html" のようなサブタイプを表す文字列を返します。

Content-Type: ヘッダフィールドが存在しない場合には nil を返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
res = Net::HTTP.get_response(uri)
p res.sub_type # => "html"
```
