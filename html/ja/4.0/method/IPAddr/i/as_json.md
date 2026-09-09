# IPAddr#as_json

### def as_json(*args) -> String

JSON 形式に変換する際に使われる、`self` を表す文字列を返します。

IPv4 アドレスでプリフィックス長が 32 の場合、または IPv6 アドレスでプリフィックス長が 128 の場合は [IPAddr#to_s](../../../method/IPAddr/i/to_s.md) と同じ文字列を返します。それ以外の場合は [IPAddr#cidr](../../../method/IPAddr/i/cidr.md) と同じ CIDR 表記の文字列を返します。

- **param** `args` -- JSON ライブラリとの互換性のために受け取りますが、使用されません。

```ruby title="例"
require "ipaddr"
p IPAddr.new("192.168.1.1").as_json      # => "192.168.1.1"
p IPAddr.new("192.168.1.0/24").as_json   # => "192.168.1.0/24"
```

- **SEE** [IPAddr#to_json](../../../method/IPAddr/i/to_json.md), [IPAddr#cidr](../../../method/IPAddr/i/cidr.md), [IPAddr#to_s](../../../method/IPAddr/i/to_s.md)
