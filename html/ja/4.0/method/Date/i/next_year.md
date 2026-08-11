# Date#next_year

### def next_year(n = 1) -> Date

n 年後を返します。

self >> (n * 12) に相当します。

```ruby title="例"
require 'date'
p Date.new(2001,2,3).next_year    # => #<Date: 2002-02-03 ...>
p Date.new(2008,2,29).next_year   # => #<Date: 2009-02-28 ...>
p Date.new(2008,2,29).next_year(4)  # => #<Date: 2012-02-29 ...>
```

[Date#>>](../../../method/Date/i/=3e=3e.md) も参照してください。

- **param** `n` -- 年数
