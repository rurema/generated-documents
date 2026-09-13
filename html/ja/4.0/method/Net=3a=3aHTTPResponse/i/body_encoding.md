# Net::HTTPResponse#body_encoding

### def body_encoding -> Encoding | false
### def body_encoding=(value)

エンティティボディを読み込む際に使うエンコーディングを取得・設定します。

デフォルトは false で、この場合ボディの内容からエンコーディングが推測されます。

value には [Encoding](../../../class/Encoding.md) オブジェクト、またはエンコーディング名を表す文字列を指定できます。文字列を指定した場合は [Encoding.find](../../../method/Encoding/s/find.md) を使って [Encoding](../../../class/Encoding.md) オブジェクトに変換されます。

- **param** `value` -- 使用するエンコーディング ([Encoding](../../../class/Encoding.md) オブジェクトまたはその名前を表す文字列)

```ruby title="例"
require 'net/http'

http = Net::HTTP.new('www.example.com')
req = Net::HTTP::Get.new('/')
http.request(req) do |res|
  res.body_encoding = "UTF-8"
  p res.body.encoding # => #<Encoding:UTF-8>
end
```
