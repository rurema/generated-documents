# Addrinfo#ipv6_to_ipv4

### def ipv6_to_ipv4 -> Addrinfo|nil

IPv6 の v4 マップド/互換アドレスを v4 のアドレスに変換します。

それ以外のアドレスの場合 nil を返します。

```ruby
require 'socket'

p Addrinfo.ip("::192.0.2.3").ipv6_to_ipv4    # => #<Addrinfo: 192.0.2.3>
p Addrinfo.ip("::ffff:192.0.2.3").ipv6_to_ipv4 # => #<Addrinfo: 192.0.2.3>
p Addrinfo.ip("::1").ipv6_to_ipv4            # => nil
p Addrinfo.ip("192.0.2.3").ipv6_to_ipv4      # => nil
p Addrinfo.unix("/tmp/sock").ipv6_to_ipv4    # => nil
```
