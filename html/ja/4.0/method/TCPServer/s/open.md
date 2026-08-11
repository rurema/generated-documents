# TCPServer.open

### def TCPServer.new(host=nil, service) -> TCPServer
### def TCPServer.open(host=nil, service) -> TCPServer

新しいサーバー接続をオープンします。service は
/etc/services (または NIS) に登録されているサービス名かポート番号で指定します。host を指定した時は指定したホストに対しての接続だけを受け付けます。

省略時は全てのホストへの接続要求を受け付けることになります。
new, open は内部では [man:getaddrinfo(3)] を呼び出しており、複数のアドレス構造体が検出された場合、最初に見つかったものを返します。
実行環境によっては IPv4, IPv6 のどちらか専用の接続になる場合がありますが、その場合、host を省略せず明示的に指定することで、接続を特定できます。

host に指定できる形式は[socket#host_format](../../../library/socket.md#host_format)を見てください。

- **param** `host` -- 接続したいホストを指定します。
            host に指定できる形式は[socket#host_format](../../../library/socket.md#host_format)を見てください。

- **param** `service` -- /etc/services (または NIS) に登録されているサービス名かポート番号で指定します。
