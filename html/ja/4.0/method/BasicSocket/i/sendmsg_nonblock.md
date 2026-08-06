# BasicSocket#sendmsg_nonblock

### def sendmsg_nonblock(mesg, flags=0, dest_sockaddr=nil, *controls) -> Integer

[man:sendmsg(2)] を用いてノンブロッキング方式でメッセージを送ります。

詳しくは [BasicSocket#sendmsg](../../../method/BasicSocket/i/sendmsg.md) を見てください。

- **return** -- 送ったバイト数
- **param** `mesg` -- メッセージ文字列
- **param** `flags` -- フラグ(Socket::MSG_* という定数の bitwise OR を取ったもの)
- **param** `dest_sockaddr` -- 通信先のアドレス
- **param** `controls` -- 補助データの配列
- **SEE** [BasicSocket#sendmsg](../../../method/BasicSocket/i/sendmsg.md)
