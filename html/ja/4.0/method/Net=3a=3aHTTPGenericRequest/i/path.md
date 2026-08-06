# Net::HTTPGenericRequest#path

### def path -> String

リクエストする path を文字列で返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.path # => "/index.html"
```
