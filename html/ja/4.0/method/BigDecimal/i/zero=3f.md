# BigDecimal#zero?

### def zero? -> bool

self が 0 のときに true を返します。それ以外のときに false を返します。

```ruby
require "bigdecimal"
p BigDecimal("0").zero? # => true
p BigDecimal("1").zero? # => false
```
