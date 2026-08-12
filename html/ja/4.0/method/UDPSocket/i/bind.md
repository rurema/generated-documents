# UDPSocket#bind

### def bind(host, port) -> 0

ソケットを host の port に [man:bind(2)] します。

bind したポートから [BasicSocket#recv](../../../method/BasicSocket/i/recv.md) でデータを受け取ることができます。

- **param** `host` -- bind するホスト名文字列
- **param** `port` -- bind するポート番号

### def bind(host, port) -> Integer

[UDPSocket#bind](../../../method/UDPSocket/i/bind.md)のパラメータ host の名前解決に [resolv](../../../library/resolv.md)
ライブラリを使います。

- **param** `host` -- bindするホスト名を文字列で指定します。
- **param** `port` -- bindするポートを指定します。
- **raise** `SocketError` -- 名前解決に失敗した場合に発生します。
