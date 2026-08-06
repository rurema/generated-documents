# Socket::SO_ERROR

### const SO_ERROR -> Integer

Get socket error status。
[BasicSocket#getsockopt](../../../method/BasicSocket/i/getsockopt.md), [BasicSocket#setsockopt](../../../method/BasicSocket/i/setsockopt.md)
の第2引数(optname)に使用します。

- **SEE** [man:sys/socket.h(header)], [man:getsockopt(2freebsd)],
     [man:socket(7linux)], [Socket::Constants::SOL_SOCKET](../../../method/Socket=3a=3aConstants/c/SOL_SOCKET.md)
