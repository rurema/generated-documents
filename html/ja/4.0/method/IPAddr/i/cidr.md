# IPAddr#cidr

### def cidr -> String

`self` を CIDR 表記(`アドレス/プリフィックス長`)の文字列に変換します。ホストアドレスであってもプリフィックス長を省略しません。

```ruby title="例"
require "ipaddr"
p IPAddr.new("192.168.1.1").cidr      # => "192.168.1.1/32"
p IPAddr.new("192.168.1.0/24").cidr   # => "192.168.1.0/24"
```

- **SEE** [IPAddr#to_s](../../../method/IPAddr/i/to_s.md), [IPAddr#to_string](../../../method/IPAddr/i/to_string.md)
