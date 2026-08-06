# URI::Generic#relative?

### def relative?    -> bool

自身に scheme が設定されていないなら true を返します。そうでない場合は false を返します。

```ruby title="例"
require 'uri'
p URI.parse('http://example.com/').relative?    #=> false
p URI.parse('./').relative?                     #=> true
```
