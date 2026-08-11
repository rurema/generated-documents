# URI::Generic#absolute?

### def absolute     -> bool
### def absolute?    -> bool

自身に scheme が設定されているなら true を返します。そうでない場合は false を返します。

```ruby title="例"
require 'uri'
p URI.parse('http://example.com/').absolute?    # => true
p URI.parse('./').absolute?                     # => false
```
