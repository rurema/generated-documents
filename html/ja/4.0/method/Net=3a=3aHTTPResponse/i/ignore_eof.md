# Net::HTTPResponse#ignore_eof

### def ignore_eof -> bool
### def ignore_eof=(bool)

`Content-Length:` ヘッダフィールドが指定されたボディを読み込む際に、EOF (End Of File) を無視するかどうかを取得・設定します。

- **param** `bool` -- EOF を無視するかどうかを真偽値で指定します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
response = Net::HTTP.get_response(uri)
response.ignore_eof = false
p response.ignore_eof # => false
```

- **SEE** [Net::HTTP#ignore_eof](../../../method/Net=3a=3aHTTP/i/ignore_eof.md)
