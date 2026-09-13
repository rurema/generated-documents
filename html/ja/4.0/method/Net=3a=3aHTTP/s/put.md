# Net::HTTP.put

### def Net::HTTP.put(url, data, header = nil) -> Net::HTTPResponse

[URI](../../../class/URI.md) で指定した対象にデータを PUT し、そのレスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) として返します。

このメソッドは以下とほぼ同じです。

```ruby title="例"
require 'net/http'
Net::HTTP.start(url.hostname, url.port, use_ssl: url.scheme == 'https') {|http|
  http.put(url, data, header)
}
```

- **param** `url` -- PUT する対象を [URI](../../../class/URI.md) で指定します。
- **param** `data` -- PUT するデータを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
Net::HTTP.put(uri, 'query=subject&target=ruby', 'content-type' => 'application/x-www-form-urlencoded')
```

- **SEE** [Net::HTTP#put](../../../method/Net=3a=3aHTTP/i/put.md), [Net::HTTP::Put](../../../class/Net=3a=3aHTTP=3a=3aPut.md)
