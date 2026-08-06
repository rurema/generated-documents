# Logger#level

### def level -> Integer
### def sev_threshold -> Integer

レシーバにセットされているログレベルを取得します。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT)
p logger.level # => 0
logger.level = Logger::Severity::ERROR
p logger.level # => 3
```
