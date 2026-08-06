# Net::HTTPHeader#content_length=

### def content_length=(len)

Content-Length: ヘッダフィールドに値を設定します。

len に nil を与えると Content-Length: ヘッダフィールドを削除します。

- **param** `len` -- 設定する値を整数で与えます。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.content_length    # => nil
req.content_length = 10 # => 10
p req.content_length    # => 10
```
