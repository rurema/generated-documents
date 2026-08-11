# URI::Generic#to_s

### def to_s      -> String

自身が表す URI を文字列として返します。

```ruby title="例"
require 'uri'
p URI.parse('http://example.com/').to_s # => "http://example.com/"
```
