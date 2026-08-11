# Date#prev_year

### def prev_year(n = 1) -> Date

n 年前を返します。

self << (n * 12) に相当します。

```ruby title="例"
require 'date'
p Date.new(2001,2,3).prev_year    # => #<Date: 2000-02-03 ...>
p Date.new(2008,2,29).prev_year   # => #<Date: 2007-02-28 ...>
p Date.new(2008,2,29).prev_year(4)  # => #<Date: 2004-02-29 ...>
```

[Date#<<](../../../method/Date/i/=3c=3c.md) も参照してください。

- **param** `n` -- 年数
