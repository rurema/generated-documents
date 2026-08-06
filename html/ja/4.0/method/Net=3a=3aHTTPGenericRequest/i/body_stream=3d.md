# Net::HTTPGenericRequest#body_stream=

### def body_stream -> object
### def body_stream=(f)

サーバに送るリクエストのエンティティボディを
[IO](../../../class/IO.md) オブジェクトなどのストリームで設定します。
f は read(size) メソッドが定義されている必要があります。

- **param** `f` -- エンティティボディのデータを得るストリームオブジェクトを与えます。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
post = Net::HTTP::Post.new(uri.request_uri)
File.open("/path/to/test", 'rb') do |f|
  # 大きなファイルを扱う際にメモリ消費を少なくできる
  post.body_stream = f
  post["Content-Length"] = f.size.to_s
  post.body_stream # => #<File:/path/to/test>
end
```
