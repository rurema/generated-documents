# Syslog::Macros?.LOG_MASK

### module_function def LOG_MASK(priority) -> Integer

1つの優先度に対するマスクを作成します。

- **param** `priority` -- priority は優先度を示す定数を指定します。
                詳しくは、[Syslog::Level](../../../class/Syslog=3a=3aLevel.md)を参照してください。

```ruby title="例"
require 'syslog'
Syslog.mask = Syslog::LOG_MASK(Syslog::LOG_ERR)
```
