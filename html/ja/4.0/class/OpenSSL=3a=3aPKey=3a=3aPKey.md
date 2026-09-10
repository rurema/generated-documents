# class OpenSSL::PKey::PKey < Object

公開鍵暗号のための抽象クラスです。

以下のサブクラスを持ちます。
  - [OpenSSL::PKey::RSA](../class/OpenSSL=3a=3aPKey=3a=3aRSA.md)
  - [OpenSSL::PKey::DSA](../class/OpenSSL=3a=3aPKey=3a=3aDSA.md)
  - [OpenSSL::PKey::DH](../class/OpenSSL=3a=3aPKey=3a=3aDH.md)
  - [OpenSSL::PKey::EC](../class/OpenSSL=3a=3aPKey=3a=3aEC.md)

```ruby title="例"
require "openssl"
# 署名用の鍵を新規作成
dsa512 = OpenSSL::PKey::DSA.new(512)
data = 'hoge'
# 署名
sign = dsa512.sign("dss1", data)
# 署名の検証
p dsa512.verify(dss1, sign, data)
```

## Instance Methods

- [compare?](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/compare=3f.md)
- [decrypt](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/decrypt.md)
- [derive](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/derive.md)
- [encrypt](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/encrypt.md)
- [oid](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/oid.md)
- [private_to_der](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_der.md)
- [private_to_pem](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_pem.md)
- [public_to_der](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/public_to_der.md)
- [public_to_pem](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/public_to_pem.md)
- [raw_private_key](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/raw_private_key.md)
- [raw_public_key](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/raw_public_key.md)
- [sign](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign.md)
- [sign_raw](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md)
- [verify](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify.md)
- [verify_raw](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify_raw.md)
- [verify_recover](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify_recover.md)
