# Net::HTTP.post

### def Net::HTTP.post(url, data, header = nil) -> Net::HTTPResponse

[URI](../../../class/URI.md) で指定した対象にデータを POST し、そのレスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) として返します。

このメソッドは以下とほぼ同じです。

```ruby title="例"
require 'net/http'
Net::HTTP.start(url.hostname, url.port, use_ssl: url.scheme == 'https') {|http|
  http.post(url, data, header)
}
```

- **param** `url` -- POST する対象を [URI](../../../class/URI.md) で指定します。
- **param** `data` -- POST するデータを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
Net::HTTP.post(uri, 'query=subject&target=ruby', 'content-type' => 'application/x-www-form-urlencoded')
```

- **SEE** [Net::HTTP#post](../../../method/Net=3a=3aHTTP/i/post.md), [Net::HTTP::Post](../../../class/Net=3a=3aHTTP=3a=3aPost.md)
