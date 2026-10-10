# Gem::Package#files

### def files -> [String] | nil
{: since="2.0.0"}

`.gem` アーカイブ直下のエントリ名の配列を返します。

`["metadata.gz", "data.tar.gz", "checksums.yaml.gz"]` のような配列です。gem の中身のファイルの一覧ではありません(それは [Gem::Package#contents](../../../method/Gem=3a=3aPackage/i/contents.md) です)。
[Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md) を呼ぶまでは nil を返します。

- **SEE** [Gem::Package#contents](../../../method/Gem=3a=3aPackage/i/contents.md)
