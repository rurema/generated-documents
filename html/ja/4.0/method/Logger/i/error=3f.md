# Logger#error?

### def error? -> bool

現在の Logger オブジェクトが ERROR 以上のログレベルのメッセージを記録するなら真を返します。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT)
p logger.error? # => true
logger.level = Logger::Severity::FATAL
p logger.error? # => false
```
