# class OpenSSL::X509::ExtensionFactory < Object

[OpenSSL::X509::Extension](../class/OpenSSL=3a=3aX509=3a=3aExtension.md) を簡便に生成するためのクラスです。

```ruby title="例"
require 'openssl'
# ca_cert: CA の証明書オブジェクト
# req: CSR オブジェクト
# newcert: 新たに生成する証明書のオブジェクト
ca_cert = OpenSSL::X509::Certificate.new(File.read('ca_cert.pem'))
req = OpenSSL::X509::Request.new(File.read('req.pem'))
newcert = OpenSSL::X509::Certificate.new
# 新しい ExtensionFactory オブジェクトを生成し、 CA の証明書オブジェクト
# を設定
factory = OpenSSL::X509::ExtensionFactory.new(ca_cert)
# CSR オブジェクトを設定
factory.subject_request = req
# basicConstraints 拡張領域を生成
p factory.create_extension("basicConstraints", "CA:FALSE")
# => basicConstraints = CA:FALSE

# subjectKeyIdentifier 拡張領域を生成
# この値は CSR オブジェクトの公開鍵から生成される
p factory.create_extension("subjectKeyIdentifier", "hash")
# => subjectKeyIdentifier = 99:E7:A1:.....
  
# authorityKeyIdentifier 拡張領域を生成
# この値は CA の証明書オブジェクトから生成される
p factory.create_extension("authorityKeyIdentifier", "keyid,issuer:always")
# => authorityKeyIdentifier = keyid:D1:AB:87:....
  
# 生成した拡張領域オブジェクトを証明書の拡張領域に追加
newcert.add_extension(factory.create_extension("basicConstraints", "CA:FALSE"))
```

## Class Methods

- [new](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/s/new.md)

## Instance Methods

- [config](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/config.md)
- [config=](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/config=3d.md)
- [create_ext](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext.md)
- [create_ext_from_array](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext_from_array.md)
- [create_ext_from_hash](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext_from_hash.md)
- [create_ext_from_string](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext_from_string.md)
- [create_extension](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_extension.md)
- [crl](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/crl.md)
- [crl=](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/crl=3d.md)
- [issuer_certificate](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/issuer_certificate.md)
- [issuer_certificate=](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/issuer_certificate=3d.md)
- [subject_certificate](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/subject_certificate.md)
- [subject_certificate=](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/subject_certificate=3d.md)
- [subject_request](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/subject_request.md)
- [subject_request=](../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/subject_request=3d.md)
