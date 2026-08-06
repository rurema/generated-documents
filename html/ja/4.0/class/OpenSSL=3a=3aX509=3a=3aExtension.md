# class OpenSSL::X509::Extension < Object

X.509 v3 証明書の拡張領域のためのクラスです。

[OpenSSL::X509::Certificate](../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトはその拡張領域を Extension オブジェクトの配列として保持し、
[OpenSSL::X509::Certificate#extensions](../method/OpenSSL=3a=3aX509=3a=3aCertificate/i/extensions.md) でその配列が得られます。

このクラスのインスタンス生成は [OpenSSL::ASN1::ASN1Data](../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) を取り扱う必要があり面倒です。
[OpenSSL::X509::ExtensionFactory](../class/OpenSSL=3a=3aX509=3a=3aExtensionFactory.md) を用いることでインスタンスの生成を簡便に行うことができます。

### 参照

  - [RFC:5280]

## Class Methods

- [new](../method/OpenSSL=3a=3aX509=3a=3aExtension/s/new.md)

## Instance Methods

- [critical=](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/critical=3d.md)
- [critical?](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/critical=3f.md)
- [oid](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/oid.md)
- [oid=](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/oid=3d.md)
- [to_a](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/to_a.md)
- [to_der](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/to_der.md)
- [to_h](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/to_h.md)
- [to_s](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/to_s.md)
- [value](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/value.md)
- [value=](../method/OpenSSL=3a=3aX509=3a=3aExtension/i/value=3d.md)
