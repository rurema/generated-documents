# Addrinfo#getnameinfo

### def getnameinfo(flags=0) -> [String, String]

ノード名とサービスを文字列の配列で返します。

flags には Socket::NI_??? という名前の定数のビット OR を渡します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).getnameinfo
#=> ["localhost", "www"]
p Addrinfo.tcp("127.0.0.1", 80).getnameinfo(Socket::NI_NUMERICSERV)
#=> ["localhost", "80"]
```

- **param** `flags` -- フラグ
- **raise** `SocketError` -- [man:getnameinfo(3)] がエラーを起こした場合に生じる例外

- **SEE** [Socket.getnameinfo](../../../method/Socket/s/getnameinfo.md)
