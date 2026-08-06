# OpenSSL::ASN1?.Integer

### module_function def Integer(value) -> OpenSSL::ASN1::Integer
### module_function def Integer(value, tag, tagging, tag_class) -> OpenSSL::ASN1::Integer

ASN.1 の Integer 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::Integer.new](../../../method/OpenSSL=3a=3aASN1=3a=3aInteger/s/new.md) と同じです。

- **param** `value` -- ASN.1 値を表す Ruby のオブジェクト([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md)のインスタンス)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
