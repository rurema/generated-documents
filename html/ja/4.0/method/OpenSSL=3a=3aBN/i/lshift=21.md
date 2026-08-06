# OpenSSL::BN#lshift!

### def lshift!(n) -> self

自身を n ビット左シフトします。
[OpenSSL::BN#<<](../../../method/OpenSSL=3a=3aBN/i/=3c=3c.md)と異なり、破壊的メソッドです。

```ruby
require 'openssl'

bn = 1.to_bn
p bn.lshift!(2) # => #<OpenSSL::BN 4>
p bn            # => #<OpenSSL::BN 4>
```

- **param** `n` -- シフトするビット数
- **raise** `OpenSSL::BNError` -- 計算時エラー
- **SEE** [OpenSSL::BN#<<](../../../method/OpenSSL=3a=3aBN/i/=3c=3c.md)
