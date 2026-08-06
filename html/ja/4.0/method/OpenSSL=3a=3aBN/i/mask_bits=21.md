# OpenSSL::BN#mask_bits!

### def mask_bits!(n) -> self

自身を下位 n ビットでマスクし、破壊的に変更します。

n が自身のビット数より大きい場合は例外 [OpenSSL::BNError](../../../class/OpenSSL=3a=3aBNError.md)
が発生します。

```ruby
require 'openssl'

bn = 0b1111_1111.to_bn

bn.mask_bits!(8)
p "%b" % bn      # => "11111111"

bn.mask_bits!(3)
p "%b" % bn      # =>     "111"
```

- **param** `n` -- マスクするビット数
- **raise** `OpenSSL::BNError` -- 計算時エラー
