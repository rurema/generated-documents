# Net::HTTP#proxy_use_ssl=

### def proxy_use_ssl=(ssl)

プロクシとの接続(プロクシ自身への TCP 接続)に SSL/TLS を使うかどうかを設定します。[Net::HTTP#start](../../../method/Net=3a=3aHTTP/i/start.md) で接続する前に設定する必要があります。

これは、プロクシ経由で接続先自体に SSL/TLS を使うかどうかを指定する [Net::HTTP#use_ssl=](../../../method/Net=3a=3aHTTP/i/use_ssl=3d.md) とは別の設定です。

- **param** `ssl` -- プロクシとの接続に SSL/TLS を使うかどうかを真偽値で指定します。

```ruby title="例"
require 'net/http'

http = Net::HTTP.new('www.example.com')
http.proxy_use_ssl = true
```

- **SEE** [Net::HTTP.proxy_use_ssl](../../../method/Net=3a=3aHTTP/s/proxy_use_ssl.md), [Net::HTTP#use_ssl=](../../../method/Net=3a=3aHTTP/i/use_ssl=3d.md)
