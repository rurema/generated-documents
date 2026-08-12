# OpenSSL::X509::Name::OBJECT_TYPE_TEMPLATE

### const OBJECT_TYPE_TEMPLATE -> { String => Integer }

属性型に対応する ASN.1の型を格納したハッシュです。

[OpenSSL::X509::Name.parse](../../../method/OpenSSL=3a=3aX509=3a=3aName/s/parse.md) や [OpenSSL::X509::Name.new](../../../method/OpenSSL=3a=3aX509=3a=3aName/s/new.md)
などでデフォルト値として使われます。

キーは属性型文字列で、ASN.1の型を表わす整数が対応します。

以下の文字列がキーです。

```text
'C', 'countryName', 'serialNumber', 'dnQualifier',
'DC', 'domainComponent', 'emailAddress'
```
