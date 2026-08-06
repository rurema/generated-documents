# Socket#accept_nonblock

### def accept_nonblock -> Array

ソケットをノンブロッキングモードに設定した後、
[man:accept(2)] を呼び出します。

引数、返り値は [Socket#accept](../../../method/Socket/i/accept.md) と同じです。

[man:accept(2)] がエラーになった場合、
EAGAIN, EINTR を含め例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。
