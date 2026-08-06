# OpenSSL::ASN1::Constructive#tagging

### def tagging -> Symbol | nil

タグ付けの方式を返します。

:IMPLICIT、:EXPLICIT、nil のいずれかを返します。

タグ([OpenSSL::ASN1::ASN1Data#tag](../../../method/OpenSSL=3a=3aASN1=3a=3aASN1Data/i/tag.md))が :UNIVERSAL ならばこの値は無視されます。

nil は :IMPLICIT と同義です。

- **SEE** [OpenSSL::ASN1::Constructive#tagging=](../../../method/OpenSSL=3a=3aASN1=3a=3aConstructive/i/tagging=3d.md)
