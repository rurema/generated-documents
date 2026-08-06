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

- [sign](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign.md)
- [verify](../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify.md)
