# Net::HTTPHeader#content_type

### def content_type -> String|nil

"text/html" のような Content-Type を表す文字列を返します。

Content-Type: ヘッダフィールドが存在しない場合には nil を返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/comments.cgi?post=comment')
req = Net::HTTP::Post.new(uri.request_uri)
p req.content_type  # => nil
req.content_type = 'multipart/form-data'
p req.content_type  # => "multipart/form-data"
```
