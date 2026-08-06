# TCPSocket.gethostbyname

### def TCPSocket.gethostbyname(host) -> Array

このメソッドは deprecated です。[Addrinfo.getaddrinfo](../../../method/Addrinfo/s/getaddrinfo.md) を使用してください。

ホスト名または IP アドレス (整数または"127.0.0.1"
のような文字列)からホストの情報を返します。ホスト情報は、ホスト名、ホストの別名の配列、ホストのアドレスタイプ、ホストのアドレスを各要素とする配列です。ホストのアドレスは octet
decimal の文字列 ("127.0.0.1"のような文字列) や IPv6
アドレス ("::1" のような文字列) です。

- **param** `host` -- ホスト名または IP アドレス (整数または"127.0.0.1" のような文字列)を指定します。

- **return** -- ホスト名、ホストの別名の配列、ホストのアドレスタイプ、ホストのアドレスを各要素とする配列を返します。

```ruby title="例"
require 'socket'

p TCPSocket.gethostbyname("www.ruby-lang.org")
#=> ["beryllium.ruby-lang.org", [], 2, "210.163.138.100"]
```
