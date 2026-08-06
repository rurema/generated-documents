# class Socket::AncillaryData < Object

[BasicSocket#sendmsg](../method/BasicSocket/i/sendmsg.md) や [BasicSocket#recvmsg](../method/BasicSocket/i/recvmsg.md)
で用いる ancillary data (補助データ、制御情報)
を表すクラスです。

[Socket::AncillaryData#family](../method/Socket=3a=3aAncillaryData/i/family.md)(socket family), 
[Socket::AncillaryData#level](../method/Socket=3a=3aAncillaryData/i/level.md)(cmsg level),
[Socket::AncillaryData#type](../method/Socket=3a=3aAncillaryData/i/type.md)(cmsg type),
[Socket::AncillaryData#data](../method/Socket=3a=3aAncillaryData/i/data.md)(cmsg data),
といった要素を持ちます。

## Class Methods

- [int](../method/Socket=3a=3aAncillaryData/s/int.md)
- [ip_pktinfo](../method/Socket=3a=3aAncillaryData/s/ip_pktinfo.md)
- [ipv6_pktinfo](../method/Socket=3a=3aAncillaryData/s/ipv6_pktinfo.md)
- [new](../method/Socket=3a=3aAncillaryData/s/new.md)
- [unix_rights](../method/Socket=3a=3aAncillaryData/s/unix_rights.md)

## Instance Methods

- [cmsg_is?](../method/Socket=3a=3aAncillaryData/i/cmsg_is=3f.md)
- [data](../method/Socket=3a=3aAncillaryData/i/data.md)
- [family](../method/Socket=3a=3aAncillaryData/i/family.md)
- [int](../method/Socket=3a=3aAncillaryData/i/int.md)
- [ip_pktinfo](../method/Socket=3a=3aAncillaryData/i/ip_pktinfo.md)
- [ipv6_pktinfo](../method/Socket=3a=3aAncillaryData/i/ipv6_pktinfo.md)
- [ipv6_pktinfo_addr](../method/Socket=3a=3aAncillaryData/i/ipv6_pktinfo_addr.md)
- [ipv6_pktinfo_ifindex](../method/Socket=3a=3aAncillaryData/i/ipv6_pktinfo_ifindex.md)
- [level](../method/Socket=3a=3aAncillaryData/i/level.md)
- [timestamp](../method/Socket=3a=3aAncillaryData/i/timestamp.md)
- [type](../method/Socket=3a=3aAncillaryData/i/type.md)
- [unix_rights](../method/Socket=3a=3aAncillaryData/i/unix_rights.md)
