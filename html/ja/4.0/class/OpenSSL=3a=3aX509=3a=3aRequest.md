# class OpenSSL::X509::Request < Object

X.509 の証明書署名要求(Certificate Signing Request, CSR)を表わすクラスです。

X.509 CSR については [RFC:2986] などを参照してください。

### 例

```ruby title="CSRを生成する例"
require 'openssl'
# ファイルから秘密鍵を読み込む
rsa = OpenSSL::PKey::RSA.new(File.read("privkey.pem"))
# 新しい CSR オブジェクトを生成
csr = OpenSSL::X509::Request.new
# DN を生成
name = OpenSSL::X509::Name.new
name.add_entry('C', 'JP')
name.add_entry('ST', 'Osaka')
name.add_entry('CN', 'Example Name')
csr.subject = name
# バージョンを 0 (v1.7) に
csr.version = 0
# 公開鍵を CSR に設定
csr.public_key = rsa.public_key
# attribute を設定
factory = OpenSSL::X509::ExtensionFactory.new
exts = [ factory.create_ext("subjectAltName", "DNS:foo.example.com") ]
asn1exts = OpenSSL::ASN1::Set([OpenSSL::ASN1::Sequence(exts)])
csr.add_attribute(OpenSSL::X509::Attribute.new("extReq", asn1exts))
# 署名
csr.sign(rsa, "sha1")
# PEM 形式で標準出力に出力
puts csr.to_pem
```

## Class Methods

- [new](../method/OpenSSL=3a=3aX509=3a=3aRequest/s/new.md)

## Instance Methods

- [add_attribute](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/add_attribute.md)
- [attributes](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/attributes.md)
- [attributes=](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/attributes=3d.md)
- [public_key](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/public_key.md)
- [public_key=](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/public_key=3d.md)
- [sign](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/sign.md)
- [signature_algorithm](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/signature_algorithm.md)
- [subject](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/subject.md)
- [subject=](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/subject=3d.md)
- [to_der](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/to_der.md)
- [to_pem](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/to_pem.md)
- [to_s](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/to_s.md)
- [to_text](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/to_text.md)
- [verify](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/verify.md)
- [version](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/version.md)
- [version=](../method/OpenSSL=3a=3aX509=3a=3aRequest/i/version=3d.md)
