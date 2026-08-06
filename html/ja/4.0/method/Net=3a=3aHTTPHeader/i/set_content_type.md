# Net::HTTPHeader#set_content_type

### def content_type=(type)
### def set_content_type(type, params = {})

type と params から Content-Type: ヘッダフィールドの値を設定します。

- **param** `type` -- メディアタイプを文字列で指定します。
- **param** `params` -- パラメータ属性をハッシュで指定します。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.content_type                        # => nil
req.content_type = 'multipart/form-data'  # => "multipart/form-data"
p req.content_type                        # => "multipart/form-data"
```
