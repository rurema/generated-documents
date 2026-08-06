# Net::HTTP#local_host=

### def local_host=(host)

接続に用いるローカルホスト名を指定します。

nil の場合システムが適当にローカルホストを決めます。

デフォルトは nil です。

- **param** `host` -- ホスト名、もしくはアドレスを示す文字列

```ruby title="例"
require 'net/http'

http = Net::HTTP.new("www.example.com")
http.local_host = "192.168.0.5"
http.local_port = "53043"

http.start do |h|
  p h.get("/").body
end
```

- **SEE** [Net::HTTP#local_host=](../../../method/Net=3a=3aHTTP/i/local_host=3d.md), [Net::HTTP#local_port](../../../method/Net=3a=3aHTTP/i/local_port.md)
