# OpenSSL::ASN1::Integer.new

### def OpenSSL::ASN1::Integer.new(value) ->  OpenSSL::ASN1::Integer
### def OpenSSL::ASN1::Integer.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::Integer

ASN.1 の Integer 型の値を表現する OpenSSL::ASN1::Integer オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::INTEGER](../../../method/OpenSSL=3a=3aASN1/c/INTEGER.md) となります。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md)のインスタンス)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
