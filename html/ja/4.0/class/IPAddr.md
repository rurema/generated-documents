# class IPAddr < Object

IP アドレスを表すクラスです。IPv4 と IPv6 のどちらのアドレスも表せます。

```ruby title="例"
require 'ipaddr'
  
ipaddr1 = IPAddr.new("3ffe:505:2::1")
p ipaddr1   # => #<IPAddr: IPv6:3ffe:0505:0002:0000:0000:0000:0000:0001/ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff>
  
ipaddr3 = IPAddr.new("192.168.2.0/24")
p ipaddr3   # => #<IPAddr: IPv4:192.168.2.0/255.255.255.0>
```

### 参照

  - [RFC:3513]

## Class Methods

- [new](../method/IPAddr/s/new.md)
- [new_ntoh](../method/IPAddr/s/new_ntoh.md)
- [ntop](../method/IPAddr/s/ntop.md)

## Instance Methods

- [&](../method/IPAddr/i/=26.md)
- [<<](../method/IPAddr/i/=3c=3c.md)
- [<=>](../method/IPAddr/i/=3c=3d=3e.md)
- [==](../method/IPAddr/i/=3d=3d.md)
- [===](../method/IPAddr/i/=3d=3d=3d.md)
- [include?](../method/IPAddr/i/include=3f.md)
- [>>](../method/IPAddr/i/=3e=3e.md)
- [|](../method/IPAddr/i/=7c.md)
- [~](../method/IPAddr/i/=7e.md)
- [eql?](../method/IPAddr/i/eql=3f.md)
- [family](../method/IPAddr/i/family.md)
- [hash](../method/IPAddr/i/hash.md)
- [hton](../method/IPAddr/i/hton.md)
- [inspect](../method/IPAddr/i/inspect.md)
- [ip6_arpa](../method/IPAddr/i/ip6_arpa.md)
- [ip6_int](../method/IPAddr/i/ip6_int.md)
- [ipv4?](../method/IPAddr/i/ipv4=3f.md)
- [ipv4_compat](../method/IPAddr/i/ipv4_compat.md)
- [ipv4_compat?](../method/IPAddr/i/ipv4_compat=3f.md)
- [ipv4_mapped](../method/IPAddr/i/ipv4_mapped.md)
- [ipv4_mapped?](../method/IPAddr/i/ipv4_mapped=3f.md)
- [ipv6?](../method/IPAddr/i/ipv6=3f.md)
- [mask](../method/IPAddr/i/mask.md)
- [native](../method/IPAddr/i/native.md)
- [prefix](../method/IPAddr/i/prefix.md)
- [prefix=](../method/IPAddr/i/prefix=3d.md)
- [reverse](../method/IPAddr/i/reverse.md)
- [succ](../method/IPAddr/i/succ.md)
- [to_i](../method/IPAddr/i/to_i.md)
- [to_range](../method/IPAddr/i/to_range.md)
- [to_s](../method/IPAddr/i/to_s.md)
- [to_string](../method/IPAddr/i/to_string.md)

## Protected Instance Methods

- [mask!](../method/IPAddr/i/mask=21.md)
- [set](../method/IPAddr/i/set.md)
