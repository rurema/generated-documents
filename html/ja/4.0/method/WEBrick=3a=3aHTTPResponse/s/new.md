# WEBrick::HTTPResponse.new

### def WEBrick::HTTPResponse.new(config) -> WEBrick::HTTPResponse

HTTPResponse オブジェクトを生成して返します。

- **param** `config` -- 設定を保存したハッシュを指定します。:HTTPVersion は必須です。

```ruby
require 'webrick'
res = WEBrick::HTTPResponse.new( { :HTTPVersion => "1.1" } )
```
