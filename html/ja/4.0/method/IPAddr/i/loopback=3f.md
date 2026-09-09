# IPAddr#loopback?

### def loopback? -> bool

`self` がループバックアドレスなら真を返します。IPv4 の 127.0.0.0/8 と IPv6 の ::1 がループバックアドレスとみなされます。IPv4 射影 IPv6 アドレス範囲内のループバックな IPv4 アドレスもループバックとみなされます。

```ruby title="例"
require "ipaddr"
p IPAddr.new("127.0.0.1").loopback?    # => true
p IPAddr.new("::1").loopback?          # => true
p IPAddr.new("192.168.1.1").loopback?  # => false
```
