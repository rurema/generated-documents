# Net::HTTPHeader#each_capitalized_name

### def each_capitalized_name {|name| .... } -> ()

保持しているヘッダ名を正規化
('x-my-header' -> 'X-My-Header') 
して、ブロックに渡します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
req.each_capitalized_name { |key| puts key }

# => Accept-Encoding
# => Accept
# => User-Agent
```
