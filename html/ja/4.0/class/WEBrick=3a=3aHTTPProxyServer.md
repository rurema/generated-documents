# class WEBrick::HTTPProxyServer < WEBrick::HTTPServer

プロクシの機能を提供するクラスです。CONNECT メソッドにも対応しています。

- <https://magazine.rubyist.net/articles/0002/0002-WEBrickProxy.html>

以下は完全に動作するプロクシサーバの例です。

```ruby
require 'webrick'
require 'webrick/httpproxy'

s = WEBrick::HTTPProxyServer.new(Port: 8080)
Signal.trap('INT') do
  s.shutdown
end
s.start
```

## Class Methods

- [new](../method/WEBrick=3a=3aHTTPProxyServer/s/new.md)
