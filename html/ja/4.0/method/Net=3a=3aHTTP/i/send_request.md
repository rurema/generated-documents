# Net::HTTP#send_request

### def send_request(name, path, data = nil, header = nil) -> Net::HTTPResponse

HTTP リクエストをサーバに送り、そのレスポンスを
[Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスとして返します。

- **param** `name` -- リクエストのメソッド名を文字列で与えます。
- **param** `path` -- リクエストのパスを文字列で与えます。
- **param** `data` -- リクエストのボディを文字列で与えます。
- **param** `header` -- リクエストのヘッダをハッシュで与えます。

```ruby title="例"
response = http.send_request('GET', '/index.html')
puts response.body
```

- **SEE** [Net::HTTP#request](../../../method/Net=3a=3aHTTP/i/request.md)
