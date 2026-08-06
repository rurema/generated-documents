# OpenSSL::ASN1?.GeneralString

### module_function def GeneralString(value) -> OpenSSL::ASN1::GeneralString -> OpenSSL::ASN1::GeneralString
### module_function def GeneralString(value, tag, tagging, tag_class) -> OpenSSL::ASN1::GeneralString

ASN.1 の GeneralString 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::GeneralString.new](../../../method/OpenSSL=3a=3aASN1=3a=3aGeneralString/s/new.md) と同じです。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(文字列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
