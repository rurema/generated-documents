# IPAddr#link_local?

### def link_local? -> bool

`self` がリンクローカルアドレスなら真を返します。[RFC:3927] で予約された IPv4 の 169.254.0.0/16 と、[RFC:4291] で予約された IPv6 のリンクローカルユニキャストアドレス fe80::/10 がリンクローカルとみなされます。IPv4 射影 IPv6 アドレス範囲内のリンクローカルな IPv4 アドレスもリンクローカルとみなされます。


```ruby title="例"
require "ipaddr"
p IPAddr.new("169.254.1.1").link_local?  # => true
p IPAddr.new("fe80::1").link_local?      # => true
p IPAddr.new("192.168.1.1").link_local?  # => false
```
