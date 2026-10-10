# Gem::Package.raw_spec

### def Gem::Package.raw_spec(path, security_policy = nil) -> [Gem::Specification, String]
{: since="2.7.0"}

`path` の `.gem` ファイルから [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) と、`metadata.gz` を展開した YAML 文字列の 2 要素の配列を返します。

YAML 文字列は `--- !ruby/object:Gem::Specification` で始まります。

- **param** `path` -- `.gem` ファイルのパスを指定します。

- **param** `security_policy` -- 署名の検証に使う [Gem::Security::Policy](../../../class/Gem=3a=3aSecurity=3a=3aPolicy.md) を指定します。nil の場合は署名を検証しません。
