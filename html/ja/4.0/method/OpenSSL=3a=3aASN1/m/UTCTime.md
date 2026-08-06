# OpenSSL::ASN1?.UTCTime

### module_function def UTCTime(value) -> OpenSSL::ASN1::UTCTime -> OpenSSL::ASN1::UTCTime
### module_function def UTCTime(value, tag, tagging, tag_class) -> OpenSSL::ASN1::UTCTime

ASN.1 の UTCTime 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::UTCTime.new](../../../method/OpenSSL=3a=3aASN1=3a=3aUTCTime/s/new.md) と同じです。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(Timeのオブジェクト)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
