# Gem::Package#checksums

### def checksums -> {String => {String => String}}
{: since="2.0.0"}

`checksums.yaml.gz` から読み込んだチェックサムを返します。

外側のキーはダイジェストのアルゴリズム名(`"SHA256"`・`"SHA512"`)、内側のキーはファイル名(`"metadata.gz"`・`"data.tar.gz"`)で、値は 16 進表記のダイジェストです。
[Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md) を呼ぶまでは空のハッシュを返します。

- **SEE** [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md)
