# OpenSSL::ASN1::ObjectId#ln

### def ln -> String | nil
### def long_name -> String | nil

オブジェクト識別子に対応する long name を返します。

```ruby title="例"
require "openssl"
oid = OpenSSL::ASN1::ObjectId.new("subjectAltName")
p oid.ln   #=> "X509v3 Subject Alternative Name"
```

- **SEE** [OpenSSL::ASN1::ObjectId#sn](../../../method/OpenSSL=3a=3aASN1=3a=3aObjectId/i/sn.md)
