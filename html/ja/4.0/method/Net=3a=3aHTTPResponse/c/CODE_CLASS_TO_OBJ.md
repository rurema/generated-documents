# Net::HTTPResponse::CODE_CLASS_TO_OBJ

### const CODE_CLASS_TO_OBJ -> Hash

HTTP レスポンスステータスコードの最初の数字からレスポンスのクラス(分類)をあらわすクラスへのハッシュです。

```ruby
require 'net/http'
p Net::HTTPResponse::CODE_CLASS_TO_OBJ['3'] # => Net::HTTPRedirection
```
