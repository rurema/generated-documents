# Net::HTTPResponse#body=

### def body=(value)
{: since="1.9.1"}

エンティティボディを value に設定します。

- **param** `value` -- 設定するボディを文字列で指定します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
response = Net::HTTP.get_response(uri)
response.body = 'dummy'
p response.body # => "dummy"
```

- **SEE** [Net::HTTPResponse#body](../../../method/Net=3a=3aHTTPResponse/i/body.md), [Net::HTTPResponse#read_body](../../../method/Net=3a=3aHTTPResponse/i/read_body.md)
