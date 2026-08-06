# Logger#warn?

### def warn? -> bool

現在の Logger オブジェクトが WARN 以上のログレベルのメッセージを記録するなら真を返します。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT)
p logger.warn? # => true
logger.level = Logger::Severity::ERROR
p logger.warn? # => false
```
