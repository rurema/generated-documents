# BigDecimal#_dump

### def _dump -> String

[BigDecimal._load](../../../method/BigDecimal/s/_load.md) で復元可能な文字列を返します。
[Marshal?.dump](../../../method/Marshal/m/dump.md) から呼び出されます。

```ruby
require 'bigdecimal'
inf = BigDecimal('Infinity') # => Infinity
s = Marshal.dump(inf)        # => "\x04\bu:\x0FBigDecimal\x0F9:Infinity"
p Marshal.load(s)            # => Infinity
```

- **SEE** [BigDecimal._load](../../../method/BigDecimal/s/_load.md), [Marshal?.dump](../../../method/Marshal/m/dump.md), [Marshal?.load](../../../method/Marshal/m/load.md)
