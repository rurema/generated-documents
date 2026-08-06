# Net::HTTPResponse#body

### def body -> String | () | nil
### def entity -> String | () | nil

エンティティボディを返します。

レスポンスにボディがない場合には nil を返します。

[Net::HTTPResponse#read_body](../../../method/Net=3a=3aHTTPResponse/i/read_body.md) をブロック付きで呼んだ場合にはこのメソッドはNet::ReadAdapter のインスタンスを返しますが、これは使わないでください。

entity は obsolete です。

```ruby title="例"
require 'net/http'

uri = "http://www.example.com/index.html"
response = Net::HTTP.get_response(URI.parse(uri))
p response.body[0..10] # => "<!doctype h"
```
