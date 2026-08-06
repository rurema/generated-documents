# Net::HTTP#request_post

### def request_post(path, data, header = nil) -> Net::HTTPResponse
### def request_post(path, data, header = nil) {|response| .... } -> Net::HTTPResponse
### def post2(path, data, header = nil) -> Net::HTTPResponse
### def post2(path, data, header = nil) {|response| .... } -> Net::HTTPResponse

サーバ上の path にあるエンティティに対し文字列 data を
POST で送ります。
返り値は [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスです。

header が nil
でなければ、リクエストを送るときにその内容を HTTP ヘッダとして送ります。 header は { 'Accept' = > '*/*', ... } という形のハッシュでなければいけません。

ブロックとともに呼び出されたときは、エンティティボディをソケットから読み出す前に、接続を維持した状態で [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md)
オブジェクトをブロックに渡します。

POST する場合にはヘッダに Content-Type: を指定する必要があります。
Ruby 4.0 から、header に指定しなかった場合に Content-Type を
"application/x-www-form-urlencoded" として補う挙動は削除されました。
指定しなかった場合、Content-Type ヘッダは送信されません。

- **param** `path` -- POST先のエンティティのパスを文字列で指定します。
- **param** `data` -- POSTするデータを与えます。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。

post2 は時代遅れなので使わないでください。

```ruby title="例"
response = http.request_post('/cgi-bin/nice.rb', 'datadatadata...')
p response.status
puts response.body          # body is already read

# using block
http.request_post('/cgi-bin/nice.rb', 'datadatadata...') {|response|
  p response.status
  p response['content-type']
  response.read_body do |str|   # read body now
    print str
  end
}
```

- **SEE** [Net::HTTP#post](../../../method/Net=3a=3aHTTP/i/post.md), [Net::HTTPResponse#read_body](../../../method/Net=3a=3aHTTPResponse/i/read_body.md)
