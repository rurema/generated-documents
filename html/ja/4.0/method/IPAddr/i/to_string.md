# IPAddr#to_string

### def to_string -> String

標準的な文字列表現に変換します。

```ruby
require 'ipaddr'
addr6 = IPAddr.new('::1')
p addr6.to_s     # => "::1"
p addr6.to_string  # => "0000:0000:0000:0000:0000:0000:0000:0001"
```

- **SEE** [IPAddr#to_s](../../../method/IPAddr/i/to_s.md)
