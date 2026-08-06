# Socket::AncillaryData#ip_pktinfo

### def ip_pktinfo -> [Addrinfo, Integer, Addrinfo]

自身の type が IP_PKTINFO である場合、保持しているデータ
(アドレス、インターフェースのインデックス、ローカルアドレス)
を3要素の配列で返します。

IP_PKTINFO は非標準的拡張であり、システムによっては使えない場合があります。

```ruby
require 'socket'

addr = Addrinfo.ip("127.0.0.1")
ifindex = 0
spec_dest = Addrinfo.ip("127.0.0.1")
ancdata = Socket::AncillaryData.ip_pktinfo(addr, ifindex, spec_dest)
p ancdata.ip_pktinfo
#=> [#<Addrinfo: 127.0.0.1>, 0, #<Addrinfo: 127.0.0.1>]
```

- **raise** `TypeError` -- level, type が IPPROTO_IP, IP_PKTINFO でない場合に
       発生します。
- **SEE** [Socket::AncillaryData.ip_pktinfo](../../../method/Socket=3a=3aAncillaryData/s/ip_pktinfo.md),
     [Socket::Constants::IP_PKTINFO](../../../method/Socket=3a=3aConstants/c/IP_PKTINFO.md)
