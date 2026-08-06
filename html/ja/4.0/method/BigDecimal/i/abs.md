# BigDecimal#abs

### def abs -> BigDecimal

self の絶対値を返します。

```ruby
require 'bigdecimal'
p BigDecimal('5').abs.to_i  # => 5
p BigDecimal('-3').abs.to_i # => 3
```
