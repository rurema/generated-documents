# Syslog::Macros?.LOG_UPTO

### module_function def LOG_UPTO(priority) -> Integer

priorityまでのすべての優先度のマスクを作成します。

- **param** `priority` -- priority は優先度を示す定数を指定します。
                詳しくは、[Syslog::Level](../../../class/Syslog=3a=3aLevel.md)を参照してください。

```ruby title="例"
require 'syslog'
Syslog.mask = Syslog::LOG_UPTO(Syslog::LOG_ERR)
```
