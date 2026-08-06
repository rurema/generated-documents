# OpenSSL::BN#bit_set?

### def bit_set?(n) -> bool

自身の n ビット目が立っているなら true を返します。

```ruby
require 'openssl'

p OpenSSL::BN.new("129").bit_set?(0) # => true
p OpenSSL::BN.new("129").bit_set?(1) # => false
```

- **param** `n` -- 調べるビットの位置
- **SEE** [OpenSSL::BN#set_bit!](../../../method/OpenSSL=3a=3aBN/i/set_bit=21.md)
