# Socket::Option.ipv4_multicast_loop

### def Socket::Option.ipv4_multicast_loop(integer) -> Socket::Option

IPPROTO_IP/IP_MULTICAST_LOOP 用の `Socket::Option` オブジェクトを新たに生成し返します。

- **param** `integer` -- データ(整数)

```ruby
require 'socket'

p Socket::Option.ipv4_multicast_loop(1)
# => #<Socket::Option: INET IP MULTICAST_LOOP 1>
```
