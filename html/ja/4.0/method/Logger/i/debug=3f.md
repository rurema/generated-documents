# Logger#debug?

### def debug? -> bool

現在の Logger オブジェクトが DEBUG 以上のログレベルのメッセージを記録するなら真を返します。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT, level: Logger::Severity::DEBUG)
p logger.debug? # => true
logger = Logger.new(STDOUT, level: Logger::Severity::INFO)
p logger.debug? # => false
```
