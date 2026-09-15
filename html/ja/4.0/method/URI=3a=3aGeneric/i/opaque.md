# URI::Generic#opaque

### def opaque     -> String | nil

自身の opaque を文字列で返します。設定されていない場合は nil を返します。

```ruby title="例"
require 'uri'
p URI('http://example.com/').opaque       # => nil
p URI('mailto:nospam@localhost').opaque   # => "nospam@localhost"
p URI('urn:ietf:rfc:1149').opaque         # => "ietf:rfc:1149"
```
