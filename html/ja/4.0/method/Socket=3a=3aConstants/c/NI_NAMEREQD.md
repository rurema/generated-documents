# Socket::Constants::NI_NAMEREQD

### const NI_NAMEREQD -> Integer

A name is required。名前解決できなかった場合にエラーを返すことを意味します。

[Socket.getnameinfo](../../../method/Socket/s/getnameinfo.md), [Addrinfo#getnameinfo](../../../method/Addrinfo/i/getnameinfo.md) の引数 flags に渡す定数です。

```ruby
require 'socket'
  
# ここでは 192.0.2.18 は名前解決できないアドレス
p Addrinfo.tcp("192.0.2.18", 514).getnameinfo()
# =>["192.0.2.18", "shell"] 
Addrinfo.tcp("192.0.2.18", 514).getnameinfo(Socket::NI_NAMEREQD)
# SocketError が発生する
```

- **SEE** [man:getnameinfo(3)]
