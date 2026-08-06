# Socket::AncillaryData#family

### def family -> Integer

自身が保持している socket family を返します。

```ruby
require 'socket'

p Socket::AncillaryData.new(:INET6, :IPV6, :PKTINFO, "").family
#=> 10
```

- **SEE** [Socket::AncillaryData.new](../../../method/Socket=3a=3aAncillaryData/s/new.md)
