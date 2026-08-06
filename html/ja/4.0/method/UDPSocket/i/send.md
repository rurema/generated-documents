# UDPSocket#send

### def send(mesg, flags, host, port) -> Integer
### def send(mesg, flags, sockaddr_to) -> Integer
### def send(mesg, flags) -> Integer

UDP ソケットを介してデータを送ります。

flags には Socket::MSG_* という定数の bitwise OR を渡します。
詳しい意味は [man:send(2)] を参照してください。

host, port の対、もしくは sockaddr_to で送り先を指定します。
送り先を省略した場合は [UDPSocket#connect](../../../method/UDPSocket/i/connect.md) で接続した先にデータを送ります。

実際に送ったデータの長さを返します。

sockaddr_to には[socket#pack_string](../../../library/socket.md#pack_string) もしくは
[Addrinfo](../../../class/Addrinfo.md) オブジェクトを指定します。

host, port に関しては [socket#host_format](../../../library/socket.md#host_format)、
[socket#service_format](../../../library/socket.md#service_format)を参照してください。

2 引数、3 引数の形式の場合の動作は、
[BasicSocket#send](../../../method/BasicSocket/i/send.md) と同じです。

4 引数の形式で、指定したホストが複数のアドレスを持つ場合、いずれかのアドレスへの送信が成功するまで(あるいはすべての送信が失敗するまで)、各アドレスへの送信を順に試みます。

データの送信に失敗した場合は例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **param** `mesg` -- 送るデータ文字列
- **param** `flags` -- フラグ
- **param** `host` -- 送り先のホスト名
- **param** `port` -- 送り先のポート番号
- **param** `sockaddr_to` -- 送り先のアドレス情報

### def send(mesg, flags , dest_sockaddr=nil) -> Integer
### def send(mesg, flags, host, port) -> Integer

4 引数の形式で [UDPSocket#send](../../../method/UDPSocket/i/send.md) 実行したとき、パラメータ host の名前解決に
[resolv](../../../library/resolv.md) ライブラリを使います。

- **param** `mesg` -- 送るデータを文字列で与えます。
- **param** `flags` -- フラグを指定します。
- **param** `host` -- データを送る先のホストを指定します。
- **param** `port` -- データを送る先のポートを指定します。
- **raise** `SocketError` -- 名前解決に失敗した場合に発生します。
