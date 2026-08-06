# class OpenSSL::PKey::DSA < OpenSSL::PKey::PKey

DSA 公開鍵暗号クラス

実際には、DSA は署名のためのアルゴリズムであり、暗号化はできません。

以下は、data に署名し、署名をもとに data を検証する簡単な例です。

```ruby
require "openssl"
dsa512 = OpenSSL::PKey::DSA.new(512)
data = 'hoge'
sign = dsa512.sign('dss1', data)
p dsa512.verify('dss1', sign, data)
```

## Class Methods

- [generate](../method/OpenSSL=3a=3aPKey=3a=3aDSA/s/generate.md)
- [new](../method/OpenSSL=3a=3aPKey=3a=3aDSA/s/new.md)

## Instance Methods

- [export](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/export.md)
- [to_pem](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/to_pem.md)
- [to_s](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/to_s.md)
- [g](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/g.md)
- [g=](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/g=3d.md)
- [p](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/p.md)
- [p=](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/p=3d.md)
- [params](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/params.md)
- [priv_key](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/priv_key.md)
- [priv_key=](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/priv_key=3d.md)
- [private?](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/private=3f.md)
- [pub_key](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/pub_key.md)
- [pub_key=](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/pub_key=3d.md)
- [public?](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/public=3f.md)
- [public_key](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/public_key.md)
- [q](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/q.md)
- [q=](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/q=3d.md)
- [syssign](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/syssign.md)
- [sysverify](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/sysverify.md)
- [to_der](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/to_der.md)
- [to_text](../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/to_text.md)
