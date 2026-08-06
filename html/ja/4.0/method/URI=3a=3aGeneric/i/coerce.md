# URI::Generic#coerce

### def coerce(oth) -> [URI, URI]

引数 oth をパースして [パース後の oth, self] の配列を返します。

- **param** `oth` -- [URI](../../../class/URI.md) オブジェクトか文字列を指定します。

```ruby title="例"
require 'uri'

uri = URI.parse("http://my.example.com")
p uri.coerce("http://foo.com")
# => [#<URI::HTTP:0x00000000bcb028 URL:http://foo.com/>, #<URI::HTTP:0x00000000d92178 URL:http://my.example.com>]
```
