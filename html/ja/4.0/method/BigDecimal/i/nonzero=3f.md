# BigDecimal#nonzero?

### def nonzero? -> self | nil

self が 0 以外のときに self を返します。0 のときに nil を返します。

```ruby
require "bigdecimal"
p BigDecimal("0").nonzero? # => nil
p BigDecimal("1").nonzero? # => 0.1e1
```
