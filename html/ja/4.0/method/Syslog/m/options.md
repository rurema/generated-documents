# Syslog?.options

### module_function def ident -> String | nil
### module_function def options -> Integer | nil
### module_function def facility -> Integer | nil

最後のopenで与えられた対応する引数を返します。

```ruby title="使用例"
require 'syslog'

Syslog.open("syslogtest")
p Syslog.ident    # => "syslogtest"
p Syslog.options  # => 3
p Syslog.facility # => 8
```
