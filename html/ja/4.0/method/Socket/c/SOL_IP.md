# Socket::SOL_IP

### const SOL_IP -> Integer

IP socket options。
[BasicSocket#getsockopt](../../../method/BasicSocket/i/getsockopt.md), [BasicSocket#setsockopt](../../../method/BasicSocket/i/setsockopt.md)
の第一引数(level)に使用します。

SOL_IP はポータブルではありません。 IPPROTO_IP のほうがよりポータブルです。

- **SEE** [man:getsockopt(2)], [man:setsockopt(2)], [man:ip(7linux)]
     [Socket::Constants::IPPROTO_IP](../../../method/Socket=3a=3aConstants/c/IPPROTO_IP.md)
