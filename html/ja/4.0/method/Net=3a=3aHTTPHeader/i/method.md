# Net::HTTPHeader#method

### def method -> String

リクエストの HTTP メソッドを文字列で返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.method # => "GET"
```
