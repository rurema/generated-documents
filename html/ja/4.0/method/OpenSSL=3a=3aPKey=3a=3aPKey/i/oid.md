# OpenSSL::PKey::PKey#oid

### def oid -> String

`self` に関連付けられた OID のショートネームを返します。

```ruby
require "openssl"
rsa_key = OpenSSL::PKey::RSA.generate(2048)
p rsa_key.oid # => "rsaEncryption"
```
