# WEBrick::HTTPResponse#cookies

### def cookies    -> [WEBrick::Cookie]

レスポンスの Set-Cookie ヘッダの値を表す [WEBrick::Cookie](../../../class/WEBrick=3a=3aCookie.md) オブジェクトの配列です。
レスポンスに新たに Cookie を加えたい場合はこの配列に [WEBrick::Cookie](../../../class/WEBrick=3a=3aCookie.md) オブジェクトを加えます。

```ruby
require 'webrick'
res.cookies << WEBrick::Cookie.parse_set_cookie(k)
```
