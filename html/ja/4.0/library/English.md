# library English

特殊変数 $! などに英語名の別名 ($ERROR_INFO など)をつけます。

```ruby title="例"
p $/  # => "\n"
p $RS # => nil

require 'English'
p $RS # => "\n"
```
