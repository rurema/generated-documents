# Net::HTTPExceptions#response

### def response -> Net::HTTPResponse

例外の原因となったレスポンスオブジェクトを返します。

```ruby title="例"
require 'net/http'

uri = "http://www.example.com/invalid.html"
response = Net::HTTP.get_response(URI.parse(uri))
begin
  response.value
rescue => e
  p e.response # => #<Net::HTTPNotFound 404 Not Found readbody=true>
end
```
