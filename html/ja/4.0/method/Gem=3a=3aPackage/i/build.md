# Gem::Package#build

### def build(skip_validation = false, strict_validation = false) -> ()
{: since="2.0.0"}

[Gem::Package#spec=](../../../method/Gem=3a=3aPackage/i/spec=3d.md) で設定した仕様から `.gem` ファイルを書き出します。

引数の意味は [Gem::Package.build](../../../method/Gem=3a=3aPackage/s/build.md) と同じです。`Successfully built RubyGem` から始まるメッセージを出力します。

- **param** `skip_validation` -- 真を指定すると [Gem::Specification#validate](../../../method/Gem=3a=3aSpecification/i/validate.md) を実行しません。

- **param** `strict_validation` -- 真を指定すると、警告も検証エラーとして扱います。

- **raise** `ArgumentError` -- `skip_validation` と `strict_validation` がともに真の場合に発生します。

- **SEE** [Gem::Package.build](../../../method/Gem=3a=3aPackage/s/build.md)
