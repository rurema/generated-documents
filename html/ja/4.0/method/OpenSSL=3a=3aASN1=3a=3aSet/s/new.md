# OpenSSL::ASN1::Set.new

### def OpenSSL::ASN1::Set.new(value) ->  OpenSSL::ASN1::Set
### def OpenSSL::ASN1::Set.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::Set

ASN.1 の Set 型の値を表現する OpenSSL::ASN1::Set オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::SET](../../../method/OpenSSL=3a=3aASN1/c/SET.md) となります。

- **param** `value` -- ASN.1値を表すRubyのオブジェクト([OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md)の配列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
