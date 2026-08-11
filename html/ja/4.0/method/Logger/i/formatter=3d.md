# Logger#formatter=

### def formatter=(formatter)

ログを出力する際に使用するフォーマッターをセットします。

- **param** `formatter` -- 4 つの引数 (severity, time, program name, message) を受け取る call メソッドを持つオブジェクトを指定します。call メソッドの返り値は文字列にしてください。

```ruby
require 'logger'
logger = Logger.new
logger.formatter = proc{|severity, datetime, progname, message|
  "#{datetime}: #{message}\n"
}
```
