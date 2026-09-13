# Net::HTTPGenericRequest#uri

### def uri -> URI | nil

リクエストの生成に使われた [URI](../../../class/URI.md) オブジェクトを返します。

リクエストをパスの文字列で生成した場合 (URI オブジェクトを使わなかった場合) は nil を返します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
p Net::HTTP::Get.new(uri).uri            # => #<URI::HTTP http://www.example.com/index.html>
p Net::HTTP::Get.new('/index.html').uri  # => nil
```

- **SEE** [Net::HTTPResponse#uri](../../../method/Net=3a=3aHTTPResponse/i/uri.md)
