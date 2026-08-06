# OpenSSL::ASN1::GeneralString.new

### def OpenSSL::ASN1::GeneralString.new(value) ->  OpenSSL::ASN1::GeneralString
### def OpenSSL::ASN1::GeneralString.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::GeneralString

ASN.1 の GeneralString 型の値を表現する OpenSSL::ASN1::GeneralString オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::GENERALSTRING](../../../method/OpenSSL=3a=3aASN1/c/GENERALSTRING.md) となります。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(文字列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
