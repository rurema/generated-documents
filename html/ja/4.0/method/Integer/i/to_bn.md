# Integer#to_bn

### def to_bn -> OpenSSL::BN

Integer を同じ数を表す [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) のオブジェクトに変換します。

```ruby
require 'openssl'

pp 5.to_bn     #=> #<OpenSSL::BN 5>
pp (-5).to_bn  #=> #<OpenSSL::BN -5>
```

なお、実装は、以下のようになっています。

```ruby
class Integer
  def to_bn
    OpenSSL::BN.new(self)
  end
end
```

- **SEE** [OpenSSL::BN.new](../../../method/OpenSSL=3a=3aBN/s/new.md), [OpenSSL::BN#to_i](../../../method/OpenSSL=3a=3aBN/i/to_i.md)
