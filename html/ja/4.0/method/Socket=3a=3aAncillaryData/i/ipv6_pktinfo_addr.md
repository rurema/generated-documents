# Socket::AncillaryData#ipv6_pktinfo_addr

### def ipv6_pktinfo_addr -> Addrinfo

自身の type が IPV6_PKTINFO である場合、保持しているデータ
(アドレス、インターフェースのインデックス)
のアドレスを返します。

```ruby
require 'socket'

addr = Addrinfo.ip("::1")
ifindex = 0
ancdata = Socket::AncillaryData.ipv6_pktinfo(addr, ifindex)
p ancdata.ipv6_pktinfo_addr # => #<Addrinfo: ::1>
```

- **SEE** [Socket::AncillaryData.ipv6_pktinfo](../../../method/Socket=3a=3aAncillaryData/s/ipv6_pktinfo.md), 
     [Socket::AncillaryData#ipv6_pktinfo](../../../method/Socket=3a=3aAncillaryData/i/ipv6_pktinfo.md), 
     [Socket::AncillaryData#ipv6_pktinfo_ifindex](../../../method/Socket=3a=3aAncillaryData/i/ipv6_pktinfo_ifindex.md),
     [Socket::Constants::IPV6_PKTINFO](../../../method/Socket=3a=3aConstants/c/IPV6_PKTINFO.md)
