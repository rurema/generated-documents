# BasicSocket#recv_nonblock

### def recv_nonblock(maxlen, flags = 0) -> String | nil

ソケットをノンブロッキングモードに設定した後、
[man:recvfrom(2)] でソケットからデータを受け取ります。

引数、返り値は [BasicSocket#recv](../../../method/BasicSocket/i/recv.md) と同じです。
すなわち、TCP や UNIXSocket のようなストリームソケットで接続が閉じられている場合 (EOF) は nil を返します。

[man:recvfrom(2)] がエラーになった場合、
EAGAIN, EINTR を含め例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **param** `maxlen` -- 受け取る文字列の最大の長さを指定します。

- **param** `flags` -- [man:recv(2)] を参照してください。

- **raise** `IOError` --

- **raise** `Errno::EXXX` -- [man:recvfrom(2)] がエラーになった場合などに発生します。

- **SEE** [bug:19012]
