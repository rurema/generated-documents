# Net::POP3.APOP

### def Net::POP3.APOP(is_apop) -> Class

bool が真なら [Net::APOP](../../../class/Net=3a=3aAPOP.md) クラス、偽なら [Net::POP3](../../../class/Net=3a=3aPOP3.md) クラスを返します。

```ruby title="使用例"
require 'net/pop'

pop = Net::POP3::APOP($isapop).new(addr, port)
pop.start(account, password) {
  # ....
}
```

- **param** `is_apop` -- 真の場合に Net::APOP を返します。
