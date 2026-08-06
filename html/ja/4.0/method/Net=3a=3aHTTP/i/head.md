# Net::HTTP#head

### def head(path, header = nil) -> Net::HTTPResponse

サーバ上の path にあるエンティティのヘッダのみを取得します。
[Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスを返します。

header が nil
でなければ、リクエストを送るときにその内容を HTTP ヘッダとして送ります。 header は { 'Accept' = > '*/*', ... } という形のハッシュでなければいけません。

- **param** `path` -- 取得するエンティティのパスを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。

1.1 互換モードの場合は、レスポンスに応じて例外が発生します。

```ruby title="例"
require 'net/http'

response = nil
Net::HTTP.start('some.www.server', 80) {|http|
  response = http.head('/index.html')
}
p response['content-type']
```

- **SEE** [Net::HTTP#request_head](../../../method/Net=3a=3aHTTP/i/request_head.md)
