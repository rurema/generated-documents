# IPAddr#private?

### def private? -> bool

`self` がプライベートアドレスなら真を返します。[RFC:1918] で定義された IPv4 の 10.0.0.0/8、172.16.0.0/12、192.168.0.0/16 と、[RFC:4193] で定義された IPv6 のユニークローカルアドレス fc00::/7 がプライベートアドレスとみなされます。IPv4 射影 IPv6 アドレス範囲内のプライベートな IPv4 アドレスもプライベートとみなされます。

```ruby title="例"
require "ipaddr"
p IPAddr.new("192.168.1.1").private?  # => true
p IPAddr.new("10.1.2.3").private?     # => true
p IPAddr.new("8.8.8.8").private?      # => false
p IPAddr.new("fc00::1").private?      # => true
```
