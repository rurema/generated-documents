# Logger::Formatter#datetime_format=

### def datetime_format=(format)

ログの日時フォーマットをセットします。

- **param** `format` -- 日時のフォーマット文字列。[Time#strftime](../../../method/Time/i/strftime.md) で使用するフォーマット文字列と同じものを使用できます。

```ruby title="例"
require 'logger'

formatter = Logger::Formatter.new
p formatter.datetime_format # => nil
formatter.datetime_format = '%Y-%m-%d %H:%M:%S' # => "%Y-%m-%d %H:%M:%S"
p formatter.datetime_format # => "%Y-%m-%d %H:%M:%S"
```

- **SEE** [Time#strftime](../../../method/Time/i/strftime.md)
