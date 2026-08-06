# TCPServer#accept_nonblock

### def accept_nonblock -> TCPSocket

ソケットをノンブロッキングモードに設定した後、
[man:accept(2)] を呼び出します。

返り値は [TCPServer#accept](../../../method/TCPServer/i/accept.md) と同じです。

[man:accept(2)] がエラーになった場合、
EAGAIN, EINTR を含め例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **raise** `Errno::EXXX` -- [man:accept(2)] がエラーになった場合に発生します。
