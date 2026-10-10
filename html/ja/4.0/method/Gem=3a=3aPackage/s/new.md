# Gem::Package.new

### def Gem::Package.new(gem, security_policy = nil) -> Gem::Package
{: since="2.0.0"}

`.gem` ファイルを扱う [Gem::Package](../../../class/Gem=3a=3aPackage.md) オブジェクトを返します。

古い形式の `.gem` ファイルの場合は、`Gem::Package::Old` のインスタンスを返します。
仕様や中身は、[Gem::Package#spec](../../../method/Gem=3a=3aPackage/i/spec.md) や [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md) などを呼んだときに読み込みます。

- **param** `gem` -- `.gem` ファイルのパスを文字列で指定するか、`read` を持つ [IO](../../../class/IO.md) オブジェクトを指定します。

- **param** `security_policy` -- 署名の検証に使う [Gem::Security::Policy](../../../class/Gem=3a=3aSecurity=3a=3aPolicy.md) を指定します。nil の場合は署名を検証しません。

- **SEE** [Gem::Package#verify](../../../method/Gem=3a=3aPackage/i/verify.md)
