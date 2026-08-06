# Net::HTTPResponse.body_permitted?

### def Net::HTTPResponse.body_permitted? -> bool

エンティティボディを含むことが許されているレスポンスクラスならば真を、そうでなければ偽を返します。

```ruby title="例"
require 'net/http'

p Net::HTTPSuccess.body_permitted?   # => true
p Net::HTTPNotModified.body_permitted? # => false
```
