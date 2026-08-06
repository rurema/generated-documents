# class BasicSocket < IO

ソケットを表す抽象クラスです。具体的なソケット操作はサブクラスで定義されます。

例えばインターネットドメインストリームソケットの場合は
[TCPSocket](../class/TCPSocket.md) を用います。

## Class Methods

- [do_not_reverse_lookup](../method/BasicSocket/s/do_not_reverse_lookup.md)
- [do_not_reverse_lookup=](../method/BasicSocket/s/do_not_reverse_lookup=3d.md)
- [for_fd](../method/BasicSocket/s/for_fd.md)

## Instance Methods

- [connect_address](../method/BasicSocket/i/connect_address.md)
- [do_not_reverse_lookup](../method/BasicSocket/i/do_not_reverse_lookup.md)
- [do_not_reverse_lookup=](../method/BasicSocket/i/do_not_reverse_lookup=3d.md)
- [getpeereid](../method/BasicSocket/i/getpeereid.md)
- [getpeername](../method/BasicSocket/i/getpeername.md)
- [getsockname](../method/BasicSocket/i/getsockname.md)
- [getsockopt](../method/BasicSocket/i/getsockopt.md)
- [local_address](../method/BasicSocket/i/local_address.md)
- [recv](../method/BasicSocket/i/recv.md)
- [recv_nonblock](../method/BasicSocket/i/recv_nonblock.md)
- [recvmsg](../method/BasicSocket/i/recvmsg.md)
- [recvmsg_nonblock](../method/BasicSocket/i/recvmsg_nonblock.md)
- [remote_address](../method/BasicSocket/i/remote_address.md)
- [send](../method/BasicSocket/i/send.md)
- [sendmsg](../method/BasicSocket/i/sendmsg.md)
- [sendmsg_nonblock](../method/BasicSocket/i/sendmsg_nonblock.md)
- [setsockopt](../method/BasicSocket/i/setsockopt.md)
- [shutdown](../method/BasicSocket/i/shutdown.md)
