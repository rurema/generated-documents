# module Abbrev

与えられた文字列の短縮形を生成するモジュールです。

### 例

```ruby
require 'abbrev'
require 'pp'

pp Abbrev.abbrev(%w[ruby rules]).sort
    # => [["rub", "ruby"],
    #    ["ruby", "ruby"],
    #    ["rul", "rules"],
    #    ["rule", "rules"],
    #    ["rules", "rules"]]
```

## Module Functions

- [abbrev](../method/Abbrev/m/abbrev.md)
