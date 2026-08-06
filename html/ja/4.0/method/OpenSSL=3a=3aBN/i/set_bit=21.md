# OpenSSL::BN#set_bit!

### def set_bit!(n) -> self

自身の n ビット目を1にします。

```ruby
require 'openssl'

a = OpenSSL::BN.new("128")
a.set_bit!(0)
p a # => 129
```

- **param** `n` -- 1にするビットの位置
- **raise** `OpenSSL::BNError` -- 計算時エラー
- **SEE** [OpenSSL::BN#clear_bit!](../../../method/OpenSSL=3a=3aBN/i/clear_bit=21.md), [OpenSSL::BN#bit_set?](../../../method/OpenSSL=3a=3aBN/i/bit_set=3f.md)
