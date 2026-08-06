# Syslog?.close

### module_function def close -> nil

syslogを閉じます。

- **raise** `RuntimeError` -- syslog がopen されていない場合発生します。

```ruby title="使用例"
require 'syslog'

Syslog.open("syslogtest")
Syslog.log(Syslog::LOG_WARNING, "the sky is falling in %d seconds!", 100)
Syslog.close
```
