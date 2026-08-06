# Net::HTTPHeader#content_range

### def content_range -> Range|nil

Content-Range: ヘッダフィールドの値を Range で返します。
Range の表わす長さは [Net::HTTPHeader#range_length](../../../method/Net=3a=3aHTTPHeader/i/range_length.md) で得られます。

ヘッダが設定されていない場合には nil を返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.content_range    # => nil
req['Content-Range'] = "bytes 0-499/1234"
p req.content_range    # => 0..499
```
