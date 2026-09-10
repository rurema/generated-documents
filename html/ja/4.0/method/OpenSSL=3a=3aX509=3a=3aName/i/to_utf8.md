# OpenSSL::X509::Name#to_utf8

### def to_utf8 -> String

識別名(Distinguished Name)を UTF-8 の文字列で返します。

[RFC:2253] で定められた形式で、[OpenSSL::X509::Name#to_s](../../../method/OpenSSL=3a=3aX509=3a=3aName/i/to_s.md) に [OpenSSL::X509::Name::RFC2253](../../../method/OpenSSL=3a=3aX509=3a=3aName/c/RFC2253.md) を渡した場合と同様の書式になりますが、返される文字列のエンコーディングは常に UTF-8 になります。

[OpenSSL::X509::Name#to_s](../../../method/OpenSSL=3a=3aX509=3a=3aName/i/to_s.md) の利用は推奨されていないため、代わりにこのメソッドを使ってください。

```ruby title="例"
require "openssl"

n = OpenSSL::X509::Name.parse('/C=JP/ST=Kanagawa/L=Yokohama/O=Example Company/OU=Lab3/CN=foobar/emailAddress=foobar@lab3.example.co.jp')
p n.to_utf8
# => "emailAddress=foobar@lab3.example.co.jp,CN=foobar,OU=Lab3,O=Example Company,L=Yokohama,ST=Kanagawa,C=JP"
```
