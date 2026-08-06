# Net::HTTPGenericRequest#body

### def body -> String

サーバに送るリクエストのエンティティボディを返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Post.new(uri.request_uri)
req.body = "Test Post Data"
p req.body # => "Test Post Data"
```

- **SEE** [Net::HTTPGenericRequest#body=](../../../method/Net=3a=3aHTTPGenericRequest/i/body=3d.md)
