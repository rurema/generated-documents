# Socket::Option.ipv4_multicast_ttl

### def Socket::Option.ipv4_multicast_ttl(integer) -> Socket::Option
{: since="2.1.0"}

IPPROTO_IP/IP_MULTICAST_TTL 用の `Socket::Option` オブジェクトを新たに生成し返します。

- **param** `integer` -- データ(整数)

```ruby
require 'socket'

p Socket::Option.ipv4_multicast_ttl(10)
# => #<Socket::Option: INET IP MULTICAST_TTL 10>
```
