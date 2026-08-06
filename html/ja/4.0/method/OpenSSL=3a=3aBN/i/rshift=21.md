# OpenSSL::BN#rshift!

### def rshift!(n) -> self

自身を n ビット右シフトします。
[[OpenSSL::BN#>>](../../../method/OpenSSL=3a=3aBN/i/=3e=3e.md)と異なり、破壊的メソッドです。

```ruby
require 'openssl'

bn = 8.to_bn
p bn.rshift!(1)  # => #<OpenSSL::BN 4>
p bn             # => #<OpenSSL::BN 4>
```

- **param** `n` -- シフトするビット数
- **raise** `OpenSSL::BNError` -- 計算時エラー
- **SEE** [OpenSSL::BN#>>](../../../method/OpenSSL=3a=3aBN/i/=3e=3e.md)
