# Net::HTTPResponse#http_version

### def http_version -> String

サーバがサポートしている HTTP のバージョンを文字列で返します。

```ruby title="例"
require 'net/http'

uri = "http://www.example.com/index.html"
response = Net::HTTP.get_response(URI.parse(uri))
p response.http_version # => "1.1"
```
