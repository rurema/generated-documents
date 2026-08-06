# Socket::SO_TIMESTAMP

### const SO_TIMESTAMP -> Integer

Receive timestamp with datagrams (timeval)。
[BasicSocket#getsockopt](../../../method/BasicSocket/i/getsockopt.md), [BasicSocket#setsockopt](../../../method/BasicSocket/i/setsockopt.md)
の第2引数(optname)に使用します。

- **SEE** [man:getsockopt(2freebsd)],
     [man:socket(7linux)], [Socket::Constants::SOL_SOCKET](../../../method/Socket=3a=3aConstants/c/SOL_SOCKET.md)
     [Socket::AncillaryData#timestamp](../../../method/Socket=3a=3aAncillaryData/i/timestamp.md)
