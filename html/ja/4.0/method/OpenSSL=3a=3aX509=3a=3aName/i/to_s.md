# OpenSSL::X509::Name#to_s

### def to_s(flags=nil) -> String

DNの文字列表現を返します。

flags には通常は以下のいずれかを渡します。
  - nil
  - [OpenSSL::X509::Name::COMPAT](../../../method/OpenSSL=3a=3aX509=3a=3aName/c/COMPAT.md)
  - [OpenSSL::X509::Name::RFC2253](../../../method/OpenSSL=3a=3aX509=3a=3aName/c/RFC2253.md)
  - [OpenSSL::X509::Name::ONELINE](../../../method/OpenSSL=3a=3aX509=3a=3aName/c/ONELINE.md)
  - [OpenSSL::X509::Name::MULTILINE](../../../method/OpenSSL=3a=3aX509=3a=3aName/c/MULTILINE.md)

* 
例:

```ruby
require 'openssl'
n = OpenSSL::X509::Name.parse('/C=JP/ST=Kanagawa/L=Yokohama/O=Example Company/OU=Lab3/CN=foobar/emailAddress=foobar@lab3.example.co.jp')
p n.to_s
# => "/C=JP/ST=Kanagawa/L=Yokohama/O=Example Company/OU=Lab3/CN=foobar/emailAddress=foobar@lab3.example.co.jp"
p n.to_s(OpenSSL::X509::Name::COMPAT)
# => "C=JP, ST=Kanagawa, L=Yokohama, O=Example Company, OU=Lab3, CN=foobar/emailAddress=foobar@lab3.example.co.jp"
p n.to_s(OpenSSL::X509::Name::RFC2253)
# => "emailAddress=foobar@lab3.example.co.jp,CN=foobar,OU=Lab3,O=Example Company,L=Yokohama,ST=Kanagawa,C=JP"
p n.to_s(OpenSSL::X509::Name::ONELINE)
# => "C = JP, ST = Kanagawa, L = Yokohama, O = Example Company, OU = Lab3, CN = foobar, emailAddress = foobar@lab3.example.co.jp"
p n.to_s(OpenSSL::X509::Name::MULTILINE)
# => "countryName               = JP\nstateOrProvinceName       = Kanagawa\nlocalityName              = Yokohama\norganizationName          = Example Company\norganizationalUnitName    = Lab3\ncommonName                = foobar\nemailAddress              = foobar@lab3.example.co.jp"
```
