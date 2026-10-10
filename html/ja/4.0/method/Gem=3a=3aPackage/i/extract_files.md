# Gem::Package#extract_files

### def extract_files(destination_dir, pattern = "*") -> ()
{: since="2.0.0"}

`data.tar.gz` の中身を `destination_dir` に展開します。

未検証の場合は、先に [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md) を呼びます。

- **param** `destination_dir` -- 展開先のディレクトリを指定します。

- **param** `pattern` -- 展開するファイルを絞り込む glob を指定します。

- **raise** `Gem::Package::FormatError` -- `.gem` ファイルの形式が不正な場合に発生します。

- **raise** `Gem::Package::PathError` -- `destination_dir` の外に出るパスを含む場合に発生します。

- **raise** `Gem::Package::SymlinkError` -- `destination_dir` の外を指すシンボリックリンクを含む場合に発生します。

- **SEE** [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md)
