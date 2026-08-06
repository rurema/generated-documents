# class OpenSSL::PKey::RSA < OpenSSL::PKey::PKey

RSA 暗号鍵のクラスです。

通常このクラスで利用するのは、
[OpenSSL::PKey::RSA.generate](../method/OpenSSL=3a=3aPKey=3a=3aRSA/s/generate.md), [OpenSSL::PKey::RSA.new](../method/OpenSSL=3a=3aPKey=3a=3aRSA/s/new.md),
[OpenSSL::PKey::RSA#public?](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public=3f.md), [OpenSSL::PKey::RSA#private?](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private=3f.md),
[OpenSSL::PKey::RSA#public_key](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_key.md), [OpenSSL::PKey::RSA#to_text](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_text.md),
[OpenSSL::PKey::RSA#to_pem](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_pem.md), [OpenSSL::PKey::RSA#to_der](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_der.md)
のいずれかでしょう。これ以外のメソッドを利用するときは
RSA についてよく理解し、必要な場合のみにすべきです。

```ruby title="例"
require 'openssl'

# initialize random seed
OpenSSL::Random.seed(File.read("/dev/random", 16))
# 鍵対を生成
rsa = OpenSSL::PKey::RSA.generate(2048)
# 秘密鍵をAES256で暗号化して private_key.pem に PEM 形式で保存
passphrase = "!secret passphrase!"
File.open("private_key.pem", "w") do |f|
  f.write(rsa.export(OpenSSL::Cipher.new("aes256"), passphrase))
end
# 公開鍵をpublic_key.pemに保存
public_key = rsa.public_key
File.open("public_key.pem", "w") do |f|
  f.write(public_key.export)
end
  
# 秘密鍵で署名
data = "foobar"
sign = rsa.sign("sha256", data)
# 公開鍵で検証
p public_key.verify("sha256", sign, data)
# 不正なデータを検証
p public_key.verify("sha256", sign, "foobarbaz")
```

## Class Methods

- [generate](../method/OpenSSL=3a=3aPKey=3a=3aRSA/s/generate.md)
- [new](../method/OpenSSL=3a=3aPKey=3a=3aRSA/s/new.md)

## Instance Methods

- [d](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/d.md)
- [d=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/d=3d.md)
- [dmp1](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/dmp1.md)
- [dmp1=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/dmp1=3d.md)
- [dmq1](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/dmq1.md)
- [dmq1=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/dmq1=3d.md)
- [e](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/e.md)
- [e=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/e=3d.md)
- [export](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/export.md)
- [to_pem](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_pem.md)
- [to_s](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_s.md)
- [iqmp](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/iqmp.md)
- [iqmp=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/iqmp=3d.md)
- [n](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/n.md)
- [n=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/n=3d.md)
- [p](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/p.md)
- [p=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/p=3d.md)
- [params](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/params.md)
- [private?](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private=3f.md)
- [private_decrypt](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private_decrypt.md)
- [private_encrypt](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private_encrypt.md)
- [public?](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public=3f.md)
- [public_decrypt](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_decrypt.md)
- [public_encrypt](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_encrypt.md)
- [public_key](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_key.md)
- [q](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/q.md)
- [q=](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/q=3d.md)
- [to_der](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_der.md)
- [to_text](../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_text.md)

## Constants

- [NO_PADDING](../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/NO_PADDING.md)
- [PKCS1_OAEP_PADDING](../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/PKCS1_OAEP_PADDING.md)
- [PKCS1_PADDING](../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/PKCS1_PADDING.md)
- [SSLV23_PADDING](../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/SSLV23_PADDING.md)
