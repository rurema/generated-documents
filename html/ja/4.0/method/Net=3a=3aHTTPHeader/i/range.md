# Net::HTTPHeader#range

### def range -> Range|nil

Range: ヘッダの示す範囲を [Range](../../../class/Range.md) オブジェクトで返します。

ヘッダにない場合は nil を返します。

- **raise** `Net::HTTPHeaderSyntaxError` -- Range:ヘッダの中身が規格通りでない場合に発生します。

```ruby title="例 正常な値"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
req['range'] = "bytes=1-5"
p req.range # => [1..5]
```

```ruby title="例 Net::HTTPHeaderSyntaxError"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
req['range'] = "invalid"
req.range # ~> Net::HTTPHeaderSyntaxError
```
