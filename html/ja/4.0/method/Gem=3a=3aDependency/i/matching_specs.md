# Gem::Dependency#matching_specs

### def matching_specs(platform_only = false) -> [Gem::Specification]
{: since="1.9.3"}

`self` の [Gem::Dependency#name](../../../method/Gem=3a=3aDependency/i/name.md) と [Gem::Dependency#requirement](../../../method/Gem=3a=3aDependency/i/requirement.md) を満たす、
インストール済みの [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を配列で返します。

`platform_only` に true を指定すると、さらに現在のプラットフォームにインストール可能な
ものだけに絞り込みます。無効化された(`ignored?` な)スペックは結果に含まれません。

- **param** `platform_only` -- true を指定すると、現在のプラットフォームに
           インストール可能なスペックだけに絞り込みます。
