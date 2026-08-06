# class OpenSSL::ASN1::ASN1Data < Object

ASN.1 データ型を表すクラス。

UNIVERSAL なタグを持つ ASN.1 値はこのクラスの2つのサブクラス、
[OpenSSL::ASN1::Primitive](../class/OpenSSL=3a=3aASN1=3a=3aPrimitive.md) もしくは [OpenSSL::ASN1::Constructive](../class/OpenSSL=3a=3aASN1=3a=3aConstructive.md)
のインスタンスとして表現されます。

それ以外の値はこのクラスのインスタンスとして表現されます。

## Class Methods

- [new](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/s/new.md)

## Instance Methods

- [tag](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/tag.md)
- [tag=](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/tag=3d.md)
- [tag_class](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/tag_class.md)
- [tag_class=](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/tag_class=3d.md)
- [to_der](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/to_der.md)
- [value](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/value.md)
- [value=](../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/value=3d.md)
