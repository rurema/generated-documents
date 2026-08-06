# BigDecimal#eql?

### def ==(other)   -> bool
### def ===(other)  -> bool
### def eql?(other) -> bool

self が other と等しい場合に true を、そうでない場合に false を返します。

それぞれの値は [BigDecimal#coerce](../../../method/BigDecimal/i/coerce.md) で変換して比較される場合があります。

```ruby
require 'bigdecimal'
p BigDecimal('1.0') == 1.0 # => true
```
