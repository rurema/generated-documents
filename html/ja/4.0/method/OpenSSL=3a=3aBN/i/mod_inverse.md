# OpenSSL::BN#mod_inverse

### def mod_inverse(m) -> OpenSSL::BN

自身の mod m における逆元を返します。

(self * r) % m == 1 となる r を返します。
存在しない場合は例外 [OpenSSL::BNError](../../../class/OpenSSL=3a=3aBNError.md) が発生します。

```ruby
require 'openssl'

p 3.to_bn.mod_inverse(5) # => 2
p (3 * 2) % 5            # => 1
```

- **param** `m` -- mod を取る数
- **raise** `OpenSSL::BNError` -- 計算時エラー
