# OpenSSL::ASN1?.GeneralizedTime

### module_function def GeneralizedTime(value) -> OpenSSL::ASN1::GeneralizedTime -> OpenSSL::ASN1::GeneralizedTime
### module_function def GeneralizedTime(value, tag, tagging, tag_class) -> OpenSSL::ASN1::GeneralizedTime

ASN.1 の GeneralizedTime 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::GeneralizedTime.new](../../../method/OpenSSL=3a=3aASN1=3a=3aGeneralizedTime/s/new.md) と同じです。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(Timeのオブジェクト)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
