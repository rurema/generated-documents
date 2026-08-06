# Socket::AncillaryData.ipv6_pktinfo

### def Socket::AncillaryData.ipv6_pktinfo(addr, ifindex) -> Socket::AncillaryData

type が IPV6_PKTINFO である AncillaryData を生成します。

IPV6_PKTINFO は [RFC:3542] で定義されています。

```ruby
require 'socket'

addr = Addrinfo.ip("::1")
ifindex = 0
p Socket::AncillaryData.ipv6_pktinfo(addr, ifindex)
#=> #<Socket::AncillaryData: INET6 IPV6 PKTINFO ::1 ifindex:0>
```

- **param** `addr` -- アドレス(文字列もしくは [Addrinfo](../../../class/Addrinfo.md))
- **param** `ifindex` -- インターフェースのインデックス(整数)

- **SEE** [Socket::AncillaryData#ipv6_pktinfo](../../../method/Socket=3a=3aAncillaryData/i/ipv6_pktinfo.md),
     [Socket::Constants::IPV6_PKTINFO](../../../method/Socket=3a=3aConstants/c/IPV6_PKTINFO.md)
