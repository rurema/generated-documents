# IPAddr#netmask

### def netmask -> String

サブネットマスクを文字列表現で返します(例: 255.255.0.0)。

```ruby title="例"
require "ipaddr"
p IPAddr.new("192.168.0.0/16").netmask       # => "255.255.0.0"
p IPAddr.new("2001:db8::/32").netmask        # => "ffff:ffff:0000:0000:0000:0000:0000:0000"
```

- **SEE** [IPAddr#wildcard_mask](../../../method/IPAddr/i/wildcard_mask.md)
