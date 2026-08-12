# UDPSocket#connect

### def connect(host, port) -> 0

ソケットを host の port に [man:connect(2)] します。

これによって [UDPSocket#send](../../../method/UDPSocket/i/send.md) で送り先のアドレスを指定せずにデータを送ることができます(connect しなくとも送り先のアドレスを明示すればデータを送ることができます)。

```ruby
require 'socket'

u1 = UDPSocket.new
u1.bind("127.0.0.1", 4913)
u2 = UDPSocket.new
u2.connect("127.0.0.1", 4913)
u2.send "uuuu", 0
p u1.recvfrom(10) # => ["uuuu", ["AF_INET", 33230, "localhost", "127.0.0.1"]]
```

- **param** `host` -- 接続するホスト名文字列
- **param** `port` -- 接続するポート番号

### def connect(host, port) -> Integer

[UDPSocket#connect](../../../method/UDPSocket/i/connect.md) のパラメータ host の名前解決に
[resolv](../../../library/resolv.md) ライブラリを使います。

- **param** `host` -- connect するホスト名を文字列で指定します。
- **param** `port` -- connect するポートを指定します。
- **raise** `SocketError` -- 名前解決に失敗した場合に発生します。
