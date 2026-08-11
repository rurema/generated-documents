# IPAddr#to_range

### def to_range -> Range

self の IP アドレスとサブネットマスクで取得できる IP アドレスの範囲を
[Range](../../../class/Range.md) オブジェクトとして返します。

```ruby title="例"
require 'ipaddr'
p IPAddr.new('192.168.1.1').to_range
# => #<IPAddr: IPv4:192.168.1.1/255.255.255.255>..#<IPAddr: IPv4:192.168.1.1/255.255.255.255>
p IPAddr.new('::1').to_range
# => #<IPAddr: IPv6:0000:0000:0000:0000:0000:0000:0000:0001/ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff>..
#   #<IPAddr: IPv6:0000:0000:0000:0000:0000:0000:0000:0001/ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff>
```
