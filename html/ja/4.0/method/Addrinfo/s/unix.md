# Addrinfo.unix

### def Addrinfo.unix(path, socktype=Socket::SOCK_STREAM) -> Addrinfo

Unix ソケットアドレスに対応する Addrinfo オブジェクトを返します。

socktype でソケットタイプを指定します。

```ruby
require 'socket'

p Addrinfo.unix("/tmp/sock")       #=> #<Addrinfo: /tmp/sock SOCK_STREAM>
p Addrinfo.unix("/tmp/sock", :DGRAM) #=> #<Addrinfo: /tmp/sock SOCK_DGRAM>
```

- **param** `path` -- Unix ソケットのアドレス文字列
- **param** `socktype` -- ソケットタイプ(整数、文字列、シンボル)

- **SEE** [Addrinfo.new](../../../method/Addrinfo/s/new.md)
