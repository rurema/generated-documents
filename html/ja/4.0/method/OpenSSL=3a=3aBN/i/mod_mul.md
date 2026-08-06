# OpenSSL::BN#mod_mul

### def mod_mul(other, m) -> OpenSSL::BN

(self * other) % m を返します。

```ruby
require 'openssl'

p OpenSSL::BN.new("7").mod_mul(OpenSSL::BN.new("3"), OpenSSL::BN.new("6")) # => 3
```

- **param** `other` -- 積を取る数
- **param** `m` -- 剰余を取る数
- **raise** `OpenSSL::BNError` -- 計算時エラー
