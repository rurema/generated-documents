# Gem::Package#contents

### def contents -> [String]
{: since="2.0.0"}

`data.tar.gz` に含まれるファイル名(gem に入っているファイル)の配列を返します。

未検証の場合は、先に [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md) を呼びます。

- **raise** `Gem::Package::FormatError` -- `.gem` ファイルの形式が不正な場合に発生します。

- **SEE** [Gem::Package#files](../../../method/Gem=3a=3aPackage/i/files.md)
