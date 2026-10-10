# Gem::Package#verify

### def verify -> true
{: since="2.0.0"}

`.gem` ファイルを検証します。

正しい仕様書を含むこと、`data.tar.gz` を含むこと、チェックサムが一致すること、(セキュリティポリシーがある場合は)署名が正しいことを検証します。
成功すると true を返し、以降は [Gem::Package#spec](../../../method/Gem=3a=3aPackage/i/spec.md)・[Gem::Package#files](../../../method/Gem=3a=3aPackage/i/files.md)・[Gem::Package#checksums](../../../method/Gem=3a=3aPackage/i/checksums.md) が使えるようになります。

- **raise** `Gem::Package::FormatError` -- ファイルが無い場合、gem の形式でない場合、チェックサムが一致しない場合などに発生します。

- **raise** `Gem::Security::Exception` -- 署名の検証に失敗した場合に発生します。

- **SEE** [Gem::Package#spec](../../../method/Gem=3a=3aPackage/i/spec.md), [Gem::Package#files](../../../method/Gem=3a=3aPackage/i/files.md), [Gem::Package#checksums](../../../method/Gem=3a=3aPackage/i/checksums.md)
