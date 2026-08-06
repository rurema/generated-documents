# OpenSSL::ASN1::ObjectId#short_name

### def sn -> String | nil
### def short_name -> String | nil

オブジェクト識別子に対応する short name を返します。

```ruby title="例"
require "openssl"
oid = OpenSSL::ASN1::ObjectId.new("subjectAltName")
p oid.sn   #=> "subjectAltName"
```

- **SEE** [OpenSSL::ASN1::ObjectId#ln](../../../method/OpenSSL=3a=3aASN1=3a=3aObjectId/i/ln.md)
