# Net::HTTP#get

### def get(path, header = nil, dest = nil) -> Net::HTTPResponse
### def get(path, header = nil, dest = nil) {|body_segment| .... } -> Net::HTTPResponse

サーバ上の path にあるエンティティを取得し、
[Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスとして返します。

header が nil
でなければ、リクエストを送るときにその内容を HTTP ヘッダとして送ります。 header は { 'Accept' = > '*/*', ... } という形のハッシュでなければいけません。

ブロックと一緒に呼びだされたときはエンティティボディを少しずつ文字列としてブロックに与えます。このとき戻り値の 
[Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) オブジェクトは有効な body を持ちません。

dest は時代遅れの引数です。利用しないでください。
dest を指定した場合にはボディを少しずつ取得して順次「dest << ボディの断片」を実行します。

- **param** `path` -- 取得するエンティティのパスを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。
- **param** `dest` -- 利用しないでください。

1.1 互換モードの場合は、レスポンスに応じて例外が発生します。
また、返り値が [レスポンスオブジェクト, そのボディ] となります。

```ruby title="例"
# net/http version 1.1
response, body = http.get( '/index.html' )

# net/http version 1.2
response = http.get('/index.html')

# compatible in both version
response , = http.get('/index.html')
response.body

# compatible, using block
File.open('save.txt', 'w') {|f|
  http.get('/~foo/', nil) do |str|
    f.write str
  end
}
```

- **SEE** [Net::HTTP#request_get](../../../method/Net=3a=3aHTTP/i/request_get.md)
