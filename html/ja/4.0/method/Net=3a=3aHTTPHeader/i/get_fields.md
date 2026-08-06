# Net::HTTPHeader#get_fields

### def get_fields(key) -> [String]

key ヘッダフィールドの値 (文字列) を配列で返します。

たとえばキー 'content-length' に対しては ['2048'] のような文字列が得られます。一種類のヘッダフィールドが一つのヘッダの中に複数存在することがありえます。
key は大文字小文字を区別しません。

- **param** `key` -- ヘッダフィールド名を文字列で与えます。

```ruby title="例"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
res = Net::HTTP.get_response(uri)
p res.get_fields('accept-ranges') # => ["none"]
```

- **SEE** [Net::HTTPHeader#\[\]](../../../method/Net=3a=3aHTTPHeader/i/=5b=5d.md), [Net::HTTPHeader#\[\]=](../../../method/Net=3a=3aHTTPHeader/i/=5b=5d=3d.md),
     [Net::HTTPHeader#add_field](../../../method/Net=3a=3aHTTPHeader/i/add_field.md)
