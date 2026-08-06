# OpenSSL::ASN1::UTCTime.new

### def OpenSSL::ASN1::UTCTime.new(value) ->  OpenSSL::ASN1::UTCTime
### def OpenSSL::ASN1::UTCTime.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::UTCTime

ASN.1 の UTCTime 型の値を表現する OpenSSL::ASN1::UTCTime オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::UTCTIME](../../../method/OpenSSL=3a=3aASN1/c/UTCTIME.md) となります。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(Timeオブジェクト)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
