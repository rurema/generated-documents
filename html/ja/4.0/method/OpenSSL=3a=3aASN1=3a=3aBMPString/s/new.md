# OpenSSL::ASN1::BMPString.new

### def OpenSSL::ASN1::BMPString.new(value) ->  OpenSSL::ASN1::BMPString
### def OpenSSL::ASN1::BMPString.new(value, tag, tagging, tag_class) -> OpenSSL::ASN1::BMPString

ASN.1 の BMPString 型の値を表現する OpenSSL::ASN1::BMPString オブジェクトを生成します。

value 以外の引数を省略した場合はタグクラスは :UNIVERSAL、タグ は [OpenSSL::ASN1::BMPSTRING](../../../method/OpenSSL=3a=3aASN1/c/BMPSTRING.md) となります。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト(文字列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
