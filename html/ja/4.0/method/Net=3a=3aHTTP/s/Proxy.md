# Net::HTTP.Proxy

### def Net::HTTP.Proxy(address, port = 80, user = nil, pass = nil, use_ssl = nil) -> Class

Proxy 経由で http サーバに接続するためのクラスを作成し返します。

このクラスは Net::HTTP を継承しているので Net::HTTP と全く同じように使えます。指定されたプロクシを常に経由して http サーバに接続します。

address が nil のときは Net::HTTP クラスをそのまま返します。

```ruby title="例1: Net::HTTP.new を使う"
require 'net/http'
proxy_class = Net::HTTP::Proxy('proxy.example.com', 8080)
http = proxy_class.new('www.example.org')
http.start {|h|
  h.get('/ja/') # proxy.example.com 経由で接続します。
}
```

```ruby title="例2: Net::HTTP.start を使う"
require 'net/http'
proxy_class = Net::HTTP::Proxy('proxy.example.com', 8080)
proxy_class.start('www.example.org') {|h|
  h.get('/ja/') # proxy.example.com 経由で接続します。
}
```

- **param** `address` -- プロクシのホスト名を文字列で与えます。
- **param** `port` -- プロクシのポート番号を与えます。
- **param** `user` -- プロクシの認証のユーザ名を与えます。省略した場合には認証はなされません。
- **param** `pass` -- プロクシの認証のパスワードを与えます。
- **param** `use_ssl` -- プロクシとの接続に SSL/TLS を使うかどうかを与えます。接続先に SSL/TLS を使う場合([Net::HTTP#use_ssl=](../../../method/Net=3a=3aHTTP/i/use_ssl=3d.md))にだけ効きます。

- **SEE** [Net::HTTP.proxy_use_ssl](../../../method/Net=3a=3aHTTP/s/proxy_use_ssl.md)
