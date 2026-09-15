# Net::HTTPHeader#connection_close?

### def connection_close? -> bool
{: since="1.9.1"}

`Connection:` ヘッダフィールド (プロクシ経由の場合は `Proxy-Connection:` ヘッダフィールド) が `close` を指定しているかどうかを返します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri)
p req.connection_close? # => false
req['Connection'] = 'close'
p req.connection_close? # => true
```

- **SEE** [Net::HTTPHeader#connection_keep_alive?](../../../method/Net=3a=3aHTTPHeader/i/connection_keep_alive=3f.md)
