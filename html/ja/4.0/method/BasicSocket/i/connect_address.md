# BasicSocket#connect_address

### def connect_address -> Addrinfo

ローカルマシン内で接続するのに適当なアドレスを [Addrinfo](../../../class/Addrinfo.md)
オブジェクトで返します。

[BasicSocket#local_address](../../../method/BasicSocket/i/local_address.md) の返り値以下の点を除いては同じものを返します。
  - IPv4 の不定アドレス(0.0.0.0) は IPv4 のループバックアドレス(127.0.0.1)
    に置換される
  - IPv6 の不定アドレス(::) は IPv6 のループバックアドレス(::1)
    に置換される

BasicSocket#local_address が接続先として不適なアドレスを返す場合は例外 [SocketError](../../../class/SocketError.md) が発生します。

```ruby
require 'socket'

Addrinfo.tcp("0.0.0.0", 0).listen {|serv|
  p serv.connect_address # => #<Addrinfo: 127.0.0.1:53660 TCP>
  serv.connect_address.connect {|c|
    s, _ = serv.accept
    p [c, s] # => [#<Socket:fd 4>, #<Socket:fd 6>]
  }
}
```

- **raise** `SocketError` -- アドレスが接続に不適な場合に返します
- **SEE** [BasicSocket#local_address](../../../method/BasicSocket/i/local_address.md)
