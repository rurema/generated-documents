# URI::Generic#authority

### def authority -> [String, String, String, Integer] | nil

`self` の authority 情報を [user, password, host, port] という 4 要素の配列で返します。

user・password・host・port のいずれか一つでも設定されていれば配列を返します。設定されていない要素は nil になります。user・password・host・port のいずれも設定されていない場合は nil を返します。

```ruby title="例"
require 'uri'
u = URI.parse('foo://myuser:mypass@www.example.com:8080/bar')
p u.authority # => ["myuser", "mypass", "www.example.com", 8080]

p URI::Generic.build(scheme: 'foo').authority # => nil
```

- **SEE** [URI::Generic#userinfo](../../../method/URI=3a=3aGeneric/i/userinfo.md), [URI::Generic#host](../../../method/URI=3a=3aGeneric/i/host.md), [URI::Generic#port](../../../method/URI=3a=3aGeneric/i/port.md)
