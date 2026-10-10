# Gem::Package#spec

### def spec -> Gem::Specification
{: since="2.0.0"}

この gem の [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を返します。

既存の `.gem` ファイルを読む場合は `metadata.gz` から読み込んだもの(未検証の場合は先に [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md) を呼びます)、`.gem` ファイルを作る場合は [Gem::Package#spec=](../../../method/Gem=3a=3aPackage/i/spec=3d.md) で設定したものです。

- **SEE** [Gem::Package#spec=](../../../method/Gem=3a=3aPackage/i/spec=3d.md)
