# Net::HTTPHeader#type_params

### def type_params -> Hash

Content-Type のパラメータを {"charset" => "iso-2022-jp"}
という形の [Hash](../../../class/Hash.md) で返します。

Content-Type: ヘッダフィールドが存在しない場合には空のハッシュを返します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
res = Net::HTTP.get_response(uri)
p res.type_params # => {"charset"=>"UTF-8"}
```
