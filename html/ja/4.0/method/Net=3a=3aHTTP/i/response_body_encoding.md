# Net::HTTP#response_body_encoding

### def response_body_encoding -> Encoding | false
### def response_body_encoding=(value)

レスポンスボディに使うエンコーディングを取得・設定します。

デフォルトは false で、この場合エンコーディングは強制されません。

value には [Encoding](../../../class/Encoding.md) オブジェクト、エンコーディング名の文字列、エンコーディング名のエイリアスの文字列のいずれかを指定できます。文字列を指定した場合は [Encoding.find](../../../method/Encoding/s/find.md) を使って [Encoding](../../../class/Encoding.md) オブジェクトに変換されます。詳しくは [Encoding](../../../class/Encoding.md) を見てください。

- **param** `value` -- 使用するエンコーディング ([Encoding](../../../class/Encoding.md) オブジェクトまたはその名前を表す文字列)

```ruby title="例"
require 'net/http'

http = Net::HTTP.new('www.example.com')
p http.response_body_encoding # => false
http.response_body_encoding = Encoding::US_ASCII
p http.response_body_encoding # => #<Encoding:US-ASCII>
http.response_body_encoding = 'US-ASCII'
p http.response_body_encoding # => #<Encoding:US-ASCII>
http.response_body_encoding = 'ASCII'
p http.response_body_encoding # => #<Encoding:US-ASCII>
```
