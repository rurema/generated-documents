# OpenSSL::BN#mod_add

### def mod_add(other, m) -> OpenSSL::BN

(self + other) % m を返します。

```ruby
require 'openssl'

p OpenSSL::BN.new("7").mod_add(OpenSSL::BN.new("3"), OpenSSL::BN.new("6")) # => 4
```

- **param** `other` -- 和を取る数
- **param** `m` -- 剰余を取る数
- **raise** `OpenSSL::BNError` -- 計算時エラー
