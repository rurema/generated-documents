# Net::HTTPResponse#uri

### def uri -> URI | nil

このレスポンスの取得に使われた [URI](../../../class/URI.md) オブジェクトを返します。

リクエストの生成に URI オブジェクトを使わなかった場合は nil を返します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
response = Net::HTTP.get_response(uri)
p response.uri # => #<URI::HTTP http://www.example.com/index.html>
```

- **SEE** [Net::HTTPGenericRequest#uri](../../../method/Net=3a=3aHTTPGenericRequest/i/uri.md)
