# Net::HTTPGenericRequest#response_body_permitted?

### def response_body_permitted? -> bool

サーバからのレスポンスにエンティティボディを含むことが許されている
HTTP メソッド (GET, POST など)の場合真を返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
post = Net::HTTP::Post.new(uri.request_uri)
post.response_body_permitted?   # => true

head = Net::HTTP::Head.new(uri.request_uri)
p head.response_body_permitted? # => false
```
