# Socket.udp_server_loop

### def Socket.udp_server_loop(port) {|msg, msg_src| ... } -> ()
### def Socket.udp_server_loop(host, port) {|msg, msg_src| ... } -> ()

UDP のサーバを起動して、メッセージが来るごとにブロックを呼び出します。

ブロックに渡される引数は msg と msg_src の 2 つで、
msg は受け取ったメッセージ文字列で、 msg_src は
通信相手の [Socket::UDPSource](../../../class/Socket=3a=3aUDPSource.md) オブジェクトです。

- **param** `host` -- 割り当てるホスト名
- **param** `port` -- 割り当てるポート番号
- **SEE** [Socket.udp_server_sockets](../../../method/Socket/s/udp_server_sockets.md), [Socket.udp_server_loop_on](../../../method/Socket/s/udp_server_loop_on.md)
