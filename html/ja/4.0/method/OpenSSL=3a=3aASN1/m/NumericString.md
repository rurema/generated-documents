# OpenSSL::ASN1?.NumericString

### module_function def NumericString(value) -> OpenSSL::ASN1::NumericString -> OpenSSL::ASN1::NumericString
### module_function def NumericString(value, tag, tagging, tag_class) -> OpenSSL::ASN1::NumericString

ASN.1 の NumericString 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::NumericString.new](../../../method/OpenSSL=3a=3aASN1=3a=3aNumericString/s/new.md) と同じです。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(文字列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
