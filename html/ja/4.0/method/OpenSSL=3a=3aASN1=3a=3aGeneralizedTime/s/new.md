# OpenSSL::ASN1::GeneralizedTime.new

### def OpenSSL::ASN1::GeneralizedTime.new(value) ->  OpenSSL::ASN1::GeneralizedTime
### def OpenSSL::ASN1::GeneralizedTime.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::GeneralizedTime

ASN.1 の GeneralizedTime 型の値を表現する OpenSSL::ASN1::GeneralizedTime オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::GENERALIZEDTIME](../../../method/OpenSSL=3a=3aASN1/c/GENERALIZEDTIME.md) となります。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(Timeオブジェクト)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
