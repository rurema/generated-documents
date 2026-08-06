# OpenSSL::ASN1::ASN1Data.new

### def OpenSSL::ASN1::ASN1Data.new(value, tag, tag_class) -> OpenSSL::ASN1::ASN1Data

ASN.1 値を表現する [OpenSSL::ASN1::ASN1Data](../../../class/OpenSSL=3a=3aASN1=3a=3aASN1Data.md) オブジェクトを生成します。

通常 UNIVERSAL なタグクラスを持つ ASN.1 値はこのクラスのサブクラスで表現されるため、tag_class はそれ以外(:CONTEXT_SPECIFIC、:APPLICATION、
:PRIVATE のいずれか)を指定します。

value としては、通常は文字列(IMPLICIT tagging 相当)
もしくは OpenSSL::ASN1::ASN1Data の配列(IMPLICIT tagging相当)
を指定します。

- **param** `value` -- そのオブジェクトが表現する値
- **param** `tag` -- タグ
- **param** `tag_class` -- タグクラス
