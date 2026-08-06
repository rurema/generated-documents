# OpenSSL::BN#coerce

### def coerce(other) -> Array

自身と other が同じクラスになるよう、自身か other を変換し
[other, self] という配列にして返します。

基本的に other が整数のときに、自身を Integer のオブジェクトに変換して [other, 変換後オブジェクト] にして返します。
それ以外の場合は例外 TypeError を発生させます。

```ruby
require 'openssl'
p 1.to_bn.coerce(2)  # => [2, 1]
```

- **param** `other` -- 変換の基準となるオブジェクト
- **raise** `TypeError` -- 変換に失敗した場合に発生します

coerce メソッドの詳細な説明は、[Numeric#coerce](../../../method/Numeric/i/coerce.md) にあります。
- **SEE** [Numeric#coerce](../../../method/Numeric/i/coerce.md)
