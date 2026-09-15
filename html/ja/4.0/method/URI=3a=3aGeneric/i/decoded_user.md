# URI::Generic#decoded_user

### def decoded_user -> String | nil

`self` の user を URI デコードした文字列で返します。設定されていない場合は nil を返します。

```ruby title="例"
require 'uri'
u = URI('http://my%20user:my%20pass@www.example.com/')
p u.user         # => "my%20user"
p u.decoded_user # => "my user"
```

- **SEE** [URI::Generic#user](../../../method/URI=3a=3aGeneric/i/user.md), [URI.decode_uri_component](../../../method/URI/s/decode_uri_component.md)
