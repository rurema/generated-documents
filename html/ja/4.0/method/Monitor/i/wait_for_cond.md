# Monitor#wait_for_cond

### def wait_for_cond(cond, timeout) -> bool
[MonitorMixin::ConditionVariable](../../../class/MonitorMixin=3a=3aConditionVariable.md) 用の内部メソッドです。

- **param** `cond` -- [Thread::ConditionVariable](../../../class/Thread=3a=3aConditionVariable.md) を指定します。
- **param** `timeout` -- タイムアウトまでの秒数。指定しなかった場合はタイムアウトしません。

- **return** -- タイムアウトしたときは false を返します。それ以外は true を返します。

```ruby title="例"
require 'monitor'
m = Monitor.new
cv = Thread::ConditionVariable.new
m.enter
m.wait_for_cond(cv, 1)
```
