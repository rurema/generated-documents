# Net::HTTPResponse#value

### def value -> nil

レスポンスが 2xx(成功)でなかった場合に、対応する例外を発生させます。

- **raise** `HTTPError` -- レスポンスが 1xx であるか、 net/http が知らない種類のレスポンスである場合に発生します。
- **raise** `HTTPRetriableError` -- レスポンスが 3xx である場合に発生します。
- **raise** `HTTPServerException` -- レスポンスが 4xx である場合に発生します。
- **raise** `HTTPFatalError` -- レスポンスが 5xx である場合に発生します。

```ruby title="例 レスポンスが 2xx(成功)"
require 'net/http'

uri = "http://www.example.com/index.html"
response = Net::HTTP.get_response(URI.parse(uri))
p response.value # => nil
```

```ruby title="例 レスポンスが 2xx以外"
require 'net/http'

uri = "http://www.example.com/invalid.html"
response = Net::HTTP.get_response(URI.parse(uri))
begin
  response.value
rescue => e
  e.class # => Net::HTTPServerException
  p e.message # => 404 "Not Found"
end
```
