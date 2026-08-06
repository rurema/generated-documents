# OpenSSL::X509::Name.parse_openssl

### def OpenSSL::X509::Name.parse(str, template=OBJECT_TYPE_TEMPLATE) -> OpenSSL::X509::Name
### def OpenSSL::X509::Name.parse_openssl(str, template=OBJECT_TYPE_TEMPLATE) -> OpenSSL::X509::Name

文字列をパースして [OpenSSL::X509::Name](../../../class/OpenSSL=3a=3aX509=3a=3aName.md) オブジェクトを返します。

```ruby title="例"
require 'openssl'
OpenSSL::X509::Name.parse('/C=JP/ST=Kanagawa/L=Yokohama/O=Example Company/OU=Lab3/CN=foobar/emailAddress=foobar@lab3.example.co.jp')
```

- **param** `str` -- パースする文字列
- **param** `template` -- 属性型に対応するデータ型を表わすハッシュ
