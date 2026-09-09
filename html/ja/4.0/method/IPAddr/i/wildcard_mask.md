# IPAddr#wildcard_mask

### def wildcard_mask -> String

ワイルドカードマスク([IPAddr#netmask](../../../method/IPAddr/i/netmask.md) のビットごとの論理否定)を文字列表現で返します(例: 0.0.255.255)。

```ruby title="例"
require "ipaddr"
p IPAddr.new("192.168.0.0/16").wildcard_mask  # => "0.0.255.255"
```

- **SEE** [IPAddr#netmask](../../../method/IPAddr/i/netmask.md)
