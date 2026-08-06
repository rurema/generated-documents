# OpenSSL::X509::Attribute.new

### def OpenSSL::X509::Attribute.new(der) -> OpenSSL::X509::Attribute
### def OpenSSL::X509::Attribute.new(oid, value) -> OpenSSL::X509::Attribute

attribute オブジェクトを生成します。

引数が1個で、文字列であるならば、それを DER 形式のデータであると見なして attribute オブジェクトを生成します。
引数が1個で、それ以外の場合は to_der メソッドで DER 形式に変換してからそれを attribute オブジェクトに変換します。

引数が2個の場合は、それぞれを attribute の Object ID (識別子)と値(内容)と見なして attribute オブジェクトを生成します。
この場合、oid は Object ID の文字列、value には
[OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) のインスタンスを渡さなければなりません。

- **param** `der` -- DER 形式の文字列、もしくは to_der を持つオブジェクト
- **param** `oid` -- Object ID 文字列
- **param** `value` -- 値を表す [OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) インスタンス
- **raise** `OpenSSL::X509::AttributeError` -- attributeオブジェクトの生成に失敗した場合に
       発生します。DER 形式文字列が不正であった場合、oid, value が不正であった
       場合などに発生します。
