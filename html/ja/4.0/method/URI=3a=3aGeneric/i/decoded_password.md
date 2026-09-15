# URI::Generic#decoded_password

### def decoded_password -> String | nil

`self` の password を URI デコードした文字列で返します。設定されていない場合は nil を返します。

```ruby title="例"
require 'uri'
u = URI('http://my%20user:my%20pass@www.example.com/')
p u.password         # => "my%20pass"
p u.decoded_password # => "my pass"
```

- **SEE** [URI::Generic#password](../../../method/URI=3a=3aGeneric/i/password.md), [URI.decode_uri_component](../../../method/URI/s/decode_uri_component.md)
