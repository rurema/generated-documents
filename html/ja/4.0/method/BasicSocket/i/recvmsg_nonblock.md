# BasicSocket#recvmsg_nonblock

### def recvmsg_nonblock(maxmesglen=nil, flags=0, maxcontrollen=nil, opts={}) -> [String, Addrinfo, Integer, *Socket::AncillaryData] | nil

[man:recvmsg(2)] を用いてノンブロッキング方式でメッセージを受け取ります。

ブロッキングの有無以外は [BasicSocket#recvmsg](../../../method/BasicSocket/i/recvmsg.md) と同じです。
詳しくはそちらを参照してください。
すなわち、TCP や UNIXSocket のようなストリームソケットで接続が閉じられている場合 (EOF) は nil を返します。

- **param** `maxmesglen` -- 受け取るメッセージの最大長
- **param** `flags` -- フラグ
- **param** `maxcontrollen` -- 受け取る補助データの最大長
- **param** `opts` -- ハッシュオプション

- **SEE** [bug:19012]
