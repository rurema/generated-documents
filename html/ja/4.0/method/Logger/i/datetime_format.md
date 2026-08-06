# Logger#datetime_format

### def datetime_format -> String | nil

ログに記録する時の日付のフォーマットです。

デフォルトでは nil ですが、この値が nil の場合は日付のフォーマットとして
"%Y-%m-%dT%H:%M:%S.%06d " を使用します。

なお、"%06d" には [Time#strftime](../../../method/Time/i/strftime.md) ではなく、単に [Time#usec](../../../method/Time/i/usec.md) の値を [String#%](../../../method/String/i/=25.md) でフォーマットしたものが入ります。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT)

p logger.datetime_format # => nil
logger.debug("test")
logger.datetime_format = '%Y/%m/%dT%H:%M:%S.%06d'
p logger.datetime_format # => "%Y/%m/%dT%H:%M:%S.%06d"
logger.debug("test")

# => D, [2019-03-12T22:52:13.674385 #17393] DEBUG -- : test
#    D, [2019/03/12T22:52:13.000012#17393] DEBUG -- : test
```

- **SEE** [Time#strftime](../../../method/Time/i/strftime.md), [Logger#datetime_format=](../../../method/Logger/i/datetime_format=3d.md)
