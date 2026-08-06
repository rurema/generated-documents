# Socket.gethostname

### def Socket.gethostname -> String

システムの標準のホスト名を取得します。

ホストの別名やアドレスなど他の情報を得るには
[Socket.getaddrinfo](../../../method/Socket/s/getaddrinfo.md) を使ってください。
ただし、これは不可能な場合もあります。

```ruby title="例"
require 'socket'

p Socket.gethostname   #=> "helium.ruby-lang.org"
```
