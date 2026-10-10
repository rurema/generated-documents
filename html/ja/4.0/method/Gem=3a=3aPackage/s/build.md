# Gem::Package.build

### def Gem::Package.build(spec, skip_validation = false, strict_validation = false, file_name = nil) -> String
{: since="2.0.0"}

`spec` から `.gem` ファイルを作り、作ったファイルの名前を返します。

ファイルはカレントディレクトリに作られ、`Successfully built RubyGem` から始まるメッセージを出力します。
ファイル名は `file_name` を指定した場合はそれに、そうでない場合は [Gem::Specification#file_name](../../../method/Gem=3a=3aSpecification/i/file_name.md) になります。

- **param** `spec` -- `.gem` ファイルに書き込む [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を指定します。

- **param** `skip_validation` -- 真を指定すると [Gem::Specification#validate](../../../method/Gem=3a=3aSpecification/i/validate.md) を実行しません。

- **param** `strict_validation` -- 真を指定すると、警告も検証エラーとして扱います。

- **param** `file_name` -- 作る `.gem` ファイルの名前を指定します。

- **raise** `ArgumentError` -- `skip_validation` と `strict_validation` がともに真の場合に発生します。

- **SEE** [Gem::Package#build](../../../method/Gem=3a=3aPackage/i/build.md)
