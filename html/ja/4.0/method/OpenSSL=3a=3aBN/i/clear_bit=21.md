# OpenSSL::BN#clear_bit!

### def clear_bit!(n) -> self

自身の n ビット目を0にします。

```ruby
require 'openssl'

a = OpenSSL::BN.new("129")
a.clear_bit!(0)
p a # => 128
```

- **param** `n` -- 0にするビットの位置
- **raise** `OpenSSL::BNError` -- 計算時エラー
- **SEE** [OpenSSL::BN#set_bit!](../../../method/OpenSSL=3a=3aBN/i/set_bit=21.md)
