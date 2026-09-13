# Net::HTTP.proxy_use_ssl

### def Net::HTTP.proxy_use_ssl -> bool | nil

`self` が [Net::HTTP.Proxy](../../../method/Net=3a=3aHTTP/s/Proxy.md) によって作成されたプロクシ用のクラスで、かつプロクシとの接続に SSL/TLS を使う場合に真を返します。

プロクシを使わない場合は nil を返します。

```ruby title="例"
require 'net/http'

proxy_class = Net::HTTP.Proxy('proxy.example.com', 8080, nil, nil, true)
proxy_class.proxy_use_ssl # => true
```

- **SEE** [Net::HTTP.Proxy](../../../method/Net=3a=3aHTTP/s/Proxy.md), [Net::HTTP#proxy_use_ssl=](../../../method/Net=3a=3aHTTP/i/proxy_use_ssl=3d.md)
