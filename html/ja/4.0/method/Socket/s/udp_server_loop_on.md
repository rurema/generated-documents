# Socket.udp_server_loop_on

### def Socket.udp_server_loop_on(sockets) {|msg, msg_src| ... } -> ()

sockets (UDP のソケット)に対し、通信を待ち受けます。

[Socket.udp_server_sockets](../../../method/Socket/s/udp_server_sockets.md) の返り値がこれの引数に適切です。

ソケットからメッセージを受け取るたびにブロックを呼び出します。
ブロックに渡される引数は msg と msg_src の 2 つで、
msg は受け取ったメッセージ文字列で、 msg_src は 
通信相手の [Socket::UDPSource](../../../class/Socket=3a=3aUDPSource.md) オブジェクトです。

無限ループ構造になっています。

- **param** `sockets` -- 通信を待ち受けるソケットの配列
- **SEE** [Socket.udp_server_recv](../../../method/Socket/s/udp_server_recv.md), [Socket.udp_server_loop](../../../method/Socket/s/udp_server_loop.md)
