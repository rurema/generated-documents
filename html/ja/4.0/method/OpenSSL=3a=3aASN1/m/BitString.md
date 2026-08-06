# OpenSSL::ASN1?.BitString

### module_function def BitString(value) -> OpenSSL::ASN1::BitString -> OpenSSL::ASN1::BitString
### module_function def BitString(value, tag, tagging, tag_class) -> OpenSSL::ASN1::BitString

ASN.1 の BitString 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::BitString.new](../../../method/OpenSSL=3a=3aASN1=3a=3aBitString/s/new.md) と同じです。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(文字列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
