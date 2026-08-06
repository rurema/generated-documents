# OpenSSL::ASN1::Primitive#tagging

### def tagging -> Symbol | nil

タグ付けの方式を返します。

:IMPLICIT、:EXPLICIT、nil のいずれかを返します。

タグ([OpenSSL::ASN1::ASN1Data#tag](../../../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/tag.md))が :UNIVERSAL ならばこの値は無視されます。

nil は :IMPLICIT と同義です。

- **SEE** [OpenSSL::ASN1::Primitive#tagging=](../../../method/OpenSSL=3a=3aASN1=3a=3aPrimitive/i/tagging=3d.md)
