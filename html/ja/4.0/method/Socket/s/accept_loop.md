# Socket.accept_loop

### def Socket.accept_loop(sockets) {|sock, client_addrinfo| ...} -> ()

sockets でサーバソケットを受け取り、接続を待ち受け、クライアントとの接続が確立するたびにブロックにその接続ソケットを渡し呼び出します。

ブロックの引数はクライアントと接続したソケットオブジェクトと
[Addrinfo](../../../class/Addrinfo.md) オブジェクトです。

[Socket.tcp_server_loop](../../../method/Socket/s/tcp_server_loop.md) と同様、ブロックは逐次的に呼び出されます。つまりブロックか終了するまで次の接続は accept されません。
並列に通信したい場合はスレッドのような並列実行機構を使う必要があります。

- **param** `sockets` -- 待ち受けたいサーバソケットの配列

- **SEE** [Socket.tcp_server_loop](../../../method/Socket/s/tcp_server_loop.md), [Socket.unix_server_loop](../../../method/Socket/s/unix_server_loop.md)
