# OpenSSL::BN#pretty_print

### def pretty_print(pp)

[Kernel?.pp](../../../method/Kernel/m/pp.md) でオブジェクトの内容を出力するときに、内部で呼ばれるメソッドです。

```ruby
require 'openssl'

pp 5.to_bn     # => #<OpenSSL::BN 5>
pp (-5).to_bn  # => #<OpenSSL::BN -5>
```

- **param** `pp` -- [PP](../../../class/PP.md) クラスのインスタンスオブジェクト
