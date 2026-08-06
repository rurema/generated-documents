# OpenSSL::ASN1?.decode_all

### module_function def decode_all(der) -> [OpenSSL::ASN1::ASN1Data]

DER 表現の文字列を解析し、そこにエンコードされている ASN.1 の値を全て
[OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) のサブクラスのインスタンスの配列として返します。

- **param** `der` -- DER形式の文字列
- **raise** `OpenSSL::ASN1::ASN1Error` -- 解析に失敗した場合に発生します
- **SEE** [OpenSSL::ASN1?.decode](../../../method/OpenSSL=3a=3aASN1/m/decode.md)
