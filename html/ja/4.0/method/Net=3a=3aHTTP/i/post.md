# Net::HTTP#post

### def post(path, data, header = nil, dest = nil) -> Net::HTTPResponse
### def post(path, data, header = nil, dest = nil) {|body_segment| .... } -> Net::HTTPResponse

サーバ上の path にあるエンティティに対し文字列 data を
POST で送ります。

返り値は [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスです。

ブロックと一緒に呼びだされたときはエンティティボディを少しずつ文字列としてブロックに与えます。このとき戻り値の HTTPResponse オブジェクトは有効な body を持ちません。

POST する場合にはヘッダに Content-Type: を指定する必要があります。
Ruby 4.0 から、header に指定しなかった場合に Content-Type を
"application/x-www-form-urlencoded" として補う挙動は削除されました。
指定しなかった場合、Content-Type ヘッダは送信されません。

dest は時代遅れの引数です。利用しないでください。
dest を指定した場合にはボディを少しずつ取得して順次「dest << ボディの断片」を実行します。

- **param** `path` -- POST先のパスを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。
- **param** `dest` -- 利用しないでください。

1.1 互換モードの場合は、レスポンスに応じて例外が発生します。
また、返り値が [レスポンスオブジェクト, そのボディ] となります。

```ruby title="例"
# net/http version 1.1
response, body = http.post('/cgi-bin/search.rb', 'query=subject&target=ruby')

# version 1.2
response = http.post('/cgi-bin/search.rb', 'query=subject&target=ruby')

# using block
File.open('save.html', 'w') {|f|
  http.post('/cgi-bin/search.rb', 'query=subject&target=ruby') do |str|
    f.write str
  end
}
```

- **SEE** [Net::HTTP#request_post](../../../method/Net=3a=3aHTTP/i/request_post.md)
