# Net::HTTPResponse#code

### def code -> String

HTTP のリザルトコードです。例えば '302' などです。

この値を見ることでレスポンスの種類を判別できますが、レスポンスオブジェクトがどのクラスのインスタンスかを見ることでもレスポンスの種類を判別できます。

```ruby title="例"
require 'net/http'

uri = "http://www.example.com/index.html"
response = Net::HTTP.get_response(URI.parse(uri))
p response.code # => "200"
```
