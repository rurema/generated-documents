# IPAddr#to_s

### def to_s -> String

文字列に変換します。

```ruby
require 'ipaddr'
addr6 = IPAddr.new('::1')
p addr6.to_s     # => "::1"
p addr6.to_string  # => "0000:0000:0000:0000:0000:0000:0000:0001"
```

- **SEE** [IPAddr#to_string](../../../method/IPAddr/i/to_string.md)
