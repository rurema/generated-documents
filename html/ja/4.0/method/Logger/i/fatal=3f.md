# Logger#fatal?

### def fatal? -> bool

現在の Logger オブジェクトが FATAL 以上のログレベルのメッセージを記録するなら真を返します。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT, level: Logger::Severity::FATAL)
p logger.fatal? # => true
logger.level = 5
p logger.fatal? # => false
```
