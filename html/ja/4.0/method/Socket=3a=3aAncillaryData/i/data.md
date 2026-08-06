# Socket::AncillaryData#data

### def data -> String

自身が保持している cmsg data (データ) を返します。

```ruby
require 'socket'

p Socket::AncillaryData.new(:INET6, :IPV6, :PKTINFO, "").type
#=> ""
```

- **SEE** [Socket::AncillaryData.new](../../../method/Socket=3a=3aAncillaryData/s/new.md)
