# Net::HTTP#local_port=

### def local_port=(port)

接続に用いるローカルポートを設定します。

nil の場合システムが適当にローカルポートを決めます。

デフォルトは nil です。

- **param** `port` -- ローカルポート(数値、もしくはサービス名文字列)

```ruby title="例"
require 'net/http'

http = Net::HTTP.new("www.example.com")
http.local_host = "192.168.0.5"
http.local_port = "53043"

http.start do |h|
  p h.get("/").body
end
```

- **SEE** [Net::HTTP#local_port=](../../../method/Net=3a=3aHTTP/i/local_port=3d.md), [Net::HTTP#local_host](../../../method/Net=3a=3aHTTP/i/local_host.md)

- **SEE** [Net::HTTP.new](../../../method/Net=3a=3aHTTP/s/new.md)
