# Socket::AncillaryData#cmsg_is?

### def cmsg_is?(level, type) -> bool

自身の level と type が引数のものと一致している場合に真を返します。

```ruby
require 'socket'

ancdata = Socket::AncillaryData.new(:INET6, :IPV6, :PKTINFO, "")
p ancdata.cmsg_is?(Socket::IPPROTO_IPV6, Socket::IPV6_PKTINFO) #=> true
p ancdata.cmsg_is?(:IPV6, :PKTINFO)     #=> true
p ancdata.cmsg_is?(:IP, :PKTINFO)       #=> false
p ancdata.cmsg_is?(:SOCKET, :RIGHTS)    #=> false
```

- **param** `level` -- 一致を確認する cmsg_level (文字列、シンボル、整数)
- **param** `type` -- 一致を確認する cmsg_type (文字列、シンボル、整数)
- **SEE** [Socket::AncillaryData#level](../../../method/Socket=3a=3aAncillaryData/i/level.md), [Socket::AncillaryData#type](../../../method/Socket=3a=3aAncillaryData/i/type.md)
