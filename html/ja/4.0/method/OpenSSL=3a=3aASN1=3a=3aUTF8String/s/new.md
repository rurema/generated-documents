# OpenSSL::ASN1::UTF8String.new

### def OpenSSL::ASN1::UTF8String.new(value) ->  OpenSSL::ASN1::UTF8String
### def OpenSSL::ASN1::UTF8String.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::UTF8String

ASN.1 の UTF8String 型の値を表現する OpenSSL::ASN1::UTF8String オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::UTF8STRING](../../../method/OpenSSL=3a=3aASN1/c/UTF8STRING.md) となります。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(文字列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
