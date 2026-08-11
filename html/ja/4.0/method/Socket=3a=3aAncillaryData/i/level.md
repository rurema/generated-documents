# Socket::AncillaryData#level

### def level -> Integer

自身が保持している cmsg level (元プロトコル) を返します。

```ruby
require 'socket'

p Socket::AncillaryData.new(:INET6, :IPV6, :PKTINFO, "").level
# => 41
```

- **SEE** [Socket::AncillaryData.new](../../../method/Socket=3a=3aAncillaryData/s/new.md)
