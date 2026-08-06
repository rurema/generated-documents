# Net::HTTP#get2

### def request_get(path, header = nil) -> Net::HTTPResponse
### def request_get(path, header = nil) {|response| .... } -> Net::HTTPResponse
### def get2(path, header = nil) -> Net::HTTPResponse
### def get2(path, header = nil) {|response| .... } -> Net::HTTPResponse

サーバ上の path にあるエンティティを取得します。
[Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) オブジェクトを返します。

header が nil
でなければ、リクエストを送るときにその内容を HTTP ヘッダとして送ります。 header は { 'Accept' = > '*/*', ... } という形のハッシュでなければいけません。

ブロックとともに呼び出されたときは、エンティティボディをソケットから読み出す前に、接続を維持した状態で [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md)
オブジェクトをブロックに渡します。
大きなサイズのボディを一度に読みだすとまずく、小さなサイズに分けて取りだしたい場合にはこれを利用します。

- **param** `path` -- 取得するエンティティのパスを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。

```ruby title="例"
# example
response = http.request_get('/index.html')
p response['content-type']
puts response.body          # body is already read

# using block
http.request_get('/index.html') {|response|
  p response['content-type']
  response.read_body do |str|   # read body now
    print str
  end
}
```

get2 は時代遅れなので使わないでください。

- **SEE** [Net::HTTP#get](../../../method/Net=3a=3aHTTP/i/get.md), [Net::HTTPResponse#read_body](../../../method/Net=3a=3aHTTPResponse/i/read_body.md)
