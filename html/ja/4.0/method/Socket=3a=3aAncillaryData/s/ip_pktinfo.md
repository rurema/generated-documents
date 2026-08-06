# Socket::AncillaryData.ip_pktinfo

### def Socket::AncillaryData.ip_pktinfo(addr, ifindex, spec_dst=addr) -> Socket::AncillaryData

type が IP_PKTINFO である AncillaryData を生成します。

IP_PKTINFO は非標準的拡張であり、システムによっては使えない場合があります。

```ruby
require 'socket'

addr = Addrinfo.ip("127.0.0.1")
ifindex = 0
spec_dst = Addrinfo.ip("127.0.0.1")
p Socket::AncillaryData.ip_pktinfo(addr, ifindex, spec_dst)
#=> #<Socket::AncillaryData: INET IP PKTINFO 127.0.0.1 ifindex:0 spec_dst:127.0.0.1>
```

- **param** `addr` -- アドレス(文字列もしくは [Addrinfo](../../../class/Addrinfo.md))
- **param** `ifindex` -- インターフェースのインデックス(整数)
- **param** `spec_dst` -- パケットのローカルアドレス(文字列もしくは [Addrinfo](../../../class/Addrinfo.md))

- **SEE** [Socket::AncillaryData#ip_pktinfo](../../../method/Socket=3a=3aAncillaryData/i/ip_pktinfo.md),
     [Socket::Constants::IP_PKTINFO](../../../method/Socket=3a=3aConstants/c/IP_PKTINFO.md)
