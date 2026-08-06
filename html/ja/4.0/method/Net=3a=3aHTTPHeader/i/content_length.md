# Net::HTTPHeader#content_length

### def content_length -> Integer|nil

Content-Length: ヘッダフィールドの表している値を整数で返します。

ヘッダが設定されていない場合には nil を返します。

- **raise** `Net::HTTPHeaderSyntaxError` -- フィールドの値が不正である場合に
                                  発生します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.content_length  # => nil
req.content_length = 10
p req.content_length  # => 10
```
