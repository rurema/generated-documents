# Net::HTTPHeader#connection_keep_alive?

### def connection_keep_alive? -> bool
{: since="1.9.1"}

`Connection:` ヘッダフィールド (プロクシ経由の場合は `Proxy-Connection:` ヘッダフィールド) が `keep-alive` を指定しているかどうかを返します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri)
p req.connection_keep_alive? # => false
req['Connection'] = 'keep-alive'
p req.connection_keep_alive? # => true
```

- **SEE** [Net::HTTPHeader#connection_close?](../../../method/Net=3a=3aHTTPHeader/i/connection_close=3f.md)
