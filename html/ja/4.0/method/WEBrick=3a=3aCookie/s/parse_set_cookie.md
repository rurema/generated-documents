# WEBrick::Cookie.parse_set_cookie

### def WEBrick::Cookie.parse_set_cookie(str)    -> WEBrick::Cookie

サーバから送られてくる Set-Cookie ヘッダの値 str をパースし、新しく [WEBrick::Cookie](../../../class/WEBrick=3a=3aCookie.md) オブジェクトを生成し返します。

- **param** `str` -- Set-Cookie ヘッダの値を文字列で指定します。

```ruby
require 'webrick'
include WEBrick
c = Cookie.parse_set_cookie('Shipping="FedEx"; Version="1"; Path="/acme"')
p c.name, c.value
  
# =>
"Shipping"
"FedEx"
```
