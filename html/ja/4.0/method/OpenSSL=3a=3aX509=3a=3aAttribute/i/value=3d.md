# OpenSSL::X509::Attribute#value=

### def value=(val)

attribute の値を設定します。

引数には [OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) のオブジェクトを渡さなければなりません。

- **param** `val` -- 設定する値の [OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) オブジェクト
- **raise** `OpenSSL::X509::AttributeError` -- val が不正であった場合に発生します
- **SEE** [OpenSSL::X509::Attribute#value](../../../method/OpenSSL=3a=3aX509=3a=3aAttribute/i/value.md)
