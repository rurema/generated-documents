# OpenSSL::ASN1?.Sequence

### module_function def Sequence(value) -> OpenSSL::ASN1::Sequence -> OpenSSL::ASN1::Sequence
### module_function def Sequence(value, tag, tagging, tag_class) -> OpenSSL::ASN1::Sequence

ASN.1 の Sequence 型の値を表現する Ruby のオブジェクトを生成します。

[OpenSSL::ASN1::Sequence.new](../../../method/OpenSSL=3a=3aASN1=3a=3aSequence/s/new.md) と同じです。

- **param** `value` -- ASN.1値を表すRubyのオブジェクト([OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md)の配列)
- **param** `tag` -- タグ番号
- **param** `tagging` -- タグ付けの方法(:IMPLICIT もしくは :EXPLICIT)
- **param** `tag_class` -- タグクラス(:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
