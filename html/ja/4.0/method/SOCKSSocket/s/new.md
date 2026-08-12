# SOCKSSocket.new

### def SOCKSSocket.open(host, service) -> SOCKSSocket
### def SOCKSSocket.new(host, service) -> SOCKSSocket

host で指定したホストの service で指定したポートと接続したソケットを返します。host はホスト名、またはインターネットアドレスを示す文字列、service は /etc/services (または NIS) に登録されているサービス名かポート番号です。

- **param** `host` --  ホスト名、またはインターネットアドレスを示す文字列を指定します。
- **param** `service` -- /etc/services (または NIS) に登録されているサービス名かポート番号です。

### def SOCKSSocket.new(host, serv) -> SOCKSSocket

[SOCKSSocket.new](../../../method/SOCKSSocket/s/new.md)のパラメータ host の名前解決に [resolv](../../../library/resolv.md)
ライブラリを使います。

- **param** `host` -- ホスト名を文字列で指定します。
- **param** `serv` -- ホスト名を文字列で指定します。
- **raise** `SocketError` -- 名前解決に失敗した場合に発生します。
